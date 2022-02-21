---
id: view-archive-files
url: viewer/java/view-archive-files
title: Rendering Archive Files
weight: 17
description: "This article contains use-cases of viewing Archives with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
The archive files are used to compress files to save space on disk or compress files to group them. There are different compression algorithms are used to compress files that's why we have different archive formats. The most popular archive formats are ZIP and TAR and it's highly likely that you've already packed and unpacked archive files.

## Demo

Please check our online **[Archive Viewer](https://products.groupdocs.app/viewer/archive)** Demo.

## Supported Archive Formats

The following archive formats are supported by the GroupDocs.Viewer for Java.

Auto Detection means that GroupDocs.Viewer can determine the type of the archive file by reading the information in the file header.

| File Extension | File Type | Auto Detection |
| --- | --- | --- |
| [.ZIP](https://wiki.fileformat.com/compression/zip) | [Archive file format](https://wiki.fileformat.com/compression/zip) | Yes |
| [.TAR](https://wiki.fileformat.com/compression/tar) | [Consolidated Unix File Archive](https://wiki.fileformat.com/compression/tar) | Yes |
| [.BZ2](https://wiki.fileformat.com/compression/bz2) | [Bzip2 compressed file](https://wiki.fileformat.com/compression/bz2) | Yes |
| [.GZ](https://wiki.fileformat.com/compression/gz) | [Gnu Zipped File](https://wiki.fileformat.com/compression/gz) | Yes |
| [.RAR](https://wiki.fileformat.com/compression/rar) | [Roshal ARchive File](https://wiki.fileformat.com/compression/rar) | Yes |

*Note:* _to get actual information about supported formats it is recommended to call [getSupportedFileTypes()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/FileType#getSupportedFileTypes()) method of [FileType](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/FileType) class_

## How to render archive files

### Render archive files to multiple pages HTML

To convert archive files to multiple pages HTML with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.zip")) {
       HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources("output_page_{0}.html");

       viewer.View(options);
    }
```

The following screenshot shows the output HTML file opened in a browser.

![Multiple pages HTML converted archive](viewer/java/images/how-to-convert-and-view-archive-files/zip-to-multiple-html.png)

### Render archive files to single HTML

To convert archive files to single page HTML with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.zip")) {
       HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources("output.html");
       options.setRenderSinglePage(true);
       viewer.view(options);
    }
```

The following screenshot shows the output HTML file opened in a browser.

![Single page HTML converted zip](viewer/java/images/how-to-convert-and-view-archive-files/zip-to-single-html.png)

### Render archive files to JPG

To convert archive files to JPG with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.zip")) {
       JpgViewOptions options = new JpgViewOptions("output_page_{0}.jpg");
       viewer.view(options);
    }
```

The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![JPEG converted archive](viewer/java/images/how-to-convert-and-view-archive-files/zip-in-jpg.png)

### Render archive files to PNG

To convert archive files to PNG with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.zip")) {
       PngViewOptions options = new PngViewOptions("output_page_{0}.png");
       viewer.view(options);
    }
```

The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![PNG converted archive](viewer/java/images/how-to-convert-and-view-archive-files/zip-in-png.png)

### Render archive to PDF

To convert Roshal Archive files to PDF with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.zip")) {
       PdfViewOptions options = new PdfViewOptions("output.pdf");
       viewer.view(options);
    }
```

The following screenshot shows the output PDF file opened in an Acrobat Reader.

![PDF converted archive](viewer/java/images/how-to-convert-and-view-archive-files/zip-in-pdf.png)

## Articles in this section

The articles given in this section describes the usage of GroupDocs.Viewer to convert archive formats with different available options.
