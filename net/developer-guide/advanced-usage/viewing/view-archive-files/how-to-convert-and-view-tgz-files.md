---
id:  how-to-convert-and-view-tgz-files
url: viewer/net/how-to-convert-and-view-tgz-files
title: How to convert and view TGZ files
weight: 2
description: "In this article we show how to convert and view TGZ files with GroupDocs.Viewer within your .NET applications."
keywords: tar gz tgz archive gzip
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

TGZ files are TAR (Tape-ARchiver) GZipped archive files, they contain TAR archive compressed with GZip.
GZip format used DEFLATE algorithm for compression of archive. This format applying compression on the complete archive, not on individual files. \
Extension: TGZ or TAR.GZ.

TGZ archives can be opened with WinRar.

![Archive in WinRar](viewer/net/images/how-to-convert-and-view-tgz-files/tgz-in-winrar.png)

## How to convert TGZ archive files

### Convert archive files to multiple pages HTML

To convert archive files to multiple pages HTML with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.tar.gz"))
{
       HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("output_page_{0}.html");
       viewer.View(options);
}
```

The following screenshot shows the output HTML file opened in a browser.

![Multiple pages HTML converted archive](viewer/net/images/how-to-convert-and-view-tgz-files/tgz-to-multiple-html.png)

### Convert archive files to single HTML

To convert archive files to single page HTML with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.tar.gz"))
{
       HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("output.html");
       options.RenderToSinglePage = true;
       viewer.View(options);
}
```

The following screenshot shows the output HTML file opened in a browser.

![Single page HTML converted zip](viewer/net/images/how-to-convert-and-view-tgz-files/tgz-to-single-html.png)

### Convert archive files to JPG

To convert archive files to JPG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.tar.gz"))
{
       JpgViewOptions options = new JpgViewOptions("output_page_{0}.jpg");
       viewer.View(options);
}
```

The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![JPEG converted archive](viewer/net/images/how-to-convert-and-view-tgz-files/tgz-in-jpg.png)

### Convert archive files to PNG

To convert archive files to PNG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.tar.gz"))
{
       PngViewOptions options = new PngViewOptions("output_page_{0}.png");
       viewer.View(options);
}
```

The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![PNG converted archive](viewer/net/images/how-to-convert-and-view-tgz-files/tgz-in-png.png)

### Convert archive to PDF

To convert Roshal Archive files to PDF with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.tar.gz"))
{
       PdfViewOptions options = new PdfViewOptions("output.pdf");
       viewer.View(options);
}
```

The following screenshot shows the output PDF file opened in an Acrobat Reader.

![PDF converted archive](viewer/net/images/how-to-convert-and-view-tgz-files/tgz-in-pdf.png)

## More resources

### View Archive Files Online

Along with full-featured .NET library we provide simple but powerful free online Apps.
View ZIP and TAR files online with **[GroupDocs Viewer App](https://products.groupdocs.app/viewer/archive)**.

### GitHub Examples

You may easily run the code above and see the feature in action in our GitHub examples:

* [GroupDocs.Viewer for .NET examples, plugins, and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET)
* [GroupDocs.Viewer for Java examples, plugins, and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java)
* [Document Viewer for .NET MVC UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-MVC)
* [Document Viewer for .NET App WebForms UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-WebForms)
* [Document Viewer for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Dropwizard)
* [Document Viewer for Java Spring UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Spring)
