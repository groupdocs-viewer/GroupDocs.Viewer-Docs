---
id: specify-cad-rendering-options
url: viewer/python-net/specify-cad-rendering-options
title: Specify rendering options for CAD files
linkTitle: Specify rendering options
weight: 2
description: "Render CAD files (DWG, DXF, etc.) to HTML, PDF, PNG, or JPEG using GroupDocs.Viewer's options."
keywords: dwg to pdf, cad to pdf, dwg to html, cad to html, dwg to image, split drawing, performance conversion
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/how-to-set-background-color-when-converting-cad-drawings
    - /viewer/python-net/split-drawing-into-tiles
    - /viewer/python-net/adjust-output-image-size
    - /viewer/python-net/how-to-apply-pc3-config-file
---
GroupDocs.Viewer ships with the [CadOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/cadoptions) class that allows you to specify different options for [rendering CAD files](/viewer/python-net/render-cad-documents/). To access these options, use the [CadOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/#properties) property for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/jpgviewoptions)

## Specify the background color

Use the [cad_options.background_color](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/cadoptions/#properties) property to specify the background color for the output file. 

The following code snippet converts a CAD drawing to PDF and sets the background color of PDF pages to light yellow:

{{< tabs "example1">}}
{{< tab "Python">}}
```python
with gv.Viewer("HousePlan.dwg") as viewer:
    viewOptions = gvo.PdfViewOptions("output.pdf")
    viewOptions.cad_options.background_color = drawing.Argb32Color.TRANSPARENT # RGB color for green 
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Specify the background color for the output PDF file](/viewer/net/images/rendering-basics/render-cad-documents/set-background-color.png)

## Configure the output image size

<a name="ctors"></a>When rendering a CAD drawing, GroupDocs.Viewer creates an image with the largest dimension (width or height) set to 2000 pixels. The other dimension is calculated based on the aspect ratio of the original drawing. You can use the following methods to change the width and height of the output file:

* [CadOptions.for_rendering_by_width](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/cadoptions/#methods)---Specifies the output image width in pixels. The image height is calculated based on the aspect ratio of the original CAD drawing.
* [CadOptions.for_rendering_by_height](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/cadoptions/#methods)---Specifies the output image height in pixels. The image width is calculated based on the aspect ratio of the original CAD drawing.
* [CadOptions.for_rendering_by_width_and_height](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/cadoptions/#methods)---Specifies the output image width and height in pixels. 
* [CadOptions.for_rendering_by_scale_factor](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/cadoptions/#methods)---Specifies a scale factor to apply to the output image. Values between 0 and 1 decrease the image size, and values greater than 1 increase the image.

The following example converts a CAD drawing to PNG format and reduces the width and height of the output image by 50%:

{{< tabs "example2">}}
{{< tab "Python">}}
```python
with gv.Viewer("HousePlan.dwg") as viewer:
    # Convert the diagram to PNG.
    png_options = gvo.PngViewOptions("output.png")
    # Specify a scale factor.
    png_options.cad_options = gvo.CadOptions.for_rendering_by_scale_factor(0.5)      
    viewer.view(png_options)
```
{{< /tab >}}
{{< /tabs >}}

When you render all layouts/sheets contained in a CAD file (the [CadOptions.render_layouts](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/cadoptions/#properties) property is `True`), each layout/sheet is rendered as a separate page/image and has its own size. In this case, when you specify only the [width](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/cadoptions/#methods) or [height](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/cadoptions/#methods) value, the other side is scaled proportionally to maintain the aspect ratio of each layout/sheet. When you set both [width and height](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/cadoptions/#methods), all generated images have the same size and may look distorted. To avoid this, use the [CadOptions.layout_name](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/cadoptions/#properties) property to render each layout/sheet separately and set its size.

### Apply the PC3 file settings

AutoCAD allows you to configure plotter settings and save them as a PC3 file (Plotter Configuration Version 3) for later use. With GroupDocs.Viewer, you can apply width and height values from a PC3 file to the output file when you convert your CAD drawing to HTML, PDF, or image format. Use the [CadOptions.pc_3_file](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/cadoptions/#properties) property for a target view to specify a path to the PC3 file with required settings. The default location for PC3 files is "*C:\Users\\[Username]\\AppData\Roaming\Autodesk\AutoCAD [Version]\\[Version Code]\\[Language]\Plotters*".

{{< tabs "example3">}}
{{< tab "Python">}}
```python
with gv.Viewer("sample.dwg") as viewer:
    # Convert the diagram to PDF.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    # Specify a path to the PC3 file.
    viewOptions.cad_options.pc_3_file = "small_page.pc3"
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

## Split a drawing into tiles

With GroupDocs.Viewer, you can split a CAD drawing (in DWG or DWT format) into parts (_tiles_) and render each part separately. Tiled rendering allows you to reduce memory usage when you convert large drawings to HTML, PDF, or image format. When tiled rendering is enabled, GroupDocs.Viewer renders only the model space layout (_Model_) and ignores the [CadOptions.render_layouts](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/cadoptions/#properties) and [CadOptions.layout_name](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/cadoptions/#properties) property values.

![Split a CAD drawing into tiles](/viewer/net/images/rendering-basics/render-cad-documents/split-drawing-into-tiles.png)

To create an individual tile, instantiate a [Tile](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/tile) object. Specify the x- and y-coordinates of the tile's lower-left corner and the tile width and height (in pixels). The image below illustrates a coordinate system used to define the tile position. The origin (0,0) is located in the lower-left corner of the drawing. The positive x-axis extends horizontally to the right, and the positive y-axis is oriented vertically from bottom to top.

![Tile coordinates](/viewer/net/images/rendering-basics/render-cad-documents/tile-coordinates.png)

After you create all tiles, add them to the [ViewOptions.CadOptions.tiles](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/cadoptions/#properties) list and call the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert these tiles to a desired format. Each tile will be rendered as a separate page/image.

The following example demonstrates how to split a CAD drawing into four tiles (2x2) of equal size:

{{< tabs "example4">}}
{{< tab "Python">}}
```python
viewInfoOptions = gvo.ViewInfoOptions.for_html_view()
viewInfo = viewer.get_view_info(viewInfoOptions)

# Get the width and height of the CAD drawing.
width = view_info.pages[0].width
height = view_info.pages[0].height

# Specify the number of rows and columns to split the drawing into.
columns = 2
rows = 2

# Calculate the width and height of each tile.
tile_width = width / columns
tile_height = height / rows
point_x = 0
point_y = 0

# Split the drawing into tiles and convert them to HTML.
# {0} is replaced with the tile number in the output file name.
with gv.Viewer("HousePlan.dwg") as viewer:
    viewOptions = gvo.HtmlViewOptions.for_embedded_resources("page_{0}.html")
    for i in range(0, columns):
        for j in range(0, rows):
            tile = gvo.Tile(point_x + tile_width * i, point_y + tile_height * j, tile_width, tile_height)
            viewOptions.cad_options.tiles.append(tile)
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

In the example above the GroupDocs.Viewer will generate four HTML files named "page_1.html", "page_2.html", "page_3.html", and "page_4.html", where each of these HTML file contains a single tile in a form of SVG vector image. The [`HtmlViewOptions.for_external_resources()`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/) static method (with all its overloads) can also be used — in such case the SVG files will not be embedded inside the output HTML files, but will be saved separately, while HTML only references them through the `A` HTML element.

Starting from this 24.9 version the CAD tiled rendering is also supported for the PDF — in that case the GroupDocs.Viewer generates a single PDF file, where one its page represents one tile. So, if in the example above we replace the [`HtmlViewOptions`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/) onto the [`PdfViewOptions`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions/), then the GroupDocs.Viewer will produce one PDF file with four pages inside it.

## Choose rendering speed  instead of quality

By default the GroupDocs.Viewer converts and renders all documents within CAD format family with the max possible quality. In case when the input CAD file (DWG, for example) is very complex, it may lead to quite significant processing time. Also, the size of the generated output HTML or image (vector or raster) also may be too heavy.

Starting from this version 24.9 the GroupDocs.Viewer introduces a new public property within the [`CadOptions`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/cadoptions) class — the `enable_performance_conversion_mode` boolean flag. By default it is set to `False` - the GroupDocs.Viewer behaves as in previous versions, preserving the maximum quality. But when setting its value to `True`, then the performance-oriented conversion mode is enabled, which leads to significantly lesser conversion time as well as lesser byte size of the output document.

Enabling this mode is pretty simple — just create an instance of the [`CadOptions`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/cadoptions) class by using [any of the static # described above](#ctors), and then set the value for the `enable_performance_conversion_mode` property. Example is below:


{{< tabs "example5">}}
{{< tab "Python">}}
```python
with gv.Viewer("input.dwg") as viewer:
    viewOptions = gvo.HtmlViewOptions.for_embedded_resources("Output-Page#{0}.html")
    viewOptions.cad_options = gvo.CadOptions.for_rendering_by_width(1000)
    viewOptions.cad_options.enable_performance_conversion_mode = True

    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

If taking an ordinary DWG file as a sample, the comparison between "quality" and "performance" modes are the next:

| Conversion mode | Output file size, MiB | Processing time, sec |
| --- | --- | --- | --- | --- |
| Quality-oriented (default) | 46.8 | 7.87 |
| Performance-oriented (new) | 5.04 | 4.47 |

Screenshot below illustrates the visual differences between these modes, default quality-oriented mode is on the left side, and the new performance-oriented mode is on the right side:

![DWG quality vs. performance](/viewer/net/images/rendering-basics/render-cad-documents/dwg_comparison_quality_vs_performance.png)
