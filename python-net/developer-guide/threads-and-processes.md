---
id: threads-and-processes
url: viewer/python-net/threads-and-processes
title: Threads, processes and web servers
linkTitle: Threads and processes
weight: 6
description: "Run GroupDocs.Viewer for Python via .NET in thread pools, worker processes, Celery, gunicorn and uvicorn: one Viewer per render, spawn instead of fork, and what happens in a forked process."
keywords: threads, thread pool, multiprocessing, spawn, fork, gunicorn, uvicorn, Celery, web server, concurrency, GroupDocs.Viewer, python
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---
The rendering engine runs in your Python process, on the .NET runtime that the package embeds. Threads share that runtime, and work well. Processes need care: .NET does not survive `fork()`, so a process forked from one that has already used GroupDocs cannot use it.

## One Viewer per render

Create a new `Viewer` for each render, in the thread that uses it, and close it when the render is done (the `with` statement does). Do not share a `Viewer` between threads, and do not render the same document twice with one `Viewer`: a workbook rendered a second time by the same `Viewer` comes out with more pages than the first time, a known issue of the engine.

Renders in different threads run in parallel, and each keeps its own output, including the `io.BytesIO` objects of [rendering to memory]({{< ref "viewer/python-net/developer-guide/rendering-documents/save-output-to-stream.md" >}}).

{{< tabs "render-in-threads">}}
{{< tab "render_in_threads.py" >}}
```python
from concurrent.futures import ThreadPoolExecutor

from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions

def render_to_pdf(job):
    source_path, output_path = job
    # A new Viewer for each render, created in the thread that uses it
    with Viewer(source_path) as viewer:
        viewer.view(PdfViewOptions(output_path))
    return output_path

def render_in_threads():
    jobs = [("sample.docx", "render_in_threads/output_%d.pdf" % number) for number in range(1, 4)]
    with ThreadPoolExecutor(max_workers=3) as pool:
        for output_path in pool.map(render_to_pdf, jobs):
            print("rendered", output_path)

if __name__ == "__main__":
    render_in_threads()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/threads-and-processes/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-in-threads-outputs.zip" >}}  
```text
render_in_threads/output_1.pdf (719 KB)
render_in_threads/output_2.pdf (719 KB)
render_in_threads/output_3.pdf (719 KB)
```
[Download full output](/viewer/python-net/_output_files/developer-guide/threads-and-processes/render_in_threads/render-in-threads-outputs.zip)
{{< /tab >}}
{{< /tabs >}}

## Worker processes: spawn, not fork

A process started with the `spawn` or `forkserver` start method begins fresh and starts its own .NET runtime, which takes a few seconds, so reuse the workers of a pool rather than starting a process per document.

{{< tabs "render-in-processes">}}
{{< tab "render_in_processes.py" >}}
```python
import multiprocessing

from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions

def render_to_pdf(job):
    source_path, output_path = job
    with Viewer(source_path) as viewer:
        viewer.view(PdfViewOptions(output_path))
    return output_path

def render_in_processes():
    jobs = [("sample.docx", "render_in_processes/output_%d.pdf" % number) for number in range(1, 4)]
    # "spawn" starts fresh processes; a fork of a process that has used GroupDocs cannot use it
    context = multiprocessing.get_context("spawn")
    with context.Pool(processes=2) as pool:
        for output_path in pool.map(render_to_pdf, jobs):
            print("rendered", output_path)

if __name__ == "__main__":
    render_in_processes()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/threads-and-processes/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-in-processes-outputs.zip" >}}  
```text
render_in_processes/output_1.pdf (719 KB)
render_in_processes/output_2.pdf (719 KB)
render_in_processes/output_3.pdf (719 KB)
```
[Download full output](/viewer/python-net/_output_files/developer-guide/threads-and-processes/render_in_processes/render-in-processes-outputs.zip)
{{< /tab >}}
{{< /tabs >}}

**Safe:**
- threads, with one `Viewer` per render;
- `uvicorn --workers N`, and `gunicorn` without `--preload`: each worker imports the application itself;
- `multiprocessing.get_context("spawn")` or `"forkserver"` (the default on Linux from Python 3.14), for example `concurrent.futures.ProcessPoolExecutor(mp_context=multiprocessing.get_context("spawn"))` on Python 3.7 and later;
- forking before the first GroupDocs call.

**Not safe**, once the parent process has made a GroupDocs call:
- the `fork` start method, the default on Linux before Python 3.14;
- `gunicorn --preload` with an application that calls GroupDocs while it loads;
- Celery's prefork pool.

On Linux and macOS, such a child gets `RuntimeError: The .NET runtime cannot be used in a process forked after it started ...` at its first GroupDocs call, and the parent keeps working. Versions up to 26.9.0 instead crashed the **parent** process with a segmentation fault.

## Time limits

A render can be cancelled between pages, and a worker process can be ended when a render takes too long: see [Cancel rendering]({{< ref "viewer/python-net/developer-guide/rendering-documents/cancel-rendering.md" >}}).
