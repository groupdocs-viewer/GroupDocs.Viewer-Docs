---
id: render-cad-drawings-and-models
url: viewer/python-net/render-cad-drawings-and-models
title: Render CAD drawings and models as HTML, PDF, and image files
linkTitle: Render CAD drawings and models
weight: 1
description: "This topic describes how to use the GroupDocs.Viewer Python API to convert CAD files (DWG, DGN, DXF) to HTML, PDF, PNG, and JPEG formats."
keywords: CAD viewer, dwg viewer, convert dwg to pdf, convert dwg to html, convert dwg to jpeg, convert dwg to image
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/how-to-view-cad-documents-using-csharp/
    - /viewer/python-net/view-cad-drawings
    - /viewer/python-net/how-to-convert-and-view-igs-files
    - /viewer/python-net/how-to-convert-and-view-cff2-and-cf2-files
    - /viewer/python-net/how-to-convert-and-view-obj-files
    - /viewer/python-net/how-to-view-plt-files
    - /viewer/python-net/how-to-convert-cad-to-html
    - /viewer/python-net/how-to-get-cad-layers-and-layouts
    - /viewer/python-net/render-all-layouts
    - /viewer/python-net/render-layers
    - /viewer/python-net/how-to-view-dwf-file-layers
---
[GroupDocs.Viewer for Python via .NET](https://products.groupdocs.com/viewer/python-net) allows you to render your CAD drawings and 3D models in HTML, PDF, PNG, and JPEG formats. You do not need to use AutoCAD or other CAD software to load and view CAD files within your Python application (web or desktop).

Create a [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) class instance to get started with the GroupDocs.Viewer API. Pass a CAD drawing you want to view to the class constructor. You can load the drawing from a file or stream. Call one of the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method overloads to convert the drawing to HTML, PDF, or image format.

{{< button style="primary" link="https://products.groupdocs.app/viewer/cad" >}} {{< icon "gdoc_person" >}} View CAD files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Python-via-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported CAD file formats

GroupDocs.Viewer supports the following CAD and 3D file formats:

* [AutoCAD Drawing](https://docs.fileformat.com/cad/dwg/) (.DWG)
* [AutoCAD Drawing Template](https://docs.fileformat.com/cad/dwt) (.DWT)
* [Design Web Format](https://docs.fileformat.com/cad/dwf/) (.DWF)
* [Drawing Exchange Format](https://docs.fileformat.com/cad/dxf) (.DXF)
* [AutoCAD Plotter Document](https://docs.fileformat.com/cad/plt) (.PLT)
* [MicroStation Design File (V7)](https://docs.fileformat.com/cad/dgn) (.DGN)
* [Industry Foundation Classes](https://docs.fileformat.com/cad/ifc) (.IFC)
* [Stereolithography File](https://docs.fileformat.com/cad/stl) (.STL)
* [Wavefront 3D Object File](https://docs.fileformat.com/3d/obj/) (.OBJ)
* [Common File Format](https://docs.fileformat.com/cad/cf2/) (.CF2)
* [IGES (Initial Graphics Exchange Specification) Drawing](https://docs.fileformat.com/cad/igs/) (.IGS)
* [HPGL (Hewlett-Packard Graphics Language) Plot File](https://docs.fileformat.com/cad/hpgl/) (.HPG)

GroupDocs.Viewer can detect the document format automatically based on information in the file header.

## Render CAD drawings as HTML

Create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert a CAD file to HTML. During the conversion, GroupDocs.Viewer creates an [SVG](https://docs.fileformat.com/page-description-language/svg/) image from the CAD drawing and embeds this image in an [HTML](https://docs.fileformat.com/web/html/) document.

The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.ForEmbeddedResources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods) method and specify the output file name.

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer("HousePlan.dwg") as viewer:
    # Create an HTML file for the drawing.
    # Specify the HTML file name.
    viewOptions = gvo.HtmlViewOptions.for_embedded_resources("output.html")
    viewer.view(viewOptions)
```
{{< /tab >}}

{{< /tabs >}}

The following image demonstrates the result:

![Render a CAD file to HTML](/viewer/net/images/rendering-basics/render-cad-documents/render-to-html-embedded-resources.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and style sheets) separately, call the [HtmlViewOptions.ForExternalResources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
with gv.Viewer("HousePlan.dwg") as viewer:
    # Create an HTML file for the drawing.
    # Specify the HTML file name and location of external resources.
    # {0} is replaced with the resource name.
    viewOptions = gvo.HtmlViewOptions.for_external_resources("output.html", "output/resource_{0}", "output/resource_{0}")
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/net/images/rendering-basics/render-cad-documents/render-to-html-external-resources.png)

## Render CAD drawings as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert a CAD file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
with gv.Viewer("HousePlan.dwg") as viewer:
    # Create a PDF file for the drawing.
    # Specify the PDF file name.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a CAD file to PDF](/viewer/net/images/rendering-basics/render-cad-documents/render-cad-to-pdf.png)

## Render CAD drawings as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert a CAD file to PNG. Use the [PngViewOptions.Height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/#properties) and [PngViewOptions.Width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/#properties) properties to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "Python" >}}
```python
with gv.Viewer("HousePlan.dwg") as viewer:
    # Create a PNG image for the drawing.
    viewOptions = gvo.PngViewOptions("output.png")
    # Set width and height.
    viewOptions.width = 1500
    viewOptions.height = 1000
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a CAD file to PNG](/viewer/net/images/rendering-basics/render-cad-documents/render-cad-to-png-image.png)

## Render CAD drawings as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert a CAD file to JPEG. Use the [JpgViewOptions.Height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/#properties) and [JpgViewOptions.Width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/#properties) properties to specify the output image size in pixels.

{{< tabs "example5">}}
{{< tab "Python" >}}
```python
with gv.Viewer("HousePlan.dwg") as viewer:
    # Create a JPG image for the drawing.
    viewOptions = gvo.JpgViewOptions("output.jpg")
    # Set width and height.
    viewOptions.width = 1500
    viewOptions.height = 1000
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

## Get information about existing layouts and layers

Follow the steps below to obtain information about layouts and layers contained in a CAD drawing. You can use this information to specify which layers and layouts to display in the output file.

1. Create a [ViewInfoOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/viewinfooptions) instance for a specific view.
2. Call the [Viewer.GetViewInfo](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer/viewer/#methods) method, pass the `ViewInfoOptions` instance to this method as a parameter, and cast the returned object to the [CadViewInfo](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.results/cadviewinfo) type.
3. Use the [CadViewInfo.Layouts](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.results/cadviewinfo/#properties) and [CadViewInfo.Layers](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.results/cadviewinfo/#properties) properties to obtain the lists of layouts and layers in the CAD file.

{{< tabs "example6">}}
{{< tab "Python" >}}
```python
 with gv.Viewer("HousePlan.dwg") as viewer:
    viewInfoOptions = gvo.ViewInfoOptions.for_html_view()
    # Enable this option to see the list of all layouts contained in the CAD file.
    viewInfoOptions.cad_options.render_layouts = True

    info = viewer.get_view_info(viewInfoOptions)
    # Display information about the CAD file.
    print("File type:", info.file_type)
    print("Pages count:", len(info.pages))

    # Display the list of existing layouts.
    print("The drawing contains the following layout(s):")
    for layout in info.layouts:
        print(" - /", layout.name)
    
    # Display the list of existing layers.
    print("The drawing contains the following layer(s):");
    for layer in info.layers:
        print(" - /", layer)

    print("\nView info retrieved successfully.")
```
{{</ tab>}}
{{< /tabs >}}

The following image shows a sample console output:

![Get information about a CAD file](/viewer/net/images/rendering-basics/render-cad-documents/retrieve-cad-file-information.png)

## Render all or specific layouts

When you convert a CAD drawing to HTML, PDF, or image format, GroupDocs.Viewer renders only the model-space layout (*Model*). If you also need to render all paper space layouts contained in your CAD file, enable the [CadOptions.RenderLayouts](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/cadoptions/#properties) option for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/jpgviewoptions)

Each layout is rendered on a separate page.

The following example renders all layouts when converting a CAD drawing to PDF:

{{< tabs "example7">}}
{{< tab "Python">}}
```python
with gv.Viewer("sample.dwg") as viewer:
    # Convert the document to PDF.
    options = gvo.PdfViewOptions("output.pdf")
    # Render the Model and all non-empty paper space layouts. 
    options.cad_options.render_layouts = True
    viewer.view(options)
```
{{< /tab >}}
{{< /tabs >}}

To render a specific layout, assign the layout name to the [CadOptions.LayoutName](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/cadoptions/#properties) property of a target view.

{{< tabs "example8">}}
{{< tab "Python">}}
```python
with gv.Viewer("sample.dwg") as viewer:
    # Convert the document to PDF.
    options = gvo.PdfViewOptions("output.pdf")
    # Specify the name of the layout to render.
    # If the specified layout is not found,
    # an exception occurs.
    options.cad_options.layout_name = "layout1"
    viewer.view(options)
```
{{< /tab >}}
{{< /tabs >}}

{{< alert style="info" >}}
1. The [CadOptions.RenderLayouts](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/cadoptions/#properties) and [CadOptions.LayoutName](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/cadoptions/#properties) properties apply only to the following file formats: DWG, DWT, DXF, and DWF.

2. If you use the [CadOptions.LayoutName](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/cadoptions/#properties) property to render a specific layout, the [CadOptions.RenderLayouts](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/cadoptions/#properties) option is ignored.{{< /alert >}}


## Render specific layers

A CAD drawing can contain many layers. Each layer is used to draw a specific object type. For example, the drawing below contains layers for walls, furniture, plants, and so on. You can control the visibility of objects on the drawing by turning specific layers on or off.

![Layers in a CAD file](/viewer/net/images/rendering-basics/render-cad-documents/autocad-drawing-layers.png)

When you convert a CAD drawing to HTML, PDF, or image format, GroupDocs.Viewer renders all available layers. You can specify which layers to display in the output file, as described below:

1. Access the [CadOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/#properties) property for a target view:

  * [HtmlViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/htmlviewoptions) 
  * [PdfViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/pdfviewoptions)
  * [PngViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/pngviewoptions)
  * [JpgViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/jpgviewoptions)

2. Assign the list of layers you want to render to the [CadOptions.Layers](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/cadoptions/#properties) property.

The following example renders layers with walls and furniture to PDF:

{{< tabs "example9">}}
{{< tab "Python">}}
```python
import groupdocs.viewer as gv
import groupdocs.viewer.options as gvo
import groupdocs.viewer.results as gvr

with gv.Viewer("HousePlan.dwg") as viewer:
    # Convert the document to PDF.
    options = gvo.PdfViewOptions("output.pdf")
    # Specify a list of layers to display.
    options.cad_options.layers = [
        gvr.Layer("Base"),
        gvr.Layer("Walls"),
        gvr.Layer("Furniture")
    ]
    viewer.view(options)
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result.

![Render specific CAD layers](/viewer/net/images/rendering-basics/render-cad-documents/render-specific-layers.png)
