---
id: load-document-from-local-disk
url: viewer/java/load-document-from-local-disk
title: Load document from local disk
weight: 4
description: "This article explains how to load a document from local disk with GroupDocs.Viewer using Java."
keywords: "groupdocs viewer java, loading, disk"
productName: GroupDocs.Viewer for Java
hideChildren: False
---
When document is located on the local disk GroupDocs.Viewer enables you to render it by passing path to the file into [Viewer](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class constructor. Viewer will open file for reading only when any method of `Viewer` will be called.

Following code snippet shows how to load document from local disk.

```java
    String filePath = ".\\files\\sample.docx";

    try (Viewer viewer = new Viewer(filePath)) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewer.view(viewOptions);
    }
```
