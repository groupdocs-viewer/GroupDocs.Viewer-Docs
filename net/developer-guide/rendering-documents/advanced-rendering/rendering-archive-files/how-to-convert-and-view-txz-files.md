---
id:  how-to-convert-and-view-txz-files
url: viewer/net/how-to-convert-and-view-txz-files
title: Render TXZ files
weight: 2
description: "In this article we show render TXZ files with GroupDocs.Viewer within your .NET applications."
keywords: tar xz txz archive xzip
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

TXZ files are TAR (Tape-ARchiver) XZipped archive files, they contain TAR archive compressed with XZip.
XZip format is a high-ratio compression algorithm based on the LZMA algorithm. \
Extension: TXZ or TAR.XZ.

TXZ archives can be opened with WinRar.

![Archive in WinRar](viewer/net/images/how-to-convert-and-view-txz-files/txz-in-winrar.png)

## How to convert TXZ archive files

### Convert archive files to multiple pages HTML

To convert archive files to multiple pages HTML with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.txz"))
{
       HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("output_page_{0}.html");
       viewer.View(options);
}
```

The following screenshot shows the output HTML file opened in a browser.

![Multiple pages HTML converted archive](viewer/net/images/how-to-convert-and-view-txz-files/txz-to-multiple-html.png)

### Convert archive files to single HTML

To convert archive files to single page HTML with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.txz"))
{
       HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("output.html");
       options.RenderToSinglePage = true;
       viewer.View(options);
}
```

The following screenshot shows the output HTML file opened in a browser.

![Single page HTML converted zip](viewer/net/images/how-to-convert-and-view-txz-files/txz-to-single-html.png)

### Convert archive files to JPG

To convert archive files to JPG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.txz"))
{
       JpgViewOptions options = new JpgViewOptions("output_page_{0}.jpg");
       viewer.View(options);
}
```

The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![JPEG converted archive](viewer/net/images/how-to-convert-and-view-txz-files/txz-in-jpg.png)

### Convert archive files to PNG

To convert archive files to PNG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.txz"))
{
       PngViewOptions options = new PngViewOptions("output_page_{0}.png");
       viewer.View(options);
}
```

The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![PNG converted archive](viewer/net/images/how-to-convert-and-view-txz-files/txz-in-png.png)

### Convert archive to PDF

To convert Roshal Archive files to PDF with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.txz"))
{
       PdfViewOptions options = new PdfViewOptions("output.pdf");
       viewer.View(options);
}
```

The following screenshot shows the output PDF file opened in an Acrobat Reader.

![PDF converted archive](viewer/net/images/how-to-convert-and-view-txz-files/txz-in-pdf.png)
