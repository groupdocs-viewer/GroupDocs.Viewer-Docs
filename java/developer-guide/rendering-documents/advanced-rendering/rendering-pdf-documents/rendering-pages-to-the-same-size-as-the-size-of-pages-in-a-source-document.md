---
id: rendering-pages-to-the-same-size-as-the-size-of-pages-in-a-source-document
url: viewer/java/rendering-pages-to-the-same-size-as-the-size-of-pages-in-a-source-document
title: Rendering pages to the same size as the size of pages in a source document
weight: 6
description: "This article explains how to set the output image size to be the same as the page size of a PDF Document with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
{{< alert style="info" >}}This option is supported when rendering to JPG and PNG only.{{< /alert >}}

![](/viewer/java/images/rendering-pages-to-the-same-size-as-the-size-of-pages-in-a-source-document.png)

When viewing PDF documents in JPG and PNG formats by default GroupDocs.Viewer calculates output image size for better viewing quality. In case you want to make output JPG and PNG images to be the same size in pixels as the size of pages in a source PDF document GroupDocs.Viewer for Java provides a new option called [setRenderOriginalPageSize()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfOptions#setRenderOriginalPageSize(boolean)) of the [PdfOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfOptions) class. 

The following code snippet shows how to convert pages to the same size as the size of pages in a source document.

```java
    try (Viewer viewer = new Viewer("sample.pdf")) {
        PngViewOptions viewOptions = new PngViewOptions();
        viewOptions.getPdfOptions().setRenderOriginalPageSize(true);
                       
        viewer.view(viewOptions);
    }
```