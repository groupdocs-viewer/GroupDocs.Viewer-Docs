---
id:  how-to-convert-and-view-apple-numbers-files
url: viewer/net/how-to-convert-and-view-apple-numbers-files
title: Render Apple numbers files
weight: 2
description: "In this article we show render Apple numbers files with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Numbers is Apple spreadsheet document format. It can be opened on Mac with Numbers application.

![numbers in Mac](viewer/net/images/how-to-convert-and-view-apple-numbers-files/numbers-in-mac.png)

## How to convert Apple numbers files

### Convert Apple numbers to HTML

To convert Apple numbers files to HTML with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.numbers"))
{
       HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("output.html");
       viewer.View(options);
}
```

The following screenshot shows the output HTML file opened in a browser.

![HTML converted numbers](viewer/net/images/how-to-convert-and-view-apple-numbers-files/numbers-in-html.png)

### Convert Apple numbers to JPG

To convert Apple numbers files to JPG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.numbers"))
{
       JpgViewOptions options = new JpgViewOptions("output.jpg");
       viewer.View(options);
}
```

The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![JPEG converted numbers](viewer/net/images/how-to-convert-and-view-apple-numbers-files/numbers-in-jpg.png)

### Convert Apple numbers to PNG

To convert Apple numbers files to PNG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.numbers"))
{
       PngViewOptions options = new PngViewOptions("output.png");
       viewer.View(options);
}
```

The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![PNG converted numbers](viewer/net/images/how-to-convert-and-view-apple-numbers-files/numbers-in-png.png)

### Convert Apple numbers to PDF

To convert Apple numbers files to PDF with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.numbers"))
{
       PdfViewOptions options = new PdfViewOptions("output.pdf");
       viewer.View(options);
}
```

The following screenshot shows the output PDF file opened in an Acrobat Reader.

![PDF converted numbers](viewer/net/images/how-to-convert-and-view-apple-numbers-files/numbers-in-pdf.png)

