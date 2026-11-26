---
id: cancel-rendering
url: viewer/python-net/cancel-rendering
title: Cancel rendering
weight: 17
description: "Stop a long render with GroupDocs.Viewer for Python via .NET: a CancellationTokenSource cancels from another thread or after a time limit, and a worker process stops what the engine does not check."
keywords: cancel rendering, cancellation token, CancellationTokenSource, OperationCanceledError, timeout, cancel_after, long render, worker process, GroupDocs.Viewer, python
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---
Since version 26.11, a render can be stopped while it runs. Create a `CancellationTokenSource`, pass its `token` to `view()`, and cancel the source when the render should stop: from another thread with `cancel()`, or after a time limit with `cancel_after(seconds)`. The call then raises `OperationCanceledError`. The pages written so far stay, and the `Viewer` can render again.

`get_view_info()`, `get_attachments()` and `save_attachment()` take a `cancellation_token` too.

## Cancel after a time limit

{{< tabs "cancel-after-time-limit">}}
{{< tab "cancel_after_time_limit.py" >}}
```python
from groupdocs.viewer import CancellationTokenSource, OperationCanceledError, Viewer
from groupdocs.viewer.options import HtmlViewOptions

def cancel_after_time_limit():
    source = CancellationTokenSource()
    # Cancel automatically after 60 seconds; source.cancel() stops it at once
    source.cancel_after(60)
    try:
        with Viewer("sample.docx") as viewer:
            options = HtmlViewOptions.for_embedded_resources("cancel_after_time_limit/page_{0}.html")
            viewer.view(options, cancellation_token=source.token)
        print("rendered before the time limit")
    except OperationCanceledError:
        print("cancelled: the render took longer than 60 seconds")

if __name__ == "__main__":
    cancel_after_time_limit()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/rendering-documents/cancel-rendering/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "cancel-after-time-limit-outputs.zip" >}}  
```text
cancel_after_time_limit/page_1.html (253 KB)
cancel_after_time_limit/page_2.html (110 KB)
cancel_after_time_limit/page_3.html (148 KB)
cancel_after_time_limit/page_4.html (1001 KB)
cancel_after_time_limit/page_5.html (86 KB)
```
[Download full output](/viewer/python-net/_output_files/developer-guide/rendering-documents/cancel-rendering/cancel_after_time_limit/cancel-after-time-limit-outputs.zip)
{{< /tab >}}
{{< /tabs >}}

## Cancel from your own code

Any thread can call `source.cancel()`: a Stop button, a request that was dropped, or, as here, a page function that has seen enough pages. The engine stops before the next page:

{{< tabs "cancel-after-two-pages">}}
{{< tab "cancel_after_two_pages.py" >}}
```python
import io

from groupdocs.viewer import CancellationTokenSource, OperationCanceledError, Viewer
from groupdocs.viewer.options import PngViewOptions

def cancel_after_two_pages():
    source = CancellationTokenSource()
    pages = {}

    def create_page_stream(page_number):
        pages[page_number] = io.BytesIO()
        if page_number == 2:
            # Any thread may cancel; here the render stops after page 2
            source.cancel()
        return pages[page_number]

    try:
        with Viewer("sample.docx") as viewer:
            viewer.view(PngViewOptions(create_page_stream), cancellation_token=source.token)
        print("rendered %d pages" % len(pages))
    except OperationCanceledError:
        print("cancelled after %d pages" % len(pages))

if __name__ == "__main__":
    cancel_after_two_pages()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/rendering-documents/cancel-rendering/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "cancel-after-two-pages.txt" >}}  
```text
cancelled after 2 pages
```
[Download full output](/viewer/python-net/_output_files/developer-guide/rendering-documents/cancel-rendering/cancel_after_two_pages/cancel-after-two-pages.txt)
{{< /tab >}}
{{< /tabs >}}

## What the engine checks

The engine (GroupDocs.Viewer for .NET 26.10, which this package wraps) looks at the token at two points:

- **Before rendering starts.** A cancel during a long load takes effect when the load ends.
- **Between pages of a render of all pages to HTML, PNG or JPEG.** It stops before the next page.

Nothing else is interrupted. **A render to PDF, and a render of an explicit page list** (`viewer.view(options, token, [1, 2])`), run to the end once rendering has started.

With a page list, the token comes first, as in .NET: `viewer.view(options, token, [1, 2])`, or use keywords: `viewer.view(options, cancellation_token=token, page_numbers=[1, 2])`. `cancellation_token=None` is the same as no token.

## Stop a render the engine does not check

To put a hard time limit on a PDF render, or on any call, run it in a worker process and end the process when the time is up. Start the worker with `multiprocessing.get_context("spawn")`, not `fork`: see [Threads, processes and web servers]({{< ref "viewer/python-net/developer-guide/threads-and-processes.md" >}}).

{{< tabs "render-with-time-limit">}}
{{< tab "render_with_time_limit.py" >}}
```python
import multiprocessing

from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions

def render_to_pdf(source_path, output_path):
    with Viewer(source_path) as viewer:
        viewer.view(PdfViewOptions(output_path))

def render_with_time_limit():
    # A new process, not a fork of this one
    context = multiprocessing.get_context("spawn")
    worker = context.Process(target=render_to_pdf, args=("sample.docx", "render_with_time_limit/output.pdf"))
    worker.start()
    worker.join(timeout=120)  # seconds
    if worker.is_alive():
        worker.terminate()
        worker.join()
        print("stopped: the render took longer than 120 seconds")
    else:
        print("rendered, exit code %d" % worker.exitcode)

if __name__ == "__main__":
    render_with_time_limit()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/rendering-documents/cancel-rendering/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
```text
Binary file (PDF, 719 KB)
```
[Download full output](/viewer/python-net/_output_files/developer-guide/rendering-documents/cancel-rendering/render_with_time_limit/output.pdf)
{{< /tab >}}
{{< /tabs >}}

The worker process starts its own .NET runtime, which takes a few seconds, so a pool of workers (`concurrent.futures.ProcessPoolExecutor(mp_context=multiprocessing.get_context("spawn"))`) suits many documents better than a process per document.
