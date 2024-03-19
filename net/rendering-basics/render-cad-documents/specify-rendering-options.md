---
id: specify-cad-rendering-options
url: viewer/net/specify-cad-rendering-options
title: Specify rendering options for CAD files
linkTitle: Specify rendering options
weight: 2
description: "This topic describes how to use the GroupDocs.Viewer .NET API (C#) to specify various options for rendering CAD files to HTML, PDF, PNG, and JPEG."
keywords: set background color, change image size, split drawing into tiles, dwg to pdf, cad to pdf, dwg to html, cad to html, dwg to image
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
aliases:
    - /viewer/net/how-to-set-background-color-when-converting-cad-drawings
    - /viewer/net/split-drawing-into-tiles
    - /viewer/net/adjust-output-image-size
    - /viewer/net/how-to-apply-pc3-config-file
---
GroupDocs.Viewer ships with the [CadOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/cadoptions) class that allows you to specify different options for [rendering CAD files](/viewer/net/render-cad-documents/). To access these options, use the [CadOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/cadoptions) property for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)

## Specify the background color

Use the [CadOptions.BackgroundColor](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/cadoptions/properties/backgroundcolor) property to specify the background color for the output file. 

The following code snippet converts a CAD drawing to PDF and sets the background color of PDF pages to light yellow:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("HousePlan.dwg"))
{
   // Convert the document to PDF.
   var viewOptions = new PdfViewOptions("output.pdf");
   // Specify the background color.
   viewOptions.CadOptions.BackgroundColor = Color.LightYellow;
   viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Specify the background color for the output PDF file](/viewer/net/images/rendering-basics/render-cad-documents/set-background-color.png)

## Configure the output image size

<a name="ctors"></a>When rendering a CAD drawing, GroupDocs.Viewer creates an image with the largest dimension (width or height) set to 2000 pixels. The other dimension is calculated based on the aspect ratio of the original drawing. You can use the following methods to change the width and height of the output file:

* [CadOptions.ForRenderingByWidth](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/methods/forrenderingbywidth)---Specifies the output image width in pixels. The image height is calculated based on the aspect ratio of the original CAD drawing.
* [CadOptions.ForRenderingByHeight](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/methods/forrenderingbyheight)---Specifies the output image height in pixels. The image width is calculated based on the aspect ratio of the original CAD drawing.
* [CadOptions.ForRenderingByWidthAndHeigh](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/methods/forrenderingbywidthandheight)---Specifies the output image width and height in pixels. 
* [CadOptions.ForRenderingByScaleFactor](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/methods/forrenderingbyscalefactor)---Specifies a scale factor to apply to the output image. Values between 0 and 1 decrease the image size, and values greater than 1 increase the image.

The following example converts a CAD drawing to PNG format and reduces the width and height of the output image by 50%:

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("HousePlan.dwg"))
{
    // Convert the diagram to PNG.
    var viewOptions = new PngViewOptions("output.png");
    // Specify a scale factor.
    viewOptions.CadOptions = CadOptions.ForRenderingByScaleFactor(0.5f);
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

When you render all layouts/sheets contained in a CAD file (the [CadOptions.RenderLayouts](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/properties/renderlayouts) property is `true`), each layout/sheet is rendered as a separate page/image and has its own size. In this case, when you specify only the [width](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/methods/forrenderingbywidth) or [height](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/methods/forrenderingbyheight) value, the other side is scaled proportionally to maintain the aspect ratio of each layout/sheet. When you set both [width and height](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/methods/forrenderingbywidthandheight), all generated images have the same size and may look distorted. To avoid this, use the [CadOptions.LayoutName](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/cadoptions/properties/layoutname) property to render each layout/sheet separately and set its size.

### Apply the PC3 file settings

AutoCAD allows you to configure plotter settings and save them as a PC3 file (Plotter Configuration Version 3) for later use. With GroupDocs.Viewer, you can apply width and height values from a PC3 file to the output file when you convert your CAD drawing to HTML, PDF, or image format. Use the [CadOptions.Pc3File](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/cadoptions/properties/pc3file) property for a target view to specify a path to the PC3 file with required settings. The default location for PC3 files is "*C:\Users\\[Username]\\AppData\Roaming\Autodesk\AutoCAD [Version]\\[Version Code]\\[Language]\Plotters*".

{{< tabs "example3">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.dwg"))
{
    // Convert the diagram to PDF.
    var viewOptions = new PdfViewOptions("output.pdf");
    // Specify a path to the PC3 file.
    viewOptions.CadOptions.Pc3File = "small_page.pc3";
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Split a drawing into tiles

With GroupDocs.Viewer, you can split a CAD drawing (in DWG or DWT format) into parts (_tiles_) and render each part separately. Tiled rendering allows you to reduce memory usage when you convert large drawings to HTML, PDF, or image format. When tiled rendering is enabled, GroupDocs.Viewer renders only the model space layout (_Model_) and ignores the [CadOptions.RenderLayouts](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/properties/renderlayouts) and [CadOptions.LayoutName](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/cadoptions/properties/layoutname) property values.

![Split a CAD drawing into tiles](/viewer/net/images/rendering-basics/render-cad-documents/split-drawing-into-tiles.png)

To create an individual tile, instantiate a [Tile](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/tile) object. Specify the x- and y-coordinates of the tile's lower-left corner and the tile width and height (in pixels). The image below illustrates a coordinate system used to define the tile position. The origin (0,0) is located in the lower-left corner of the drawing. The positive x-axis extends horizontally to the right, and the positive y-axis is oriented vertically from bottom to top.

![Tile coordinates](/viewer/net/images/rendering-basics/render-cad-documents/tile-coordinates.png)

After you create all tiles, add them to the [ViewOptions.CadOptions.Tiles](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/properties/tiles) list and call the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view) method to convert these tiles to a desired format. Each tile will be rendered as a separate page/image.

The following example demonstrates how to split a CAD drawing into four tiles (2x2) of equal size:

{{< tabs "example4">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Results;
// ...

using (var viewer = new Viewer("HousePlan.dwg"))
{
    var viewInfoOptions = ViewInfoOptions.ForHtmlView();
    var viewInfo = viewer.GetViewInfo(viewInfoOptions);

    // Get the width and height of the CAD drawing.
    int width = viewInfo.Pages[0].Width;
    int height = viewInfo.Pages[0].Height;

    // Specify the number of rows and columns to split the drawing into.
    int columns = 2;
    int rows = 2;

    // Calculate the width and height of each tile.
    int tileWidth = width / columns;
    int tileHeight = height / rows;
    int pointX = 0;
    int pointY = 0;

    // Split the drawing into tiles and convert them to HTML.
    // {0} is replaced with the tile number in the output file name.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    for (int i = 0; i < columns; i++)
        for (int j = 0; j < rows; j++)
        {
            Tile tile = new Tile(pointX + tileWidth * i, pointY + tileHeight * j,
                tileWidth, tileHeight);
            viewOptions.CadOptions.Tiles.Add(tile);
        }
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

In the example above the GroupDocs.Viewer will generate four HTML files named "page_1.html", "page_2.html", "page_3.html", and "page_4.html", where each of these HTML file contains a single tile in a form of SVG vector image. The [`HtmlViewOptions.ForExternalResources()`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/forexternalresources/#forexternalresources) static method (with all its overloads) can also be used — in such case the SVG files will not be embedded inside the output HTML files, but will be saved separately, while HTML only references them through the `A` HTML element.

Prior the version 24.3 of the GroupDocs.Viewer the tiled rendering of CAD files was available only for the HTML rendering. Starting from the version 24.3 the CAD tiled rendering is also supported for the PDF — in that case the GroupDocs.Viewer generates a single PDF file, where one its page represents one tile. So, if in the example above we replace the [`HtmlViewOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/) onto the [`PdfViewOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions/), then the GroupDocs.Viewer will produce one PDF file with four pages inside it.

## Choose rendering speed  instead of quality

By default the GroupDocs.Viewer converts and renders all documents within CAD format family with the max possible quality. In case when the input CAD file (DWG, for example) is very complex, it may lead to quite significant processing time. Also, the size of the generated output HTML or image (vector or raster) also may be too heavy.

Starting from the version 24.2 the GroupDocs.Viewer introduces a new public property within the [`CadOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/cadoptions) class — the `EnablePerformanceConversionMode` boolean flag. By default it is set to `false` - the GroupDocs.Viewer behaves as in previous versions, preserving the maximum quality. But when setting its value to `true`, then the performance-oriented conversion mode is enabled, which leads to significantly lesser conversion time as well as lesser byte size of the output document.

Enabling this mode is pretty simple — just create an instance of the [`CadOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/cadoptions) class by using [any of the static methods described above](#ctors), and then set the value for the `EnablePerformanceConversionMode` property. Example is below:

```csharp
using (Viewer viewer = new Viewer("input.dwg"))
{
   HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources("Output-Page#{0}.html");                    
   viewOptions.CadOptions = CadOptions.ForRenderingByWidth(1000);
   viewOptions.CadOptions.EnablePerformanceConversionMode = true;

   viewer.View(viewOptions);
}
```

If taking an ordinary DWG file as a sample, the comparison between "quality" and "performance" modes are the next:

| Conversion mode | Output file size, MiB | Processing time, sec |
| --- | --- | --- | --- | --- |
| Quality-oriented (default) | 46.8 | 7.87 |
| Performance-oriented (new) | 5.04 | 4.47 |

Screenshot below illustrates the visual differences between these modes, default quality-oriented mode is on the left side, and the new performance-oriented mode is on the right side:

![DWG quality vs. performance](/viewer/net/images/rendering-basics/render-cad-documents/dwg_comparison_quality_vs_performance.png)
