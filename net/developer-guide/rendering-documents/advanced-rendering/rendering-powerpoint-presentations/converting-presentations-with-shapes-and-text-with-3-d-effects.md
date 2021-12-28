---
id: converting-presentations-with-shapes-and-text-with-3-d-effects
url: viewer/net/converting-presentations-with-shapes-and-text-with-3-d-effects
title: Rendering shapes and text with 3-D effects
weight: 4
description: "In this article we show how GroupDocs.Viewer for .NET converts presentations with shapes and text that have 3-D effects."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Presentation files such as PPTX may contain text and shapes with 3-D effects applied to them. The following screenshot shows the presentation in PowerPoint and text with an applied 3-D effect.

![Presentation with 3-D text](viewer/net/images/converting-presentations-with-shapes-and-text-with-3-d-effects/presentation-with-3-d-text.png)

## Converting presentations with shapes and text with 3-D effects

Starting from v20.10 GroupDocs.Viewer for .NET supports rendering text and shapes with 3-D effects. Before v20.10 3-D text and shapes rendered as flat elements. Let's take [this sample presentation](viewer/net/sample-files/converting-presentations-with-shapes-and-text-with-3-d-effects/3-d-text.pptx) and convert it to HTML/PNG/JPEG and PDF.

### Convert to HTML

To convert presentations with 3-D effects to HTML with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("3-d-text.pptx"))
{
       HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("output.html");
       viewer.View(options);
}
```

The following screenshot shows the output HTML file opened in a browser.

![3-d-text.pptx to PNG](viewer/net/images/converting-presentations-with-shapes-and-text-with-3-d-effects/3-d-text-html.png)

### Converting to JPEG

To convert presentations with 3-D effects to JPEG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("3-d-text.pptx"))
{
       JpgViewOptions options = new JpgViewOptions("output.jpg");
       viewer.View(options);
}
```

The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![3-d-text.pptx to JPEG](viewer/net/images/converting-presentations-with-shapes-and-text-with-3-d-effects/3-d-text-jpeg.png)

### Converting to PNG

To convert presentations with 3-D effects to PNG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("3-d-text.pptx"))
{
       PngViewOptions options = new PngViewOptions("output.png");
       viewer.View(options);
}
```

The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![3-d-text.pptx to PNG](viewer/net/images/converting-presentations-with-shapes-and-text-with-3-d-effects/3-d-text-png.png)

### Converting to PDF

To convert presentations with 3-D effects to PDF with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("3-d-text.pptx"))
{
       PdfViewOptions options = new PdfViewOptions("output.pdf");
       viewer.View(options);
}
```

The following screenshot shows the output PDF file opened in an Acrobat Reader.

![3-d-text.pptx to PDF](viewer/net/images/converting-presentations-with-shapes-and-text-with-3-d-effects/3-d-text-pdf.png)
