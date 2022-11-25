---
id: load-document-from-stream
url: viewer/java/load-document-from-stream
title: Load document from Stream
weight: 5
description: "This article explains how to load a document from a stream with GroupDocs.Viewer using Java."
keywords: "groupdocs viewer java, loading, input, stream"
productName: GroupDocs.Viewer for Java
hideChildren: False
---
There might be the case when your document is not physically located on the disk. Instead, you have the document in the form of a stream. In this case, to avoid the overhead of saving stream as a file on disk, [GroupDocs.Viewer](https://products.groupdocs.com/viewer) enables you to render the file streams directly.

The following are the steps to be followed:

* Specify the method to obtain document stream;
* Pass method's name to [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class constructor.

Following code snippet serves this purpose.

```java
    public void loadDocumentFromStream() {
        FileInputStream inputStream = new FileInputStream("sample.docx"))

        try (Viewer viewer = new Viewer(inputStream) {
            HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
            viewer.view(viewOptions);
        }
    }
```
