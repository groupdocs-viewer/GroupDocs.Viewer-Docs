---
id: load-document-from-stream
url: viewer/java/load-document-from-stream
title: Load from stream
weight: 2
description: "This article explains how to load a document from a Stream with GroupDocs.Viewer within your Java applications."
productName: GroupDocs.Viewer for Java
hideChildren: False
---
You can load a document from a stream without saving it as a file on a disk. You can use this feature to load a document from different sources like a URL, FTP, and so on.

To load a document from a stream, follow these steps:

1. Create document stream in any way you need.
2. Call the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class constructor specifying the created stream as an argument.

The following code snippet shows how to load a document from a stream:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer(inputStream)) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

Please refer to the following pages for examples: