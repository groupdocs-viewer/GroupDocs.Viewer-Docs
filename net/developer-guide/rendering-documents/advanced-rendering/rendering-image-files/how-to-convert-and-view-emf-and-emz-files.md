---
id: how-to-convert-and-view-emf-and-emz-files
url: viewer/net/how-to-convert-and-view-emf-and-emz-files
title: Render EMF and EMZ files
weight: 1
description: "This article explains render EMF and EMZ files with GroupDocs.Viewer within your .NET applications."
keywords: EMF EMZ convert rendering
productName: GroupDocs.Viewer for .NET
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
See [Render WMF and WMZ files]({{< ref "viewer/net/developer-guide/rendering-documents/advanced-rendering/rendering-image-files/how-to-convert-and-view-wmf-and-wmz-files.md" >}})

Windows Metafile Enhanced formats:
EMF - Windows Metafile Enhanced Format
EMZ - Windows Metafile Enhanced Compressed (GZipped) Format

In case you need to view an EMF(EMZ) file in a browser or a standard image or PDF viewer application, you can convert it to HTML, JPEG, PNG  PDF format with GroupDocs.Viewer for .NET.

![EMF and EMZ](viewer/net/images/how-to-convert-and-view-emf-and-emz-files/sample.jpg)

## How to convert EMZ files

### Convert EMZ to HTML

To convert EMZ files to HTML with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.emz"))
{
       HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("output.html");

       viewer.View(options);
}
```

\
The following screenshot shows the output HTML file opened in a browser.

![EMF/EMZ in HTML](viewer/net/images/how-to-convert-and-view-emf-and-emz-files/html.jpg)

### Convert EMZ to JPG

To convert EMZ files to JPG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.emz"))
{
       JpgViewOptions options = new JpgViewOptions("output.jpg");

       viewer.View(options);
}
```

\
The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![EMF/EMZ in JPG](viewer/net/images/how-to-convert-and-view-emf-and-emz-files/jpg.jpg)

### Convert EMZ to PNG

To convert PLT/HPG files to PNG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.emz"))
{
       PngViewOptions options = new PngViewOptions("output.png");

       viewer.View(options);
}
```

\
The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![EMF/EMZ in PNG](viewer/net/images/how-to-convert-and-view-emf-and-emz-files/png.jpg)

### Convert EMZ to PDF

To convert EMZ files to PDF with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.emz"))
{
       PdfViewOptions options = new PdfViewOptions("output.pdf");

       viewer.View(options);
}
```

\
The following screenshot shows the output PDF file opened in an Acrobat Reader.

![EMF/EMZ in PDF](viewer/net/images/how-to-convert-and-view-emf-and-emz-files/pdf.jpg)
