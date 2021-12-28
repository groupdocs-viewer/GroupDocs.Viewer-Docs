---
id: how-to-convert-and-view-fodp-and-odp-files
url: viewer/net/how-to-convert-and-view-fodp-and-odp-files
title: Render FODP and ODP files
weight: 3
description: "In this article we show render FODP and ODP files with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
FODP is Flat Open Document Presentation in XML format for presentations. It can be opened with LibreOffice (OpenOffice) Impress.

ODP is Open Document Presentation too, but it formatted using the OASIS XML-based OpenDocument standard and consists of an archive with a set of files and a [manifest](https://en.wikipedia.org/wiki/Manifest_file) file.

![](viewer/net/images/how-to-convert-and-view-fodp-and-odp-files.png)

## How to convert FODP(ODP) files

### Convert FODP(ODP) to HTML

To convert FODP(ODP) files to HTML with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.fodp"))
{
       HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("output.html");
       viewer.View(options);
}
```

The following screenshot shows the output HTML file opened in a browser.

![](viewer/net/images/how-to-convert-and-view-fodp-and-odp-files_1.png)

### Convert FODP(ODP) to JPG

To convert FODP(ODP) files to JPG with GroupDocs.Viewer for .NET use following code: 

```csharp
using (Viewer viewer = new Viewer("sample.fodp"))
{
       JpgViewOptions options = new JpgViewOptions("output.jpg");
       viewer.View(options);
}
```

The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![](viewer/net/images/how-to-convert-and-view-fodp-and-odp-files_2.png)

### Convert FODP(ODP) to PNG

To convert FODP(ODP) files to PNG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.fodp"))
{
       PngViewOptions options = new PngViewOptions("output.png");
       viewer.View(options);
}
```

The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![](viewer/net/images/how-to-convert-and-view-fodp-and-odp-files_3.png)

### Convert FODP(ODP) to PDF

To convert FODP(ODP) files to PDF with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.fodp"))
{
       PdfViewOptions options = new PdfViewOptions("output.pdf");
       viewer.View(options);
}
```

The following screenshot shows the output PDF file opened in an Acrobat Reader.

![](viewer/net/images/how-to-convert-and-view-fodp-and-odp-files_4.png)
