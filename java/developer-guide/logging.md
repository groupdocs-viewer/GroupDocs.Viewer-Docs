---
id: logging
url: viewer/java/logging
title: Logging
weight: 6
description: "Logging when rendering documents with GroupDocs.Viewer for Java"
productName: GroupDocs.Viewer for Java
hideChildren: true
---
By default, logging is disabled when rendering documents. You can log to a file.

To log to a text file, use the [FileLogger](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.logging/FileLogger) class.

The log contains the following four types of messages:

* Error means unrecoverable exceptions
* Warning means recoverable/expected exceptions
* Debug means debug information
* Trace means general information


The following code snippet shows how to log to a file using the [FileLogger](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.logging/filelogger/) class:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.ViewerSettings;
import com.groupdocs.viewer.logging.FileLogger;
import com.groupdocs.viewer.options.HtmlViewOptions;
import com.groupdocs.viewer.options.ViewOptions;
// ...

// Create logger and specify the output file
FileLogger fileLogger = new FileLogger("output.log");

// Create ViewerSettings and specify FileLogger
ViewerSettings viewerSettings = new ViewerSettings(fileLogger);

try (Viewer viewer = new Viewer("sample.pdf", viewerSettings)) {
    ViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("result.html");

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image shows the output.log file:

![](/viewer/java/images/how-to-set-up-logging-1.png)