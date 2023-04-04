---
id: load-document-from-local-disk
url: viewer/java/load-document-from-local-disk
title: Load document using the local path string
weight: 1
description: "This article explains how to load a document using the local path string with GroupDocs.Viewer within your Java applications."
productName: GroupDocs.Viewer for Java
hideChildren: False
---
You can load a document from a local disk using a path to a file. GroupDocs.Viewer opens the file in the read-only mode.

The following code snippet shows how to load a document using the local path string:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.docx")) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
