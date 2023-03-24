---
id: specify-file-type-when-loading-a-document
url: viewer/java/specify-file-type-when-loading-a-document
title: Specify file type when loading a document
keywords: set file type
weight: 3
description: "This article explains how to specify the file type when loading a document with GroupDocs.Viewer within your Java applications."
productName: GroupDocs.Viewer for Java
hideChildren: False
---

You can specify the file type using [LoadOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/LoadOptions).

The following code snippet shows how to specify the file type when loading a document:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.FileType;
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
import com.groupdocs.viewer.options.LoadOptions;
// ...

// Specify the file type.
LoadOptions loadOptions = new LoadOptions(FileType.DOCX);

// Render a file using inputStream.
try (Viewer viewer = new Viewer(inputStream, loadOptions)) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
