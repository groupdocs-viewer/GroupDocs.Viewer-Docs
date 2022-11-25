---
id: how-to-set-up-logging
url: viewer/java/how-to-set-up-logging
title: How to set up logging
weight: 1
description: "This article explains how to set up logging for GroupDocs.Viewer using Java."
keywords: "groupdocs viewer java, logging, logger"
productName: GroupDocs.Viewer for Java
hideChildren: False
---
By default GroupDocs.Viewer doesn't write logs when rendering documents but we provide a way to save the log to a file.

The following loggers provided:

* [FileLogger](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.logging/FileLogger) - writes logs to a text file.

There are 4 types of messages that we write to log file

* error - for unrecoverable exceptions
* warning - for recoverable/expected exceptions
* debug - for debug information
* trace - for maximum detailed messages

## Logging to File

In this example, we'll log into the file, so we need to use `FileLogger` class.

```java
// Create logger and specify the output file
FileLogger fileLogger = new FileLogger("output.log");

// Create ViewerSettings and specify FileLogger
ViewerSettings viewerSettings = new ViewerSettings(fileLogger);

try (Viewer viewer = new Viewer("sample.docx", viewerSettings)) {
    ViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("result.html");

    viewer.view(viewOptions);
}
```

After running code above `output.log` file will be created with the similar content:

```bash
[TRACE] Rendering into HTML with embedded resources.
[TRACE] Detecting file type by extension.
[TRACE] File type detected successfully: {}.
[TRACE] Opening document.
[TRACE] Applying options.
[TRACE] Converting page 1.
[TRACE] Page 1 conversion completed.
[TRACE] Converting page 2.
[TRACE] Page 2 conversion completed.
[TRACE] Releasing resources
```
