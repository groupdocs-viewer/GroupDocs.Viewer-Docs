---
id:  how-to-convert-and-view-7zip-files
url: viewer/net/how-to-convert-and-view-7z-files
title: Render 7-Zip files
weight: 2
description: "Learn how to render 7Z files with GroupDocs.Viewer within your .NET applications."
keywords: 7z archive, 7Zip, 7-Zip
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

7Z files are 7-Zip archives files.
The 7-Zip format used various compression algorithms:  bzip2, PPMd, LZMA2, LZMA, and others. \
Extension: 7z.

7Z archives can be opened with WinRar/7Zip.

![Archive in WinRar](viewer/net/images/how-to-convert-and-view-7z-files/7z-in-winrar.png)

## How to convert 7Z archive files

### Convert archive files to multiple pages HTML

To convert archive files to multiple pages HTML with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.7z"))
{
       HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("output_page_{0}.html");
       viewer.View(options);
}
```

The following screenshot shows the output HTML file opened in a browser.

![Multiple pages HTML converted archive](viewer/net/images/how-to-convert-and-view-7z-files/7z-to-multiple-html.png)

### Convert archive files to single HTML

To convert archive files to single page HTML with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.7z"))
{
       HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("output.html");
       options.RenderToSinglePage = true;
       viewer.View(options);
}
```

The following screenshot shows the output HTML file opened in a browser.

![Single page HTML converted zip](viewer/net/images/how-to-convert-and-view-7z-files/7z-to-single-html.png)

### Convert archive files to JPG

To convert archive files to JPG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.7z"))
{
       JpgViewOptions options = new JpgViewOptions("output_page_{0}.jpg");
       viewer.View(options);
}
```

The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![JPEG converted archive](viewer/net/images/how-to-convert-and-view-7z-files/7z-in-jpg.png)

### Convert archive files to PNG

To convert archive files to PNG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.7z"))
{
       PngViewOptions options = new PngViewOptions("output_page_{0}.png");
       viewer.View(options);
}
```

The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![PNG converted archive](viewer/net/images/how-to-convert-and-view-7z-files/7z-in-png.png)

### Convert archive to PDF

To convert Roshal Archive files to PDF with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.7z"))
{
       PdfViewOptions options = new PdfViewOptions("output.pdf");
       viewer.View(options);
}
```

The following screenshot shows the output PDF file opened in an Acrobat Reader.

![PDF converted archive](viewer/net/images/how-to-convert-and-view-7z-files/7z-in-pdf.png)
