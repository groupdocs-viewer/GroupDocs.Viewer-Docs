---
id: how-to-convert-and-view-obj-files
url: viewer/net/how-to-convert-and-view-obj-files
title: Render OBJ files
weight: 4
description: "This article demonstrates render OBJ files with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Wavefront 3D Object Files (.obj) are 3D format images developed by Wavefront Technologies for the Advanced Visualizer (TAV) software. It contains text descriptions of vertexes, texture vertices and texture mapping (UV-position).

![](viewer/net/images/how-to-convert-and-view-obj-files.png)

## How to convert OBJ files

### Convert OBJ to HTML

To convert OBJ files to HTML with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.obj"))
{
       HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("output.html");
       //options.CadOptions = CadOptions.ForRenderingByScaleFactor(0.7f); // Render image and reduce it by 30%
       //options.CadOptions = CadOptions.ForRenderingByWidthAndHeight(400,400); // Render image and set output size to 400x400
       //options.CadOptions = CadOptions.ForRenderingByWidth(500); // Render image, fix width by 500 px and recalculate height
       //options.CadOptions = CadOptions.ForRenderingByHeight(500); // Render image, fix height by 500 px and recalculate width

       viewer.View(options);
}
```

The following screenshot shows the output HTML file opened in a browser.

![](viewer/net/images/how-to-convert-and-view-obj-files_1.png)

### Convert OBJ to JPG

To convert OBJ files to JPG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.obj"))
{
       JpgViewOptions options = new JpgViewOptions("output.jpg");
       //options.CadOptions = CadOptions.ForRenderingByScaleFactor(0.7f); // Render image and reduce it by 30%
       //options.CadOptions = CadOptions.ForRenderingByWidthAndHeight(400,400); // Render image and set output size to 400x400
       //options.CadOptions = CadOptions.ForRenderingByWidth(500); // Render image, fix width by 500 px and recalculate height
       //options.CadOptions = CadOptions.ForRenderingByHeight(500); // Render image, fix height by 500 px and recalculate width

       viewer.View(options);
}
```

The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![](viewer/net/images/how-to-convert-and-view-obj-files_2.png)

### Convert OBJ to PNG

To convert PLT/HPG files to PNG with GroupDocs.Viewer for .NET use following code: 

```csharp
using (Viewer viewer = new Viewer("sample.obj"))
{
       PngViewOptions options = new PngViewOptions("output.png");
       //options.CadOptions = CadOptions.ForRenderingByScaleFactor(0.7f); // Render image and reduce it by 30%
       //options.CadOptions = CadOptions.ForRenderingByWidthAndHeight(400,400); // Render image and set output size to 400x400
       //options.CadOptions = CadOptions.ForRenderingByWidth(500); // Render image, fix width by 500 px and recalculate height
       //options.CadOptions = CadOptions.ForRenderingByHeight(500); // Render image, fix height by 500 px and recalculate width

       viewer.View(options);
}
```

The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![](viewer/net/images/how-to-convert-and-view-obj-files_3.png)

### Convert OBJ to PDF

To convert OBJ files to PDF with GroupDocs.Viewer for .NET use following code: 

```csharp
using (Viewer viewer = new Viewer("sample.obj"))
{
       PdfViewOptions options = new PdfViewOptions("output.pdf");
       //options.CadOptions = CadOptions.ForRenderingByScaleFactor(0.7f); // Render image and reduce it by 30%
       //options.CadOptions = CadOptions.ForRenderingByWidthAndHeight(400,400); // Render image and set output size to 400x400
       //options.CadOptions = CadOptions.ForRenderingByWidth(500); // Render image, fix width by 500 px and recalculate height
       //options.CadOptions = CadOptions.ForRenderingByHeight(500); // Render image, fix height by 500 px and recalculate width

       viewer.View(options);
}
```

The following screenshot shows the output PDF file opened in an Acrobat Reader.

![](viewer/net/images/how-to-convert-and-view-obj-files_4.png)

