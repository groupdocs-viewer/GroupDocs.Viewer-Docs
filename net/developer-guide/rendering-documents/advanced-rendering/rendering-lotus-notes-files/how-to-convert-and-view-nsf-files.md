---
id: how-to-convert-and-view-nsf-files
url: viewer/net/how-to-convert-and-view-nsf-files
title: Render NSF files
weight: 2
description: "This article explains how to filter messages when rendering Lotus Notes Data Files with GroupDocs.Viewer within your .NET applications."
keywords: lotus notes database 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
NSF (Notes Storage Facility) is a database format, developed by IBM. It contains e-mail messages, contacts, and appointments.  

## View NSF files

The NSF files can be opened with IBM Notes.
In case you need to view an NSF file in a browser or in a standard image or PDF viewer application, you can convert it to HTML, JPEG, PNG  PDF format with GroupDocs.Viewer for .NET.

![NSF files in IBM Notes application](viewer/net/images/how-to-convert-and-view-nsf-files/nsf-files-in-ibm-notes.jpg)

### Convert NSF to HTML

To convert NSF files to HTML with GroupDocs.Viewer for .NET use the following code:

```csharp
using (Viewer viewer = new Viewer("sample.nsf"))
{
       HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("output.html");

       viewer.View(options);
}
```

The following screenshot shows the output HTML file opened in a browser.

![NSF files](viewer/net/images/how-to-convert-and-view-nsf-files/nsf-file-in-browser.jpg)

### Convert NSF to JPG

To convert OST and PST files to JPG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.nsf"))
{
       JpgViewOptions options = new JpgViewOptions("output_{0}.jpg");

       viewer.View(options);
}
```

The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![NSF file converted to JPG in Photo Viewer](viewer/net/images/how-to-convert-and-view-nsf-files/nsf-file-in-photo-viewer-jpg.jpg)

### Convert NSF to PNG

To convert NSF files to PNG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.nsf"))
{
       PngViewOptions options = new PngViewOptions("output_{0}.png");

       viewer.View(options);
}
```

The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![NSF file converted to PNG in Photo Viewer](viewer/net/images/how-to-convert-and-view-nsf-files/nsf-file-in-photo-viewer-png.jpg)

### Convert NSF files to PDF

To convert OST/PST files to PDF with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.nsf"))
{
       PdfViewOptions options = new PdfViewOptions("output.pdf");
  
       viewer.View(options);
}
```

The following screenshot shows the output PDF file opened in a browser.

![NSF file converted to PDF in Acrobat reader](viewer/net/images/how-to-convert-and-view-nsf-files/nsf-file-in-photo-viewer-pdf.jpg)
