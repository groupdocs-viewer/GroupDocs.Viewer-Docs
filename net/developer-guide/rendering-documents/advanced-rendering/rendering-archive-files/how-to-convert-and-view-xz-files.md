---
id:  how-to-convert-and-view-xz-files
url: viewer/net/how-to-convert-and-view-xz-files
title: Render XZ files
weight: 2
description: "In this article we show render XZ files with GroupDocs.Viewer within your .NET applications."
keywords: xz archive xzip
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

XZ files are XZipped archive files, this format is a high-ratio compression algorithm based on the LZMA algorithm. \
This archive format like GZip can compress only a single file, not multiple files or folders. \
So it is mostly used with TAR (TXZ) - multiple files/folders compressed into single file TAR after it is compressed with XZip.
TXZ format is also supported and described in the [following article]({{< ref "viewer/net/developer-guide/rendering-documents/advanced-rendering/rendering-archive-files/how-to-convert-and-view-txz-files.md" >}}).
Unlike GZip, XZip does not store archived file name. Filename will be determined by archive name: for example test.doc.xz will "test.doc" after unpack, and "test.xls.xz" will be "test.xls".

Extension: XZ

XZ archives can be opened with WinRar.

![Archive in WinRar](viewer/net/images/how-to-convert-and-view-xz-files/xz-in-winrar.png)

## How to convert XZ archive files

### Convert archive files to HTML

To convert archive files to multiple pages HTML with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.vb.xz"))
{
       HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("output_page.html");
       viewer.View(options);
}
```

The following screenshot shows the output HTML file opened in a browser.

![Multiple pages HTML converted archive](viewer/net/images/how-to-convert-and-view-xz-files/xz-to-html.png)

### Convert archive files to JPG

To convert archive files to JPG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.vb.xz"))
{
       JpgViewOptions options = new JpgViewOptions("output_page.jpg");
       viewer.View(options);
}
```

The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![JPEG converted archive](viewer/net/images/how-to-convert-and-view-xz-files/xz-in-jpg.png)

### Convert archive files to PNG

To convert archive files to PNG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.vb.xz"))
{
       PngViewOptions options = new PngViewOptions("output_page.png");
       viewer.View(options);
}
```

The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![PNG converted archive](viewer/net/images/how-to-convert-and-view-xz-files/xz-in-png.png)

### Convert archive to PDF

To convert Roshal Archive files to PDF with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.vb.xz"))
{
       PdfViewOptions options = new PdfViewOptions("output.pdf");
       viewer.View(options);
}
```

The following screenshot shows the output PDF file opened in an Acrobat Reader.

![PDF converted archive](viewer/net/images/how-to-convert-and-view-xz-files/xz-in-pdf.png)
