---
id: how-to-convert-and-view-cdr-files
url: viewer/java/how-to-convert-and-view-cdr-files
title: Rendering CDR files
weight: 1
description: "This article explains how to convert and view CDR files with GroupDocs.Viewer within your Java applications."
keywords: corel coreldraw corel draw cdr convert rendering
productName: GroupDocs.Viewer for Java
hideChildren: False
---
CDR is a Corel Image File format developed by Corel. This format contains vector image data.

CDR files can be opened with Corel Draw, Corel PaintShop, Adobe Illustrator, InkScape. CDR files may contain multiple images, you can set what images to render (see examples).

In case you need to view a CDR file in a browser or a standard image or PDF viewer application, you can convert it to HTML, JPEG, PNG or PDF format with GroupDocs.Viewer for Java.

![CDR](viewer/java/images/how-to-convert-and-view-cdr-files/sample.jpg)

## How to convert CDR files

### Convert CDR to HTML

To convert CDR files to HTML with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.cdr")) {
        HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources("output_{0}.html");

        viewer.view(options);

        // To render 2nd image, just specify
        //viewer.view(options,2);
    }
```

\
The following screenshot shows the output HTML file opened in a browser.

![CDR in HTML](viewer/java/images/how-to-convert-and-view-cdr-files/html.jpg)

### Convert CDR to JPG

To convert CDR files to JPG with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.cdr")) {
        JpgViewOptions options = new JpgViewOptions("output_{0}.jpg");

        viewer.view(options);

        // To render 2nd image, just specify
        //viewer.view(options,2);
    }
```

\
The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![CDR in JPG](viewer/java/images/how-to-convert-and-view-cdr-files/jpg.jpg)

### Convert CDR to PNG

To convert PLT/HPG files to PNG with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.cdr")) {
        PngViewOptions options = new PngViewOptions("output_{0}.png");

        viewer.view(options);

        // To render 2nd image, just specify
        //viewer.view(options,2);
    }
```

\
The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![CDR in PNG](viewer/java/images/how-to-convert-and-view-cdr-files/png.jpg)

### Convert CDR to PDF

To convert CDR files to PDF with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.cdr")) {
        PdfViewOptions options = new PdfViewOptions("output.pdf");

        viewer.view(options);

        // By default all images will be rendered in output.pdf, to render only 2nd image in output PDF
        //viewer.view(options,2);
    }
```

\
The following screenshot shows the output PDF file opened in an Acrobat Reader.

![CDR in PDF](viewer/java/images/how-to-convert-and-view-cdr-files/pdf.jpg)
