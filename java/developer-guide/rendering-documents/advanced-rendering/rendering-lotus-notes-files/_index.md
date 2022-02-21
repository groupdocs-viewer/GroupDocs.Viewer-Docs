---
id: view-lotus-notes-data-files
url: viewer/java/view-lotus-notes-data-files
title: Rendering Lotus Notes Files
weight: 20
description: "This article contains use-cases of viewing Lotus Notes Data Files with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
Lotus Notes Data Files are created and used by Lotus Notes to store messages, contacts, calendars, and other account information.

## Demo

Please check our online **[NSF Viewer](https://products.groupdocs.app/viewer/nsf)** demo.

## Supported Lotus Notes Files

The following Lotus Notes Data Files are supported by the GroupDocs.Viewer for Java.

Auto Detection means that GroupDocs.Viewer for Java can determine the type of the Lotus Notes Data file by reading the information in the file header.

| File Extension | File Type | Auto Detection |
| --- | --- | --- |
| [.NSF](https://fileinfo.com/extension/nsf) | [Lotus Notes database](https://fileinfo.com/extension/nsf) | Yes |

## Rendering NSF files

The NSF files can be opened with IBM Notes.
In case you need to view an NSF file in a browser or in a standard image or PDF viewer application, you can convert it to HTML, JPEG, PNG  PDF format with GroupDocs.Viewer for .NET.

![NSF files in IBM Notes application](viewer/java/images/how-to-convert-and-view-nsf-files/nsf-files-in-ibm-notes.jpg)

### Rendering NSF to HTML

To convert NSF files to HTML with GroupDocs.Viewer for Java use the following code:

```java
    try (Viewer viewer = new Viewer("sample.nsf")) {
        HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources("output.html");

        viewer.view(options);
    }
```

The following screenshot shows the output HTML file opened in a browser.

![NSF files](viewer/java/images/how-to-convert-and-view-nsf-files/nsf-file-in-browser.jpg)

### Rendering NSF to JPG

To convert OST and PST files to JPG with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.nsf")) {
        JpgViewOptions options = new JpgViewOptions("output_{0}.jpg");

        viewer.view(options);
    }
```

The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![NSF file converted to JPG in Photo Viewer](viewer/java/images/how-to-convert-and-view-nsf-files/nsf-file-in-photo-viewer-jpg.jpg)

### Rendering NSF to PNG

To convert NSF files to PNG with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.nsf")) {
        PngViewOptions options = new PngViewOptions("output_{0}.png");

        viewer.view(options);
    }
```

The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![NSF file converted to PNG in Photo Viewer](viewer/java/images/how-to-convert-and-view-nsf-files/nsf-file-in-photo-viewer-png.jpg)

### Rendering NSF files to PDF

To convert OST/PST files to PDF with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.nsf")) {
        PdfViewOptions options = new PdfViewOptions("output.pdf");

        viewer.view(options);
    }
```

The following screenshot shows the output PDF file opened in a browser.

![NSF file converted to PDF in Acrobat reader](viewer/java/images/how-to-convert-and-view-nsf-files/nsf-file-in-photo-viewer-pdf.jpg)

## In this section

The articles given in this section describes the usage of GroupDocs.Viewer to convert Lotus Notes Data files with different available options.
