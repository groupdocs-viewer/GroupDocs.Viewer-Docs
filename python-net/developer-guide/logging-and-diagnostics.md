---
id: logging-and-diagnostics
url: viewer/python-net/developer-guide/logging-and-diagnostics
title: Logging and Diagnostics
linkTitle: Logging and Diagnostics
weight: 5
description: "Capture trace, warning, and error messages from document rendering using ConsoleLogger and FileLogger with GroupDocs.Viewer for Python via .NET."
keywords: log rendering, logging, diagnostics, ConsoleLogger, FileLogger, ILogger, ViewerSettings, trace, warning, error, GroupDocs.Viewer, python
productName: GroupDocs.Viewer for Python via .NET
hideChildren: true
toc: true
---

To enable logging, wire a logger through `ViewerSettings` when you construct the `Viewer`. GroupDocs.Viewer for Python via .NET ships two loggers out of the box — `ConsoleLogger` writes trace/warning/error messages to standard output, and `FileLogger` writes them directly to a log file. Both implement the same `ILogger` interface.

The logger emits three types of messages:

- **Error**: for critical exceptions that prevent rendering.
- **Warning**: for recoverable or expected issues.
- **Trace**: for general informational messages.

## Example 1: Write Logs to Console

To stream log messages to standard output, construct `ViewerSettings` with a `ConsoleLogger` and pass the settings to the `Viewer` constructor:

{{< tabs "code-example-1">}}
{{< tab "write_logs_to_console.py" >}}  
```python
from groupdocs.viewer import Viewer, ViewerSettings
from groupdocs.viewer.logging import ConsoleLogger
from groupdocs.viewer.options import HtmlViewOptions

def write_logs_to_console():
    # Create viewer settings with a console logger
    viewer_settings = ViewerSettings(logger=ConsoleLogger())

    # Load DOCX document and render it to HTML
    with Viewer("./sample.docx", settings=viewer_settings) as viewer:
        html_options = HtmlViewOptions.for_embedded_resources("write_logs_to_console/page_{0}.html")
        viewer.view(html_options)

if __name__ == "__main__":
    write_logs_to_console()
```
{{< /tab >}}
{{< tab "sample.docx" >}}  
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/logging-and-diagnostics/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "write-logs-to-console.txt" >}}  
```text
[TRACE] Rendering into HTML with embedded resources.
[TRACE] Detecting file type by extension.
[TRACE] File type detected successfully: Microsoft Word Open XML Document.
[TRACE] Opening document.
[TRACE] Document is loaded.
[TRACE] Applying options.
[TRACE] Converting page 1.
[TRACE] Page 1 conversion completed.
[TRACE] Converting page 2.
[TRACE] Page 2 conversion completed.
[TRUNCATED]
```
[Download full output](/viewer/python-net/_output_files/developer-guide/logging-and-diagnostics/write_logs_to_console/write-logs-to-console.txt)
{{< /tab >}}
{{< /tabs >}}

### Explanation

1. `ViewerSettings(logger=ConsoleLogger())` bundles a fresh console logger into a settings object. The `logger` keyword argument is the only construction form — `ViewerSettings()` with no arguments is not supported.
2. The `Viewer` is constructed with `settings=viewer_settings`. The logger is active for the whole `with` block.
3. As the `view` method is called and rendering occurs, trace / warning / error messages are written to standard output.

## Example 2: Write Logs to a File with FileLogger

The Python binding ships a dedicated `FileLogger` class that writes directly to a log file — no stream redirection required. Pass the target file path to the constructor:

{{< tabs "code-example-2">}}
{{< tab "write_logs_to_file.py" >}}  
```python
from groupdocs.viewer import Viewer, ViewerSettings
from groupdocs.viewer.logging import FileLogger
from groupdocs.viewer.options import HtmlViewOptions

def write_logs_to_file():
    # Create a file logger that writes trace/warning/error messages to log.txt
    # and wire it through ViewerSettings
    viewer_settings = ViewerSettings(logger=FileLogger("./log.txt"))

    # Load DOCX document and render it to HTML
    with Viewer("./sample.docx", settings=viewer_settings) as viewer:
        html_options = HtmlViewOptions.for_embedded_resources("write_logs_to_file/page_{0}.html")
        viewer.view(html_options)

if __name__ == "__main__":
    write_logs_to_file()
```
{{< /tab >}}
{{< tab "sample.docx" >}}  
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/logging-and-diagnostics/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "log.txt" >}}  
```text
[TRACE] Rendering into HTML with embedded resources.
[TRACE] Detecting file type by extension.
[TRACE] File type detected successfully: Microsoft Word Open XML Document.
[TRACE] Opening document.
[TRACE] Document is loaded.
[TRACE] Applying options.
[TRACE] Converting page 1.
[TRACE] Page 1 conversion completed.
[TRACE] Converting page 2.
[TRACE] Page 2 conversion completed.
[TRUNCATED]
```
[Download full output](/viewer/python-net/_output_files/developer-guide/logging-and-diagnostics/write_logs_to_file/log.txt)
{{< /tab >}}
{{< /tabs >}}

### Explanation

1. `FileLogger("./log.txt")` opens `log.txt` for writing on first use and appends every trace, warning, and error message to it.
2. The file logger is passed as the `logger` keyword argument to `ViewerSettings`, and the settings object is then passed to the `Viewer` constructor.
3. All log messages produced during rendering land in `log.txt` — no need to redirect `sys.stdout`.

Use `FileLogger` when you want structured, per-run log files for long-running services or batch jobs.

## Send console messages to a file

`ConsoleLogger` writes through the console of the .NET runtime, not through Python's `sys.stdout`, so replacing `sys.stdout` (or using `contextlib.redirect_stdout`) does not capture its messages. To keep them in a file, use `FileLogger` (Example 2), or redirect the output of the script when you run it:

```bash
python write_logs_to_console.py > log.txt
```
