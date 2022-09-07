---
id: how-to-convert-and-view-cmx-files
url: viewer/java/how-to-convert-and-view-cmx-files
title: Rendering CMX files
weight: 1
description: "This article explains how to convert and view CMX files with GroupDocs.Viewer within your Java applications."
keywords: corel coreldraw corel draw cmx convert rendering corel presentation exchange
productName: GroupDocs.Viewer for Java
hideChildren: False
---
CMX is a Corel Metafile Exchange Image File format developed by Corel. This format contains a vector image with metadata information. CMX files may contain multiple images, you can to set what images to render (see examples).

CMX files can be opened with Corel Draw, Corel PaintShop, Adobe Illustrator, InkScape.

In case you need to view a CMX file in a browser or a standard image or PDF viewer application, you can convert it to HTML, JPEG, PNG  PDF format with GroupDocs.Viewer for Java.

![CMX](/viewer/java/images/how-to-convert-and-view-cmx-files/sample.jpg)

## How to convert CMX files

### Convert CMX to HTML

To convert CMX files to HTML with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.cmx")) {
        HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources("output_{0}.html");

        viewer.view(options);

        // To render 2nd image, just specify
        //viewer.view(options,2);
    }
```

\
The following screenshot shows the output HTML file opened in a browser.

![CMX in HTML](/viewer/java/images/how-to-convert-and-view-cmx-files/html.jpg)

### Convert CMX to JPG

To convert CMX files to JPG with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.cmx")) {
        JpgViewOptions options = new JpgViewOptions("output_{0}.jpg");

        viewer.view(options);

        // To render 2nd image, just specify
        //viewer.view(options,2);
    }
```

\
The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![CMX in JPG](/viewer/java/images/how-to-convert-and-view-cmx-files/jpg.jpg)

### Convert CMX to PNG

To convert PLT/HPG files to PNG with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.cmx")) {
        PngViewOptions options = new PngViewOptions("output_{0}.png");

        viewer.view(options);

        // To render 2nd image, just specify
        //viewer.view(options,2);
    }
```

\
The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![CMX in PNG](/viewer/java/images/how-to-convert-and-view-cmx-files/png.jpg)

### Convert CMX to PDF

To convert CMX files to PDF with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.cmx")) {
        PdfViewOptions options = new PdfViewOptions("output.pdf");

        viewer.view(options);

        // By default all images will be rendered in output.pdf, to render only 2nd image in output PDF
        //viewer.view(options,2);
    }
```

\
The following screenshot shows the output PDF file opened in an Acrobat Reader.

![CMX in PDF](/viewer/java/images/how-to-convert-and-view-cmx-files/pdf.jpg)
