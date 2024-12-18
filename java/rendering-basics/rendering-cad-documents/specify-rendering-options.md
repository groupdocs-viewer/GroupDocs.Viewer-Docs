---
id: specify-cad-rendering-options
url: viewer/java/specify-cad-rendering-options
title: Specify rendering options for CAD files
linkTitle: Specify rendering options
weight: 2
description: "This topic describes how to use the GroupDocs.Viewer Java API to specify various options for rendering CAD files to HTML, PDF, PNG, and JPEG."
keywords: set background color, change image size, split drawing into tiles, dwg to pdf, cad to pdf, dwg to html, cad to html, dwg to image
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
aliases:
    - /viewer/java/how-to-set-background-color-when-converting-cad-drawings
    - /viewer/java/split-drawing-into-tiles
    - /viewer/java/adjust-output-image-size
    - /viewer/java/how-to-apply-pc3-config-file
---
GroupDocs.Viewer ships with the [CadOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions) class that allows you to specify different options for [rendering CAD files](/viewer/java/render-cad-documents/). To access these options, use the [setCadOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/#setCadOptions-com.groupdocs.viewer.options.CadOptions-) methods for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions)

## Specify the background color

Use the [CadOptions.setBackgroundColor](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/#setBackgroundColor-java.awt.Color-) method to specify the background color for the output file. 

The following code snippet converts a CAD drawing to PDF and sets the background color of PDF pages to light yellow:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
import com.groupdocs.viewer.options.CadOptions;
// ...

try (Viewer viewer = new Viewer("HousePlan.dwg")) {
    // Convert the document to PDF.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    // Specify the background color.
    viewOptions.getCadOptions().setBackgroundColor(Color.YELLOW);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Specify the background color for the output PDF file](/viewer/java/images/rendering-basics/render-cad-documents/set-background-color.png)

## Configure the output image size

When rendering a CAD drawing, GroupDocs.Viewer creates an image with the largest dimension (width or height) set to 2000 pixels. The other dimension is calculated based on the aspect ratio of the original drawing. You can use the following methods to change the width and height of the output file:

* [CadOptions.forRenderingByWidth](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/#forRenderingByWidth-int-)---Specifies the output image width in pixels. The image height is calculated based on the aspect ratio of the original CAD drawing.
* [CadOptions.forRenderingByHeight](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/#forRenderingByHeight-int-)---Specifies the output image height in pixels. The image width is calculated based on the aspect ratio of the original CAD drawing.
* [CadOptions.forRenderingByWidthAndHeight](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/#forRenderingByWidthAndHeight-int-int-)---Specifies the output image width and height in pixels. 
* [CadOptions.forRenderingByScaleFactor](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/#forRenderingByScaleFactor-float-)---Specifies a scale factor to apply to the output image. Values between 0 and 1 decrease the image size, and values greater than 1 increase the image.

The following example converts a CAD drawing to PNG format and reduces the width and height of the output image by 50%:

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PngViewOptions;
import com.groupdocs.viewer.options.CadOptions;
// ...

try (Viewer viewer = new Viewer("HousePlan.dwg")) {
    // Create a PNG image for the drawing.
    PngViewOptions viewOptions = new PngViewOptions("output.png");
    // Specify a scale factor.
    viewOptions.setCadOptions(CadOptions.forRenderingByScaleFactor(0.5f));
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

When you render all layouts/sheets contained in a CAD file (pass `true` to the [CadOptions.setRenderLayouts](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/#setRenderLayouts-boolean-) method), each layout/sheet is rendered as a separate page/image and has its own size. In this case, when you specify only the [width](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/#forRenderingByWidth-int-) or [height](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/#forRenderingByHeight-int-) value, the other side is scaled proportionally to maintain the aspect ratio of each layout/sheet. When you set both [width and height](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/#forRenderingByWidthAndHeight-int-int-), all generated images have the same size and may look distorted. To avoid this, use the [CadOptions.setLayoutName](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/#setLayoutName-java.lang.String-) method to render each layout/sheet separately and set its size.

### Apply the PC3 file settings

AutoCAD allows you to configure plotter settings and save them as a PC3 file (Plotter Configuration Version 3) for later use. With GroupDocs.Viewer, you can apply width and height values from a PC3 file to the output file when you convert your CAD drawing to HTML, PDF, or image format. Use the [CadOptions.setPc3File](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/#setPc3File-java.lang.String-) method for a target view to specify a path to the PC3 file with required settings. The default location for PC3 files is "*C:\Users\\[Username]\\AppData\Roaming\Autodesk\AutoCAD [Version]\\[Version Code]\\[Language]\Plotters*".

{{< tabs "example3">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
import com.groupdocs.viewer.options.CadOptions;
// ...

try (Viewer viewer = new Viewer("sample.dwg")) {
    // Convert the diagram to PDF.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    // Specify a path to the PC3 file.
    viewOptions.getCadOptions().setPc3File("small_page.pc3");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Split a drawing into tiles

With GroupDocs.Viewer, you can split a CAD drawing (in DWG or DWT format) into parts (_tiles_) and render each part separately. Tiled rendering allows you to reduce memory usage when you convert large drawings to HTML, PDF, or image format. When tiled rendering is enabled, GroupDocs.Viewer renders only the model space layout (_Model_) and ignores the [CadOptions.setRenderLayouts(...)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/#setRenderLayouts-boolean-) and [CadOptions.setLayoutName(...)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/#setLayoutName-java.lang.String-) property values.

![Split a CAD drawing into tiles](/viewer/java/images/rendering-basics/render-cad-documents/split-drawing-into-tiles.png)

To create an individual tile, instantiate a [Tile](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/tile/) object. Specify the x- and y-coordinates of the tile's lower-left corner and the tile width and height (in pixels). The image below illustrates a coordinate system used to define the tile position. The origin (0,0) is located in the lower-left corner of the drawing. The positive x-axis extends horizontally to the right, and the positive y-axis is oriented vertically from bottom to top.

![Tile coordinates](/viewer/java/images/rendering-basics/render-cad-documents/tile-coordinates.png)

After you create all tiles, add them using the [ViewOptions.getCadOptions().setTiles(...)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/#setTiles-java.util.List-com.groupdocs.viewer.options.Tile--) method and call the [viewer.view(...)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#view-com.groupdocs.viewer.options.ViewOptions-) method to convert these tiles to a desired format. Each tile will be rendered as a separate page/image.

The following example demonstrates how to split a CAD drawing into four tiles (2x2) of equal size:

{{< tabs "example4">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
import com.groupdocs.viewer.options.Tile;
import com.groupdocs.viewer.options.ViewInfoOptions;
import com.groupdocs.viewer.results.ViewInfo;
// ...

ViewInfoOptions viewInfoOptions = ViewInfoOptions.forHtmlView();

try (Viewer viewer = new Viewer("HousePlan.dwg")) {
    ViewInfo viewInfo = viewer.getViewInfo(viewInfoOptions);

    // Get the width and height of the CAD drawing.
    int width = viewInfo.getPages().get(0).getWidth();
    int height = viewInfo.getPages().get(0).getHeight();

    // Calculate the width and height of each tile.
    int tileWidth = width / 2;
    int tileHeight = height / 2;

    int pointX = 0;
    int pointY = 0;

    // Split the drawing into tiles and convert them to HTML.
    // {0} is replaced with the tile number in the output file name.
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("page_{0}.html");
            
    Tile tile = new Tile(pointX, pointY, tileWidth, tileHeight);
    viewOptions.getCadOptions().getTiles().add(tile);

    pointX += tileWidth;
    tile = new Tile(pointX, pointY, tileWidth, tileHeight);
    viewOptions.getCadOptions().getTiles().add(tile);

    pointX = 0;
    pointY += tileHeight;
    tile = new Tile(pointX, pointY, tileWidth, tileHeight);
    viewOptions.getCadOptions().getTiles().add(tile);

    pointX += tileWidth;
    tile = new Tile(pointX, pointY, tileWidth, tileHeight);
    viewOptions.getCadOptions().getTiles().add(tile);

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

In the example above the GroupDocs.Viewer will generate four HTML files named "page_1.html", "page_2.html", "page_3.html", and "page_4.html", where each of these HTML file contains a single tile in a form of SVG vector image. The [`HtmlViewOptions.forExternalResources()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#forExternalResources--) static method (with all its overloads) can also be used — in such case the SVG files will not be embedded inside the output HTML files, but will be saved separately, while HTML only references them through the `A` HTML element.

Prior to the version 24.10 of the GroupDocs.Viewer the tiled rendering of CAD files was available only for the HTML rendering. Starting from the version 24.10 the CAD tiled rendering is also supported for the PDF — in that case the GroupDocs.Viewer generates a single PDF file, where one its page represents one tile. So, if in the example above we replace the [`HtmlViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/) onto the [`PdfViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/), then the GroupDocs.Viewer will produce one PDF file with four pages inside it.


## Choose rendering speed instead of quality

By default, the GroupDocs.Viewer converts and renders all documents within CAD format family with the max possible quality. In case when the input CAD file (DWG, for example) is very complex, it may lead to quite significant processing time. Also, the size of the generated output HTML or image (vector or raster) also may be too heavy.

Starting from the version 24.10 the GroupDocs.Viewer introduces a new public property within the [`CadOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/) class — the `setEnablePerformanceConversionMode(...)` boolean flag. By default, it is set to `false` - the GroupDocs.Viewer behaves as in previous versions, preserving the maximum quality. But when setting its value to `true`, then the performance-oriented conversion mode is enabled, which leads to significantly lesser conversion time as well as lesser byte size of the output document.

Enabling this mode is pretty simple — just create an instance of the [`CadOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/cadoptions/) class by using any of the static methods and then set the value for the `setEnablePerformanceConversionMode(...)` property. Example is below:


{{< tabs "example5">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("input.dwg")) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("Output-Page#{0}.html");
    viewOptions.setCadOptions(CadOptions.forRenderingByWidth(1000));
    viewOptions.getCadOptions().setEnablePerformanceConversionMode(true);

    viewer.view(viewOptions);
}
```
{{< /tab >}}

{{< /tabs >}}

If taking an ordinary DWG file as a sample, the comparison between "quality" and "performance" modes are the next:

| Conversion mode | Output file size, MiB | Processing time, sec |
| --- | --- | --- | --- | --- |
| Quality-oriented (default) | 46.8 | 7.87 |
| Performance-oriented (new) | 5.04 | 4.47 |

Screenshot below illustrates the visual differences between these modes, default quality-oriented mode is on the left side, and the new performance-oriented mode is on the right side:

![DWG quality vs. performance](/viewer/java/images/rendering-basics/render-cad-documents/dwg_comparison_quality_vs_performance.png)
