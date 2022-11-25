---
id: view-specific-pages
url: viewer/java/view-specific-pages
title: Render specific pages
weight: 1
description: "This article explains how to view specific pages when processing documents with GroupDocs.Viewer within your Java applications."
keywords: specific pages, view specific pages
productName: GroupDocs.Viewer for Java
hideChildren: False
---

GroupDocs.Viewer also provides the features to render only the selected page numbers. You can specify a list of the document pages to be rendered. Follow the below steps to achieve this functionality.

* Instantiate the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object;
* Instantiate the [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions), [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions), [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) or [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) object;
* Pass desired page numbers to [view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method.
* The following code sample shows how to render N consecutive pages of a document.

The following code sample shows how to render the first and third pages of a document.

```java
try (Viewer viewer = new Viewer("sample.docx")) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    viewer.view(viewOptions, 1, 3);
}
```
