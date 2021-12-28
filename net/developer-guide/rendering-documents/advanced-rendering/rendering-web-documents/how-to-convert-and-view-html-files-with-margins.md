---
id:  how-to-convert-and-view-html-files-with-margins
url: viewer/net/how-to-convert-and-view-html-files-with-margins
title: Set margins
weight: 2
description: "In this article we show how set page margins while rendering HTML files with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
When you are converting HTML files, you can adjust top/bottom, left/right page margins in final document.
The units of margins are typography points.\
Default values are:\
Top/Bottom - 72\
Left/Right - 5

Final margin value is calculated as:\
Final margin value = [HTML page margin value] + [margin value in viewer ]

![Page in Internet Explorer](viewer/net/images/how-to-convert-and-view-html-files-with-margins/page-in-explorer.jpg)

## How to set margins values

### Setting margins values when converting to PNG

To set margins values when converting HTML files to PNG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.htm"))
{
       PngViewOptions options = new PngViewOptions("result_page_{0}.png");
       options.WordProcessingOptions.LeftMargin = 40;
       options.WordProcessingOptions.RightMargin = 40;
       options.WordProcessingOptions.TopMargin = 40;
       options.WordProcessingOptions.BottomMargin = 40;

       viewer.View(options);
}
```

\
The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![Output PNG result](viewer/net/images/how-to-convert-and-view-html-files-with-margins/png-result.jpg)

### Setting margins values when converting to JPG

To set margins values when converting HTML files to PNG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.htm"))
{
       JpgViewOptions options = new JpgViewOptions("result_page_{0}.jpg");
       options.WordProcessingOptions.LeftMargin = 40;
       options.WordProcessingOptions.RightMargin = 40;
       options.WordProcessingOptions.TopMargin = 40;
       options.WordProcessingOptions.BottomMargin = 40;

       viewer.View(options);
}
```

\
The following screenshot shows the output JPEG file opened in a Windows Photo Viewer application.\
\
![Output JPEG result](viewer/net/images/how-to-convert-and-view-html-files-with-margins/jpg-result.jpg)

### Setting margins values when converting to PDF

To set margins values when converting HTML files to PDF with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.htm"))
{
       PdfViewOptions options = new PdfViewOptions("result.pdf");
       options.WordProcessingOptions.LeftMargin = 40;
       options.WordProcessingOptions.RightMargin = 40;
       options.WordProcessingOptions.TopMargin = 40;
       options.WordProcessingOptions.BottomMargin = 40;

       viewer.View(options);
}
```

\
The following screenshot shows the output PDF file opened in an Acrobat Reader.\
\
![Output PDF result](viewer/net/images/how-to-convert-and-view-html-files-with-margins/pdf-result.jpg)
