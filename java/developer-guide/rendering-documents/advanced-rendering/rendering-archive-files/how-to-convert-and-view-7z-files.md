---
id:  how-to-convert-and-view-7zip-files
url: viewer/java/how-to-convert-and-view-7z-files
title: Render 7-Zip files
weight: 2
description: "Learn how to render 7Z files with GroupDocs.Viewer within your Java applications."
keywords: 7z archive, 7Zip, 7-Zip
productName: GroupDocs.Viewer for Java
hideChildren: False
---

7Z files are 7-Zip archives files.
The 7-Zip format used various compression algorithms:  bzip2, PPMd, LZMA2, LZMA, and others. \
Extension: 7z.

7Z archives can be opened with WinRar/7Zip.

![Archive in WinRar](/viewer/java/images/how-to-convert-and-view-7z-files/7z-in-winrar.png)

## How to convert 7Z archive files

### Convert archive files to multiple pages HTML

To convert archive files to multiple pages HTML with GroupDocs.Viewer for Java use following code:

```java
try (Viewer viewer = new Viewer("sample.7z")) {
    HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources("output_page_{0}.html");
    viewer.view(options);
}
```

The following screenshot shows the output HTML file opened in a browser.

![Multiple pages HTML converted archive](/viewer/java/images/how-to-convert-and-view-7z-files/7z-to-multiple-html.png)

### Convert archive files to single HTML

To convert archive files to single page HTML with GroupDocs.Viewer for Java use following code:

```java
try (Viewer viewer = new Viewer("sample.7z")) {
    HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources("output.html");
    options.setRenderToSinglePage(true);
    viewer.view(options);
}
```

The following screenshot shows the output HTML file opened in a browser.

![Single page HTML converted zip](/viewer/java/images/how-to-convert-and-view-7z-files/7z-to-single-html.png)

### Convert archive files to JPG

To convert archive files to JPG with GroupDocs.Viewer for Java use following code:

```java
try (Viewer viewer = new Viewer("sample.7z")) {
    JpgViewOptions options = new JpgViewOptions("output_page_{0}.jpg");
    viewer.view(options);
}
```

The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![JPEG converted archive](/viewer/java/images/how-to-convert-and-view-7z-files/7z-in-jpg.png)

### Convert archive files to PNG

To convert archive files to PNG with GroupDocs.Viewer for Java use following code:

```java
try (Viewer viewer = new Viewer("sample.7z")) {
    PngViewOptions options = new PngViewOptions("output_page_{0}.png");
    viewer.view(options);
}
```

The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![PNG converted archive](/viewer/java/images/how-to-convert-and-view-7z-files/7z-in-png.png)

### Convert archive to PDF

To convert Roshal Archive files to PDF with GroupDocs.Viewer for Java use following code:

```java
try (Viewer viewer = new Viewer("sample.7z")) {
    PdfViewOptions options = new PdfViewOptions("output.pdf");
    viewer.view(options);
}
```

The following screenshot shows the output PDF file opened in an Acrobat Reader.

![PDF converted archive](/viewer/java/images/how-to-convert-and-view-7z-files/7z-in-pdf.png)
