---
id: how-to-convert-and-view-svg-and-svgz-files
url: viewer/java/how-to-convert-and-view-svg-and-svgz-files
title: Rendering SVG and SVGZ files
weight: 1
description: "This article explains how to convert and view SVG and SVGZ files with GroupDocs.Viewer within your Java applications."
keywords: svg svgz convert and view SVG and SVGZ with GroupDocs.Viewer Java API
productName: GroupDocs.Viewer for Java
hideChildren: False
---
SVG and SVGZ are Scalable Vector Graphics formats. SVG is a Flat Scalable Vector Graphics format in uncompressed XML.
SVGZ consists of a GZIPped archive with one traditional SVG file.

These files can be opened with Adobe Illustrator, Corel PaintShop Pro, Serif DrawPlus, and Inkscape.

In case you need to view an SVG(SVGZ) file in a browser or in a standard image or PDF viewer application, you can convert it to HTML, JPEG, PNG PDF format with GroupDocs.Viewer for Java.

![Image in desktop program](viewer/java/images/how-to-convert-and-view-svg-and-svgz-files/main.jpg)

## How to convert SVG/SVGZ files

### Convert SVG/SVGZ to HTML

To convert SVG/SVGZ files to HTML with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.svgz")) {
        HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources("output.html");

        viewer.view(options);
    }
```

The following screenshot shows the output HTML file opened in a browser.

![Result in browser](viewer/java/images/how-to-convert-and-view-svg-and-svgz-files/result-in-browser.jpg)

### Convert SVG/SVGZ to JPG

To convert SVG/SVGZ files to JPG with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.svgz")) {
        JpgViewOptions options = new JpgViewOptions("output.jpg");

        viewer.view(options);
    }
```

The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![Result in JPG](viewer/java/images/how-to-convert-and-view-svg-and-svgz-files/result-jpg.jpg)

### Convert SVG/SVGZ to PNG

To convert PLT/HPG files to PNG with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.svgz")) {
        PngViewOptions options = new PngViewOptions("output.png");

        viewer.view(options);
    }
```

The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![Result in PNG](viewer/java/images/how-to-convert-and-view-svg-and-svgz-files/result-png.jpg)

### Convert SVG/SVGZ to PDF

To convert SVGZ files to PDF with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.svgz")) {
        PdfViewOptions options = new PdfViewOptions("output.pdf");

        viewer.view(options);
    }
```

The following screenshot shows the output PDF file opened in an Acrobat Reader.

![Result in PDF](viewer/java/images/how-to-convert-and-view-svg-and-svgz-files/result-pdf.jpg)
