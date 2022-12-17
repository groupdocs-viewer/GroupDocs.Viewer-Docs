---
id: how-to-set-up-logging
url: viewer/net/how-to-set-up-logging
title: Set up logging
weight: 1
description: "This article explains how to set up logging when rendering a document with GroupDocs.Viewer within your .NET applications."
keywords: logging, logger, rendering, converting
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

To enable logging you can use `ConsoleLogger`, `FileLogger`, or custom logger.

* [ConsoleLogger](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.logging/consolelogger) - writes logs to the standard console.
* [FileLogger](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.logging/filelogger) - writes logs to a text file.

To build your custom logger you have to implemnt [ILogger](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.logging/ilogger) interface that defines the methods that are used to perform logging.

There are 3 types of messages in a log file:

* Error - for unrecoverable exceptions
* Warning - for recoverable/expected exceptions
* Trace - for general information

## Write logs to a file

The following example shows how to use [FileLogger](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.logging/filelogger) class to write logs to `output.log` file.

{{< tabs "example1" >}}
{{< tab "C#" >}}
```cs
// Create logger and specify the output file
FileLogger fileLogger = new FileLogger("output.log");

// Create ViewerSettings and specify FileLogger
ViewerSettings viewerSettings = new ViewerSettings(fileLogger);

using (Viewer viewer = new Viewer("sample.docx", viewerSettings))
{
    ViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The sample contents of the `output.log` file:

{{< tabs "example2" >}}
{{< tab "output.log" >}}
```log
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
[TRACE] Releasing resources.
```
{{< /tab >}}
{{< /tabs >}}


## Write logs to a console

The following example shows how to use [ConsoleLogger](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.logging/consolelogger) class and write logs to console.

{{< tabs "example3">}}
{{< tab "C#" >}}
```csharp
// Create console logger
ConsoleLogger consoleLogger = new ConsoleLogger();

// Create ViewerSettings and specify FileLogger
ViewerSettings viewerSettings = new ViewerSettings(consoleLogger);

using (Viewer viewer = new Viewer("sample.docx", viewerSettings))
{
    ViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates sample console output:

![Output when using ConsoleLogger](/viewer/net/images/developer-guide/logging/set-up-logging/console-logger.png)

## Implement custom logger

To implement your logger use [ILogger](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.logging/ilogger) interface.

For trace messages - implement public void Trace(string message) method \
For warning messages - implement public void Warning(string message) method \
For error messages - implement public void Error(string message) method

The following example demonstrates how to implement custom logger:

{{< tabs "example4">}}
{{< tab "C#" >}}
```csharp
// Create logger and specify the output file
MyFileLogger logger = new MyFileLogger("log.txt");

// Create ViewerSettings and pass logger
ViewerSettings viewerSettings = new ViewerSettings(logger);

using (Viewer viewer = new Viewer("sample.docx", viewerSettings))
{
    ViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}

/// <summary>
/// Writes log messages to the file.
/// </summary>
public class MyFileLogger : ILogger
{
    private readonly string _fileName;

    /// <summary>
    /// Create logger to file.
    /// </summary>
    /// <param name="fileName">Full file name with path</param>
    public MyFileLogger(string fileName)
    {
        _fileName = fileName;
    }

    /// <summary>
    /// Writes trace message to file.
    /// Trace log messages provide generally useful information about application flow.
    /// </summary>
    /// <param name="message">The trace message.</param>
    /// <exception cref="System.ArgumentNullException">Thrown when <paramref name="message"/> is null.</exception>
    public void Trace(string message) =>
        File.AppendAllText(_fileName, $"[TRACE] {message}{Environment.NewLine}");

    /// <summary>
    /// Writes warning message to file.
    /// Warning log messages provide information about the unexpected and recoverable event in application flow.
    /// </summary>
    /// <param name="message">The warning message.</param>
    /// <exception cref="System.ArgumentNullException">Thrown when <paramref name="message"/> is null.</exception>
    public void Warning(string message) =>
        File.AppendAllText(_fileName, $"[WARN] {message}{Environment.NewLine}");

    /// <summary>
    /// Writes an error message to file.
    /// Error log messages provide information about unrecoverable events in application flow.
    /// </summary>
    /// <param name="message">The error message.</param>
    /// <param name="exception">The exception.</param>
    /// <exception cref="System.ArgumentNullException">Thrown when <paramref name="message"/> is null.</exception>
    /// <exception cref="System.ArgumentNullException">Thrown when <paramref name="exception"/> is null.</exception>
    public void Error(string message, Exception exception) =>
        File.AppendAllText(_fileName, $"[ERROR] {message}, exception: {exception}{Environment.NewLine}");
}
```
{{< /tab >}}
{{< /tabs >}}