---
id: logging
url: viewer/net/logging
title: Logging
weight: 6
description: "Logging when rendering documents with GroupDocs.Viewer for .NET"
productName: GroupDocs.Viewer for .NET
hideChildren: true
toc: True
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

{{< tabs "write-logs-to-file">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Logging;
using GroupDocs.Viewer.Options;
// ...

// Create logger and specify the output file.
FileLogger fileLogger = new FileLogger("write-logs-to-file.log");

// Create ViewerSettings and specify FileLogger.
ViewerSettings viewerSettings = new ViewerSettings(fileLogger);

// Render a document.
using (Viewer viewer = new Viewer("sample.docx",viewerSettings))
{
    ViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources("write-logs-to-file.html");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Logging
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        ' Create logger and specify the output file.
        Dim fileLogger As FileLogger = New FileLogger("write-logs-to-file.log")
    
        ' Create ViewerSettings and specify FileLogger.
        Dim viewerSettings As ViewerSettings = New ViewerSettings(fileLogger)
    
        ' Render a document.
        Using viewer As Viewer = New Viewer("sample.docx", viewerSettings)
            Dim viewOptions As ViewOptions = HtmlViewOptions.ForEmbeddedResources("write-logs-to-file.html")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/logging/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "write-logs-to-file.log" >}}  
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
[Download full output](/viewer/net/_output_files/developer-guide/logging/WriteLogsToFile/write-logs-to-file.log)
{{< /tab >}}
{{< /tabs >}}

## Logging to the console

The following code snippet shows how to log to the console using the [ConsoleLogger](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.logging/consolelogger) class:

{{< tabs "write-logs-to-console">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Logging;
using GroupDocs.Viewer.Options;
// ...

// Create console logger.
ConsoleLogger consoleLogger = new ConsoleLogger();

// Create ViewerSettings and specify FileLogger.
ViewerSettings viewerSettings = new ViewerSettings(consoleLogger);

// Render a document.
using (Viewer viewer = new Viewer("sample.docx", viewerSettings))
{
    ViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Logging
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        ' Create console logger.
        Dim consoleLogger As ConsoleLogger = New ConsoleLogger()
    
        ' Create ViewerSettings and specify FileLogger.
        Dim viewerSettings As ViewerSettings = New ViewerSettings(consoleLogger)
    
        ' Render a document.
        Using viewer As Viewer = New Viewer("sample.docx", viewerSettings)
            Dim viewOptions As ViewOptions = HtmlViewOptions.ForEmbeddedResources()
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/logging/sample.docx) to download it.
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
[Download full output](/viewer/net/_output_files/developer-guide/logging/WriteLogsToConsole/write-logs-to-console.txt)
{{< /tab >}}
{{< /tabs >}}

## Implementing custom logger

To create a logger, implement the [ILogger](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.logging/ilogger) interface:

* For trace messages, implement the `public void Trace(string message)` method.
* For warning messages, implement the `public void Warning(string message)` method.
* For error messages, implement the `public void Error(string message)` method.

The following code snippet shows how to implement a simple file logger:

{{< tabs "write-logs-with-custom-logger">}}
{{< tab "C#" >}}
```csharp
using System;
using System.IO;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Logging;
using GroupDocs.Viewer.Options;
// ...

// Create logger and specify the output file.
CustomLogger customLogger = new CustomLogger("output.log");

// Create ViewerSettings and specify CustomLogger.
ViewerSettings viewerSettings = new ViewerSettings(customLogger);

// Render a document.
using (Viewer viewer = new Viewer("sample.docx",viewerSettings))
{
    ViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources("result.html");

    viewer.View(viewOptions);
}

/// <summary>
/// Writes log messages to a file.
/// </summary>
public class CustomLogger : ILogger
{
    private readonly string _fileName;

    private CustomLogger() { }

    /// <summary>
    /// Create logger to a file.
    /// </summary>
    /// <param name="fileName">Full file name with path</param>
    public CustomLogger(string fileName)
    {
        _fileName = fileName;
    }

    /// <summary>
    /// Writes trace message to the file.
    /// Trace log messages provide generally useful information about application flow.
    /// </summary>
    /// <param name="message">The trace message.</param>
    /// <exception cref="System.ArgumentNullException">Thrown when <paramref name="message"/> is null.</exception>
    public void Trace(string message)
    {
        if (message == null)
            throw new ArgumentNullException(nameof(message));

        using (StreamWriter wr = new StreamWriter(_fileName, true))
        {
            wr.WriteLine($"[TRACE] {message}");
        }
    }

    /// <summary>
    /// Writes warning message to the file;
    /// Warning log messages provide information about the unexpected and recoverable events in application flow.
    /// </summary>
    /// <param name="message">The warning message.</param>
    /// <exception cref="System.ArgumentNullException">Thrown when <paramref name="message"/> is null.</exception>
    public void Warning(string message)
    {
        if (message == null)
            throw new ArgumentNullException(nameof(message));

        using (StreamWriter wr = new StreamWriter(_fileName, true))
        {
            wr.WriteLine($"[WARN] {message}");
        }
    }

    /// <summary>
    /// Writes an error message to the file.
    /// Error log messages provide information about unrecoverable events in application flow.
    /// </summary>
    /// <param name="message">The error message.</param>
    /// <param name="exception">The exception.</param>
    /// <exception cref="System.ArgumentNullException">Thrown when <paramref name="message"/> is null.</exception>
    /// <exception cref="System.ArgumentNullException">Thrown when <paramref name="exception"/> is null.</exception>
    public void Error(string message, Exception exception)
    {
        if (message == null)
            throw new ArgumentNullException(nameof(message));
        if (exception == null)
            throw new ArgumentNullException(nameof(exception));

        using (StreamWriter wr = new StreamWriter(_fileName, true))
        {
            wr.WriteLine($"[ERROR] {message}, exception: {exception}");
        }
    }
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports System
Imports System.IO
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Logging
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        ' Create logger and specify the output file.
        Dim customLogger As CustomLogger = New CustomLogger("output.log")

        ' Create ViewerSettings and specify CustomLogger.
        Dim viewerSettings As ViewerSettings = New ViewerSettings(customLogger)

        ' Render a document.
        Using viewer As Viewer = New Viewer("sample.docx", viewerSettings)
            Dim viewOptions As ViewOptions = HtmlViewOptions.ForEmbeddedResources("result.html")
            viewer.View(viewOptions)
        End Using
    End Sub

    ' <summary>
    ' Writes log messages to a file.
    ' </summary>
    Public Class CustomLogger
        Implements ILogger

        Private ReadOnly _fileName As String

        Private Sub New()
        End Sub

        ''' <summary>
        ''' Create logger to a file.
        ''' </summary>
        ''' <param name="fileName">Full file name with path</param>
        Public Sub New(fileName As String)
            _fileName = fileName
        End Sub

        ''' <summary>
        ''' Writes warning message to the file;
        ''' Warning log messages provide information about the unexpected and recoverable events in application flow.
        ''' </summary>
        ''' <param name="message">The warning message.</param>
        ''' <exception cref="System.ArgumentNullException">Thrown when <paramref name="message"/> is null.</exception>
        Public Sub ILogger_Warning(message As String) Implements ILogger.Warning
            If message Is Nothing Then
                Throw New ArgumentNullException(NameOf(message))
            End If

            Using wr As New StreamWriter(_fileName, True)
                wr.WriteLine($"[WARN] {message}")
            End Using
        End Sub

        ''' <summary>
        ''' Writes trace message to the file.
        ''' Trace log messages provide generally useful information about application flow.
        ''' </summary>
        ''' <param name="message">The trace message.</param>
        ''' <exception cref="System.ArgumentNullException">Thrown when <paramref name="message"/> is null.</exception>
        Public Sub ILogger_Trace(message As String) Implements ILogger.Trace
            If message Is Nothing Then
                Throw New ArgumentNullException(NameOf(message))
            End If

            Using wr As New StreamWriter(_fileName, True)
                wr.WriteLine($"[TRACE] {message}")
            End Using
        End Sub

        ''' <summary>
        ''' Writes an error message to the file.
        ''' Error log messages provide information about unrecoverable events in application flow.
        ''' </summary>
        ''' <param name="message">The error message.</param>
        ''' <param name="exception">The exception.</param>
        ''' <exception cref="System.ArgumentNullException">Thrown when <paramref name="message"/> is null.</exception>
        ''' <exception cref="System.ArgumentNullException">Thrown when <paramref name="exception"/> is null.</exception>
        Public Sub [Error](message As String, exception As Exception) Implements ILogger.[Error]
            If message Is Nothing Then
                Throw New ArgumentNullException(NameOf(message))
            End If
            If exception Is Nothing Then
                Throw New ArgumentNullException(NameOf(exception))
            End If

            Using wr As New StreamWriter(_fileName, True)
                wr.WriteLine($"[ERROR] {message}, exception: {exception}")
            End Using
        End Sub
    End Class
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/logging/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.log" >}}  
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
[Download full output](/viewer/net/_output_files/developer-guide/logging/WriteLogsWithCustomLogger/output.log)
{{< /tab >}}
{{< /tabs >}}
