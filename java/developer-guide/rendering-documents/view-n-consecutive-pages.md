---
id: view-n-consecutive-pages
url: viewer/java/view-n-consecutive-pages
title: Render N consecutive pages
weight: 2
description: "This article explains how to view n consecutive pages when processing documents with GroupDocs.Viewer within your Java applications."
keywords: view n consecutive pages, consecutive pages
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer provides the feature to render N consecutive pages. You will have to provide the starting page number and the number of pages to be rendered. Follow the below steps to render N consecutive pages.

* Instantiate the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object;
* Instantiate the [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions), [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions), [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) or [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) object;
* Create an array of desired page numbers;
* Pass page numbers array to [view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method.

The following code sample shows how to render N consecutive pages of a document.

```java
    int[] pageNumbers = new int[] { 1, 2, 3 };

    try (Viewer viewer = new Viewer("sample.docx")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewer.view(viewOptions, pageNumbers);
    }
```
