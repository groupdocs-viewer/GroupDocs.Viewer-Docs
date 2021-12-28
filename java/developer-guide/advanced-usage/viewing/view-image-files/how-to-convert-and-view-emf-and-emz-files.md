---
id: how-to-convert-and-view-emf-and-emz-files
url: viewer/java/how-to-convert-and-view-emf-and-emz-files
title: How to convert and view EMF and EMZ files
weight: 1
description: "This article explains how to convert and view EMF and EMZ files with GroupDocs.Viewer within your Java applications."
keywords: EMF EMZ convert rendering
productName: GroupDocs.Viewer for Java
hideChildren: False
---
EMF and EMZ are Windows Compressed Enhanced Metafile graphics formats developed by Microsoft. These formats may contain both vector and raster images, but they are primarily used for vector images.
EMF is Enhanced Windows Metafile Format - it contains Windows MetaFile binary data.
EMZ is a Windows Compressed Enhanced Metafile format - it also contains Windows MetaFile binary data but compressed with GZIP.

EMF files can be opened with Microsoft Paint, Adobe Illustrator, InkScape.
EMZ files can be opened with the same applications but should be unpacked before open.

These file formats are part of a series of Windows Metafile formats:

Windows Metafile formats:
WMF - Windows Metafile Format
WMZ - Windows Metafile Compressed (GZipped) Format
See [How to convert and view WMF and WMZ files]({{< ref "viewer/java/developer-guide/advanced-usage/viewing/view-image-files/how-to-convert-and-view-wmf-and-wmz-files.md" >}})

Windows Metafile Enhanced formats:
EMF - Windows Metafile Enhanced Format
EMZ - Windows Metafile Enhanced Compressed (GZipped) Format

In case you need to view an EMF(EMZ) file in a browser or a standard image or PDF viewer application, you can convert it to HTML, JPEG, PNG  PDF format with [GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java).

![EMF and EMZ](viewer/java/images/how-to-convert-and-view-emf-and-emz-files/sample.jpg)

## How to convert EMZ files

### Convert EMZ to HTML

To convert EMZ files to HTML with [GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) use following code:

```java
    try (Viewer viewer = new Viewer("sample.emz")) {
        HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources("output.html");

        viewer.view(options);
    }
```

\
The following screenshot shows the output HTML file opened in a browser.

![EMF/EMZ in HTML](viewer/java/images/how-to-convert-and-view-emf-and-emz-files/html.jpg)

### Convert EMZ to JPG

To convert EMZ files to JPG with [GroupDocs.Viewer](https://products.groupdocs.com/viewer) for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.emz")) {
        JpgViewOptions options = new JpgViewOptions("output.jpg");

        viewer.view(options);
    }
```

\
The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![EMF/EMZ in JPG](viewer/java/images/how-to-convert-and-view-emf-and-emz-files/jpg.jpg)

### Convert EMZ to PNG

To convert PLT/HPG files to PNG with [GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) use following code:

```java
    try (Viewer viewer = new Viewer("sample.emz")) {
        PngViewOptions options = new PngViewOptions("output.png");

        viewer.view(options);
    }
```

\
The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![EMF/EMZ in PNG](viewer/java/images/how-to-convert-and-view-emf-and-emz-files/png.jpg)

### Convert EMZ to PDF

To convert EMZ files to PDF with [GroupDocs.Viewer](https://products.groupdocs.com/viewer) for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.emz")) {
        PdfViewOptions options = new PdfViewOptions("output.pdf");

        viewer.view(options);
    }
```

\
The following screenshot shows the output PDF file opened in an Acrobat Reader.

![EMF/EMZ in PDF](viewer/java/images/how-to-convert-and-view-emf-and-emz-files/pdf.jpg)

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