---
id: how-to-convert-and-view-chm-files
url: viewer/java/how-to-convert-and-view-chm-files
title: Rendering CHM files
weight: 9
description: "This article explains how to convert and view CHM files with GroupDocs.Viewer within your Java applications."
keywords: chm microsoft help view convert
productName: GroupDocs.Viewer for Java
hideChildren: False
---
## Introduction

[CHM](https://docs.fileformat.com/web/chm/) is Microsoft Compiled Help format. These formats are designed for context help (usually activated by the F1 key) in applications. Format power allows to use of HTML content with images and CSS styling, also this format provides "table of contents" feature. To reduce the size of the final CHM file LZX is used.

![CHM compiled file example](viewer/java/images/how-to-convert-and-view-chm-files/chm-file-example.jpg)

## How to view CHM files

The CHM files can be opened with internal built-in tools of Microsoft Windows.

In case you need to view a CHM file in a browser or a standard image or PDF viewer application, you can convert it to HTML, JPEG, PNG  PDF format with GroupDocs.Viewer for Java.

### Convert CHM to HTML

To convert CHM files to HTML with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.chm")) {
        HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources("chm_result_{0}.html");
        options.setRenderToSinglePage(true); // Enable it if you want to convert all CHM content to single page

        //viewer.view(options,1,2,3); // Convert only 1,2,3 pages
        viewer.view(options); // Convert all pages
    }
```

The following screenshot shows the output HTML file opened in a browser.

![CHM file converted in HTML](viewer/java/images/how-to-convert-and-view-chm-files/chm-file-in-html.jpg)

### Convert CHM to JPG

To convert CHM files to JPG with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.chm")) {
        JpgViewOptions options = new JpgViewOptions("chm_result_{0}.jpg");

        //viewer.view(options,1,2,3); // Convert only 1,2,3 pages
        viewer.view(options); // Convert all pages
    }
```

The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![CHM file converted in JPG](viewer/java/images/how-to-convert-and-view-chm-files/chm-file-in-jpg.jpg)

### Convert CHM to PNG

To convert CHM/HPG files to PNG with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.chm")) {
        PngViewOptions options = new PngViewOptions("chm_result_{0}.png");

        //viewer.view(options,1,2,3); // Convert only 1,2,3 pages
        viewer.view(options); // Convert all pages
    }
```

The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![CHM file converted in PNG](viewer/java/images/how-to-convert-and-view-chm-files/chm-file-in-png.jpg)

### Convert CHM to PDF

To convert CHM files to PDF with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.chm")) {
        PdfViewOptions options = new PdfViewOptions("chm_result.pdf");

        viewer.view(options);
    }
```

The following screenshot shows the output PDF file opened in a browser.

![CHM file converted in PDF](viewer/java/images/how-to-convert-and-view-chm-files/chm-file-in-pdf.jpg)
