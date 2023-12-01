---
id: specify-cad-rendering-options
url: viewer/python-net/specify-cad-rendering-options
title: Specify rendering options for CAD files
linkTitle: Specify rendering options
weight: 2
description: "This topic describes how to use the GroupDocs.Viewer Python API  to specify various options for rendering CAD files to HTML, PDF, PNG, and JPEG."
keywords: set background color, change image size, split drawing into tiles, dwg to pdf, cad to pdf, dwg to html, cad to html, dwg to image
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/how-to-set-background-color-when-converting-cad-drawings
    - /viewer/python-net/split-drawing-into-tiles
    - /viewer/python-net/adjust-output-image-size
    - /viewer/python-net/how-to-apply-pc3-config-file
---
GroupDocs.Viewer ships with the [CadOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/cadoptions) class that allows you to specify different options for [rendering CAD files](/viewer/python-net/render-cad-documents/). To access these options, use the [CadOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/properties/cadoptions) property for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)

## Specify the background color

Use the [CadOptions.BackgroundColor](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/cadoptions/properties/backgroundcolor) property to specify the background color for the output file. 

The following code snippet converts a CAD drawing to PDF and sets the background color of PDF pages to light yellow:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import aspose.pydrawing as drawing
import test_files
// ...
    with gv.Viewer(test_files.sample_dwg) as viewer:
        # Convert the document to PDF.
        viewOptions = gvo.PdfViewOptions("output.pdf")
        # Specify the background color.
        viewOptions.cad_options.background_color = drawing.Color(0, 128, 0)
        viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Specify the background color for the output PDF file](/viewer/python-net/images/rendering-basics/render-cad-documents/set-background-color.png)

## Configure the output image size

When rendering a CAD drawing, GroupDocs.Viewer creates an image with the largest dimension (width or height) set to 2000 pixels. The other dimension is calculated based on the aspect ratio of the original drawing. You can use the following methods to change the width and height of the output file:

* [CadOptions.ForRenderingByWidth](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/methods/forrenderingbywidth)---Specifies the output image width in pixels. The image height is calculated based on the aspect ratio of the original CAD drawing.
* [CadOptions.ForRenderingByHeight](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/methods/forrenderingbyheight)---Specifies the output image height in pixels. The image width is calculated based on the aspect ratio of the original CAD drawing.
* [CadOptions.ForRenderingByWidthAndHeigh](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/methods/forrenderingbywidthandheight)---Specifies the output image width and height in pixels. 
* [CadOptions.ForRenderingByScaleFactor](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/methods/forrenderingbyscalefactor)---Specifies a scale factor to apply to the output image. Values between 0 and 1 decrease the image size, and values greater than 1 increase the image.

The following example converts a CAD drawing to PNG format and reduces the width and height of the output image by 50%:

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import aspose.pydrawing as drawing
import test_files
// ...
    with gv.Viewer(test_files.sample_dwg) as viewer:
        # Convert the diagram to PNG.
        viewOptions = gvo.PngViewOptions("output.pdf")
        # Specify a scale factor.
        viewOptions.cad_options = gvo.CadOptions.for_rendering_by_scale_factor(0.5)
        viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

When you render all layouts/sheets contained in a CAD file (the [CadOptions.RenderLayouts](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/properties/renderlayouts) property is `true`), each layout/sheet is rendered as a separate page/image and has its own size. In this case, when you specify only the [width](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/methods/forrenderingbywidth) or [height](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/methods/forrenderingbyheight) value, the other side is scaled proportionally to maintain the aspect ratio of each layout/sheet. When you set both [width and height](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/methods/forrenderingbywidthandheight), all generated images have the same size and may look distorted. To avoid this, use the [CadOptions.LayoutName](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/cadoptions/properties/layoutname) property to render each layout/sheet separately and set its size.

### Apply the PC3 file settings

AutoCAD allows you to configure plotter settings and save them as a PC3 file (Plotter Configuration Version 3) for later use. With GroupDocs.Viewer, you can apply width and height values from a PC3 file to the output file when you convert your CAD drawing to HTML, PDF, or image format. Use the [CadOptions.Pc3File](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/cadoptions/properties/pc3file) property for a target view to specify a path to the PC3 file with required settings. The default location for PC3 files is "*C:\Users\\[Username]\\AppData\Roaming\Autodesk\AutoCAD [Version]\\[Version Code]\\[Language]\Plotters*".

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
// ...
    with gv.Viewer(test_files.sample_dwg) as viewer:
        # Convert the diagram to PDF.
        viewOptions = gvo.PdfViewOptions("output.pdf")
        # Specify a path to the PC3 file.
        viewOptions.cad_options.pc_3_file = "small_page.pc3"
        viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

## Split a drawing into tiles

With GroupDocs.Viewer, you can split a CAD drawing (in DWG or DWT format) into parts (_tiles_) and render each part separately. Tiled rendering allows you to reduce memory usage when you convert large drawings to HTML, PDF, or image format. When tiled rendering is enabled, GroupDocs.Viewer renders only the model space layout (_Model_) and ignores the [CadOptions.RenderLayouts](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/properties/renderlayouts) and [CadOptions.LayoutName](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/cadoptions/properties/layoutname) property values.

![Split a CAD drawing into tiles](/viewer/python-net/images/rendering-basics/render-cad-documents/split-drawing-into-tiles.png)

To create an individual tile, instantiate a [Tile](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/tile) object. Specify the x- and y-coordinates of the tile's lower-left corner and the tile width and height (in pixels). The image below illustrates a coordinate system used to define the tile position. The origin (0,0) is located in the lower-left corner of the drawing. The positive x-axis extends horizontally to the right, and the positive y-axis is oriented vertically from bottom to top.

![Tile coordinates](/viewer/python-net/images/rendering-basics/render-cad-documents/tile-coordinates.png)

After you create all tiles, add them to the [ViewOptions.CadOptions.Tiles](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/properties/tiles) list and call the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view) method to convert these tiles to a desired format. Each tile will be rendered as a separate page/image.

The following example demonstrates how to split a CAD drawing into four tiles (2x2) of equal size:

{{< tabs "example4">}}
{{< tab "Python" >}}
```python

import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    with gv.Viewer(test_files.sample_dwg) as viewer:
        # Specify view information options for HTML view
        view_info_options = gvo.ViewInfoOptions.for_html_view()
        view_info = viewer.get_view_info(view_info_options)

        # Get the width and height of the CAD drawing
        width = view_info.pages[0].width
        height = view_info.pages[0].height

        # Specify the number of rows and columns to split the drawing into
        columns = 2
        rows = 2

        # Calculate the width and height of each tile
        tile_width = width // columns
        tile_height = height // rows
        point_x = 0
        point_y = 0

        # Split the drawing into tiles and convert them to HTML
        # {0} is replaced with the tile number in the output file name
        view_options = gvo.HtmlViewOptions.for_embedded_resources("page_{0}.html")
        for i in range(columns):
            for j in range(rows):
                tile = gvo.Tile(point_x + tile_width * i, point_y + tile_height * j, tile_width, tile_height)
                view_options.cad_options.tiles.append(tile)

        # View the document
        viewer.view(view_options)
```
{{< /tab >}}
{{< /tabs >}}
