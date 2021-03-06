---
id:  how-to-convert-archive-files-to-html
url: viewer/net/how-to-convert-archive-files-to-html
title: Render archives to HTML
weight: 2
description: "In this article we show render archive files with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Archive file formats are related to files compression. There various archive formats:
Mostly used in Windows: ZIP, RAR
Mostly used in Linux (Unix): TAR, BZIP2 (BZ2), GZIP

ZIP archives can be opened with Windows explorer,
RAR, TAR, BZIP2, GZIP formats can be opened with WinRar,

![Archive in windows explorer](viewer/net/images/how-to-convert-archive-files-to-html/zip-in-explorer.png)

If you convert archive files to HTML, you can choose beetween multiple and single pages conversion.

## How to convert archive files to HTML

### Convert archive files to multiple pages HTML

If property RenderToSinglePage is set to false (by default), you can set ItemsPerPage property - the number of items per page (default is 16), it is for rendering to HTML only.
To convert archive files to multiple pages HTML with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.zip"))
{
       HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("output_page_{0}.html");
       options.ArchiveOptions.ItemsPerPage = 10;

       viewer.View(options);
}
```

The following screenshot shows the output HTML file opened in a browser.

![Multiple pages HTML converted archive](viewer/net/images/how-to-convert-archive-files-to-html/zip-to-multiple-html.png)

### Convert archive files to single HTML

To convert archive files to single page HTML with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.zip"))
{
       HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("output.html");
       options.RenderToSinglePage = true;
       viewer.View(options);
}
```

The following screenshot shows the output HTML file opened in a browser.

![Single page HTML converted zip](viewer/net/images/how-to-convert-archive-files-to-html/zip-to-single-html.png)
