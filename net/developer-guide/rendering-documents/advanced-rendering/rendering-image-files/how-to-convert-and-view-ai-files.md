---
id: how-to-convert-and-view-ai-files
url: viewer/net/how-to-convert-and-view-ai-files
title: Render AI files
weight: 9
description: "This article explains render Adobe Illustrator (AI) files with GroupDocs.Viewer within your .NET applications."
keywords: ai adobe illustrator view convert
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
## Introduction

[AI](https://fileinfo.com/extension/ai#adobe_illustrator_file) is an Adobe vector graphics format. Typically used for logos and print media, illustrations.

![AI file example](viewer/net/images/how-to-convert-and-view-ai-files/ai-file-example.jpg)

## How to view AI files

The AI files can be opened with Adobe Illustrator and Corel Draw.

In case you need to view an AI file in a browser or a standard image or PDF viewer application, you can convert it to HTML, JPEG, PNG  PDF format with GroupDocs.Viewer for .NET.

### Convert AI to HTML

To convert AI files to HTML with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.ai"))
{
         HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("ai_result.html");

         viewer.View(options); 
}
```

The following screenshot shows the output HTML file opened in a browser.

![AI file converted in HTML](viewer/net/images/how-to-convert-and-view-ai-files/ai-file-in-html.jpg)

### Convert AI to JPG

To convert AI files to JPG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.ai"))
{
       JpgViewOptions options = new JpgViewOptions("ai_result.jpg");

       viewer.View(options); 
}
```

The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![AI file converted in JPG](viewer/net/images/how-to-convert-and-view-ai-files/ai-file-in-jpg.jpg)

### Convert AI to PNG

To convert AI/HPG files to PNG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.ai"))
{
       PngViewOptions options = new PngViewOptions("ai_result.png");

       viewer.View(options);
}
```

The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![AI file converted in PNG](viewer/net/images/how-to-convert-and-view-ai-files/ai-file-in-png.jpg)

### Convert AI to PDF

To convert AI files to PDF with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.ai"))
{
       PdfViewOptions options = new PdfViewOptions("ai_result.pdf");

       viewer.View(options);
}
```

The following screenshot shows the output PDF file opened in a browser.

![AI file converted in PDF](viewer/net/images/how-to-convert-and-view-ai-files/ai-file-in-pdf.jpg)

