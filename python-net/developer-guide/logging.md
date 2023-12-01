---
id: logging
url: viewer/python-net/logging
title: Logging
weight: 6
description: "Logging when rendering documents with GroupDocs.Viewer for Python via .NET"
productName: GroupDocs.Viewer for Python via .NET
hideChildren: true
---
By default, logging is disabled when rendering documents. You can log to the console or a file.

To log, use the [ILogger](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.logging/ilogger) interface. It defines the methods required to instantiate and release the output file stream. Also, use the following classes:

* The [ConsoleLogger](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.logging/consolelogger) class defines the methods required to log to the console.
* The [FileLogger](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.logging/filelogger) class defines the methods required to log to a file.

The log contains the following three types of messages:

* Error means unrecoverable exceptions
* Warning means recoverable/expected exceptions
* Trace means general information

## Logging to a file

The following code snippet shows how to log to a file using the [FileLogger](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.logging/filelogger) class:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python

file_logger = gvl.FileLogger("output.log")

# Create ViewerSettings and specify FileLogger
viewer_settings = gv.ViewerSettings(file_logger)

# Using the viewer to render a document
with gv.Viewer("path/to/your/sample.docx", viewer_settings) as viewer:
    # Specify view options for HTML view with output file name
    view_options = gvo.HtmlViewOptions.for_embedded_resources("result.html")

    # View the document
    viewer.view(view_options)
```
{{< /tab >}}
{{< /tabs >}}

The following image shows the output.log file:

![](/viewer/python-net/images/how-to-set-up-logging-1.png)

## Logging to the console

The following code snippet shows how to log to the console using the [ConsoleLogger](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.logging/consolelogger) class:

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
# Create a console logger
console_logger = gvl.ConsoleLogger()

# Create ViewerSettings and specify ConsoleLogger
viewer_settings = gv.ViewerSettings(console_logger)

# Using the viewer to render a document
with gv.Viewer("path/to/your/sample.docx", viewer_settings) as viewer:
    # Specify view options for HTML view
    view_options = gvo.HtmlViewOptions.for_embedded_resources()

    # View the document
    viewer.view(view_options)
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/python-net/images/how-to-set-up-logging-2.png)

## Implementing custom logger

To create a logger, implement the [ILogger](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.logging/ilogger) interface:

* For trace messages, implement the `public void Trace(string message)` method.
* For warning messages, implement the `public void Warning(string message)` method.
* For error messages, implement the `public void Error(string message)` method.

The following code snippet shows how to implement a simple file logger:

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
class CustomLogger(gvl.ILogger):
    def __init__(self, file_name: str) -> None:
        self._file_name = file_name

    def trace(self, message: str) -> None:
        if message is None:
            raise ValueError("Message cannot be None.")
        
        with open(self._file_name, "a") as file:
            file.write(f"[TRACE] {message}\n")

    def warning(self, message: str) -> None:
        if message is None:
            raise ValueError("Message cannot be None.")
        
        with open(self._file_name, "a") as file:
            file.write(f"[WARN] {message}\n")

    def error(self, message: str, exception: Optional[Exception] = None) -> None:
        if message is None:
            raise ValueError("Message cannot be None.")

        with open(self._file_name, "a") as file:
            file.write(f"[ERROR] {message}, exception: {exception}\n" if exception else f"[ERROR] {message}\n")

# Using the viewer with CustomLogger
with gv.Viewer("path/to/your/sample.docx", CustomLogger("output.log")) as viewer:
    # Specify view options for HTML view with output file name
    view_options = gvo.HtmlViewOptions.for_embedded_resources("result.html")

    # View the document
    viewer.view(view_options)

```
{{< /tab >}}
{{< /tabs >}}

The following image shows the output.log file:

![](/viewer/python-net/images/how-to-set-up-logging-3.png)