---
id: how-to-convert-and-view-nsf-files
url: viewer/java/how-to-convert-and-view-nsf-files
title: How to convert and view Lotus Notes database NSF files
weight: 2
description: "This article explains how to filter messages when viewing Lotus Notes Data Files with GroupDocs.Viewer within your Java applications."
keywords: lotus notes database 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
NSF (Notes Storage Facility) is a database format, developed by IBM. It contains e-mail messages, contacts, and appointments.  

## View NSF files

The NSF files can be opened with IBM Notes.
In case you need to view an NSF file in a browser or in a standard image or PDF viewer application, you can convert it to HTML, JPEG, PNG  PDF format with GroupDocs.Viewer for .NET.

![NSF files in IBM Notes application](viewer/java/images/how-to-convert-and-view-nsf-files/nsf-files-in-ibm-notes.jpg)

### Convert NSF to HTML

To convert NSF files to HTML with [GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) use the following code:

```java
    try (Viewer viewer = new Viewer("sample.nsf")) {
        HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources("output.html");

        viewer.view(options);
    }
```

The following screenshot shows the output HTML file opened in a browser.

![NSF files](viewer/java/images/how-to-convert-and-view-nsf-files/nsf-file-in-browser.jpg)

### Convert NSF to JPG

To convert OST and PST files to JPG with [GroupDocs.Viewer](https://products.groupdocs.com/viewer) for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.nsf")) {
        JpgViewOptions options = new JpgViewOptions("output_{0}.jpg");

        viewer.view(options);
    }
```

The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![NSF file converted to JPG in Photo Viewer](viewer/java/images/how-to-convert-and-view-nsf-files/nsf-file-in-photo-viewer-jpg.jpg)

### Convert NSF to PNG

To convert NSF files to PNG with [GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) use following code:

```java
    try (Viewer viewer = new Viewer("sample.nsf")) {
        PngViewOptions options = new PngViewOptions("output_{0}.png");

        viewer.view(options);
    }
```

The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![NSF file converted to PNG in Photo Viewer](viewer/java/images/how-to-convert-and-view-nsf-files/nsf-file-in-photo-viewer-png.jpg)

### Convert NSF files to PDF

To convert OST/PST files to PDF with [GroupDocs.Viewer](https://products.groupdocs.com/viewer) for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.nsf")) {
        PdfViewOptions options = new PdfViewOptions("output.pdf");

        viewer.view(options);
    }
```

The following screenshot shows the output PDF file opened in a browser.

![NSF file converted to PDF in Acrobat reader](viewer/java/images/how-to-convert-and-view-nsf-files/nsf-file-in-photo-viewer-pdf.jpg)

## More resources

### GitHub Examples
You may easily run the code above and see the feature in action in our GitHub examples:
*   [GroupDocs.Viewer for Java examples, plugins, and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java)
*   [Document Viewer for .NET App WebForms UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-WebForms)
*   [Document Viewer for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Dropwizard)
*   [Document Viewer for Java Spring UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Spring)
*   [GroupDocs.Viewer for .NET samples, plugins and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET)
*   [Document Viewer for .NET MVC UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-MVC)

### Free Online App
Along with full-featured Java library we provide simple but powerful free Apps.
You are welcome to view Word, PDF, Excel, PowerPoint documents with free to use online **[GroupDocs Viewer App](https://products.groupdocs.app/viewer)**.