---
id:  how-to-render-visio-files-figures
url: viewer/net/how-to-render-visio-files-figures
title: Render figures
weight: 2
description: "In this article we show how render Visio files figures while converting and rendering Visio files with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
When you are converting Visio files, you can choose what you want to render: Visio scheme pages or figures of Visio scheme.
If Visio scheme does not contain pages - only figures will be rendered.

![Fugures in VSS scheme](viewer/net/images/how-to-render-visio-files-figures/figures-in-visio.jpg)

## How to render Visio figures

To force render Visio figures please set RenderFiguresOnly property to true in VisioRenderingOptions.
You can set width of each figure, height will be calculated by proportions automatically.

### Rendering Visio figures to PNG

To render Visio figures to PNG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.vssx"))
{
       PngViewOptions options = new PngViewOptions("result_page_{0}.png");
       options.VisioRenderingOptions.RenderFiguresOnly = true;
       options.VisioRenderingOptions.FigureWidth = 250;

       viewer.View(options);
}
```

\
The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![Output PNG result](viewer/net/images/how-to-render-visio-files-figures/png-result.jpg)

### Rendering Visio figures when converting to JPG

To render Visio figures to JPG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.vssx"))
{
       JpgViewOptions options = new JpgViewOptions("result_page_{0}.jpg");
       options.VisioRenderingOptions.RenderFiguresOnly = true;
       options.VisioRenderingOptions.FigureWidth = 250;

       viewer.View(options);
}
```

\
The following screenshot shows the output JPEG file opened in a Windows Photo Viewer application.\
\
![Output JPEG result](viewer/net/images/how-to-render-visio-files-figures/jpg-result.jpg)

### Rendering Visio figures when converting to PDF

To set margins values when converting HTML files to PDF with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.vssx"))
{
       PdfViewOptions options = new PdfViewOptions("result.pdf");
       options.VisioRenderingOptions.RenderFiguresOnly = true;
       options.VisioRenderingOptions.FigureWidth = 250;

       viewer.View(options);
}
```

\
The following screenshot shows the output PDF file opened in an Acrobat Reader.\
\
![Output PDF result](viewer/net/images/how-to-render-visio-files-figures/pdf-result.jpg)

### Rendering Visio figures when converting to HTML

To set margins values when converting HTML files to PDF with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.vssx"))
{
       PdfViewOptions options = new PdfViewOptions("result_page_{0}.html");
       options.VisioRenderingOptions.RenderFiguresOnly = true;
       options.VisioRenderingOptions.FigureWidth = 250;

       viewer.View(options);
}
```

\
The following screenshot shows the output HTML file opened in browser.\
\
![Output HTML result](viewer/net/images/how-to-render-visio-files-figures/html-result.jpg)
