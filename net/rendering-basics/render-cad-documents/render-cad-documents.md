---
id: render-cad-drawings-and-models
url: viewer/net/render-cad-drawings-and-models
title: Render CAD drawings and models as HTML, PDF, and image files
linkTitle: Render CAD drawings and models
weight: 1
description: "This topic describes how to use the GroupDocs.Viewer .NET API (C#) to convert CAD files (DWG, DGN, DXF) to HTML, PDF, PNG, and JPEG formats."
keywords: CAD viewer, dwg viewer, convert dwg to pdf, convert dwg to html, convert dwg to jpeg, convert dwg to image
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
aliases:
    - /viewer/net/how-to-view-cad-documents-using-csharp/
    - /viewer/net/view-cad-drawings
    - /viewer/net/how-to-convert-and-view-igs-files
    - /viewer/net/how-to-convert-and-view-cff2-and-cf2-files
    - /viewer/net/how-to-convert-and-view-obj-files
    - /viewer/net/how-to-view-plt-files
    - /viewer/net/how-to-convert-cad-to-html
    - /viewer/net/how-to-get-cad-layers-and-layouts
    - /viewer/net/render-all-layouts
    - /viewer/net/render-layers
    - /viewer/net/how-to-view-dwf-file-layers
---
[GroupDocs.Viewer for .NET](https://products.groupdocs.com/viewer/net) allows you to render your CAD drawings and 3D models in HTML, PDF, PNG, and JPEG formats. You do not need to use AutoCAD or other CAD software to load and view CAD files within your .NET application (web or desktop).

Create a [Viewer](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class instance to get started with the GroupDocs.Viewer API. Pass a CAD drawing you want to view to the class constructor. You can load the drawing from a file or stream. Call one of the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method overloads to convert the drawing to HTML, PDF, or image format.

{{< button style="primary" link="https://products.groupdocs.app/viewer/cad" >}} {{< icon "gdoc_person" >}} View CAD files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported CAD file formats

GroupDocs.Viewer supports the following file formats:

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

Create an [HtmlViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a CAD file to HTML. During the conversion, GroupDocs.Viewer creates an [SVG](https://docs.fileformat.com/page-description-language/svg/) image from the CAD drawing and embeds this image in an [HTML](https://docs.fileformat.com/web/html/) document.

The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.ForEmbeddedResources](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method and specify the output file name.

{{< tabs "example1">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("HousePlan.dwg"))
{
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("output.html");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a CAD file to HTML](/viewer/net/images/rendering-basics/render-cad-documents/render-to-html-embedded-resources.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.ForExternalResources](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forexternalresources/index) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "example2">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("HousePlan.dwg"))
{
    // Create an HTML file for the drawing.
    // Specify the HTML file name and location of external resources.
    // {0} and {1} are replaced with the page number and resource name, respectively.
    var viewOptions = HtmlViewOptions.ForExternalResources(
        "page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/net/images/rendering-basics/render-cad-documents/render-to-html-external-resources.png)

## Render CAD drawings as PDF

Create a [PdfViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a CAD file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example3">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("HousePlan.dwg"))
{
    var viewOptions = new PdfViewOptions("output.pdf");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a CAD file to PDF](/viewer/net/images/rendering-basics/render-cad-documents/render-cad-to-pdf.png)

## Render CAD drawings as PNG

Create a [PngViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a CAD file to PNG. Use the [PngViewOptions.Height](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("HousePlan.dwg"))
{
    var viewOptions = new PngViewOptions("output.png");
    viewOptions.Width = 1500;
    viewOptions.Height = 1000;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a CAD file to PNG](/viewer/net/images/rendering-basics/render-cad-documents/render-cad-to-png-image.png)

## Render CAD drawings as JPEG

Create a [JpgViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a CAD file to JPEG. Use the [JpgViewOptions.Height](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example5">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("HousePlan.dwg"))
{
    var viewOptions = new JpgViewOptions("output.jpg");
    viewOptions.Width = 1500;
    viewOptions.Height = 1000;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Obtain information about existing layouts and layers

Follow the steps below to obtain information about layouts and layers contained in a CAD drawing. You can use this information to specify which layers and layouts to display in the output file.

1. Create a [ViewInfoOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/viewinfooptions) instance for a specific view.
2. Call the [Viewer.GetViewInfo](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getviewinfo) method, pass the `ViewInfoOptions` instance to this method as a parameter, and cast the returned object to the [CadViewInfo](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.results/cadviewinfo) type.
3. Use the [CadViewInfo.Layouts](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.results/cadviewinfo/properties/layouts) and [CadViewInfo.Layers](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.results/cadviewinfo/properties/layers) properties to obtain the lists of layouts and layers in the CAD file.

{{< tabs "example6">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Results;

using (var viewer = new Viewer("HousePlan.dwg"))
{
    var viewInfoOptions = ViewInfoOptions.ForHtmlView();
    // Enable this option to see the list of all layouts contained in the CAD file.
    viewInfoOptions.CadOptions.RenderLayouts = true;
    var viewInfo = viewer.GetViewInfo(viewInfoOptions) as CadViewInfo;

    if (viewInfo != null)
    {
        // Display information about the CAD file.
        Console.WriteLine($"File type: {viewInfo.FileType}");
        Console.WriteLine($"The number of pages: {viewInfo.Pages.Count}");

        // Display the list of existing layouts.
        Console.WriteLine("The drawing contains the following layout(s):");
        foreach (Layout layout in viewInfo.Layouts)
            Console.WriteLine(layout.Name);

        // Display the list of existing layers.
        Console.WriteLine("The drawing contains the following layer(s):");
        foreach (Layer layer in viewInfo.Layers)
            Console.WriteLine(layer);
    }
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates a sample console output:

![Get information about a CAD file](/viewer/net/images/rendering-basics/render-cad-documents/retrieve-cad-file-information.png)

## Render all or specific layouts

When you convert a CAD drawing to HTML, PDF, or image format, GroupDocs.Viewer renders only the model-space layout (*Model*). If you also need to render all paper space layouts contained in your CAD file, enable the [CadOptions.RenderLayouts](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/properties/renderlayouts) option for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)

Each layout is rendered on a separate page.

The following example renders all layouts when converting a CAD drawing to PDF:

{{< tabs "example7">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.dwg"))
{
   var viewOptions = new PdfViewOptions("output.pdf");
   // Render the Model and all non-empty paper space layouts. 
   viewOptions.CadOptions.RenderLayouts = true;
   viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

To render a specific layout, assign the layout name to the [CadOptions.LayoutName](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/cadoptions/properties/layoutname) property of a target view.

{{< tabs "example8">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.dwg"))
{
   var viewOptions = new PdfViewOptions("output.pdf");
   // Specify the name of the layout to render.
   // If the specified layout is not found,
   // an exception occurs.
   viewOptions.CadOptions.LayoutName = "Layout1";
   viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

{{< alert style="info" >}}
1. The [CadOptions.RenderLayouts](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/properties/renderlayouts) and [CadOptions.LayoutName](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/cadoptions/properties/layoutname) properties apply only to the following file formats: DWG, DWT, DXF, and DWF.

2. If you use the [CadOptions.LayoutName](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/cadoptions/properties/layoutname) property to render a specific layout, the [CadOptions.RenderLayouts](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/cadoptions/properties/renderlayouts) option is ignored.{{< /alert >}}

## Render specific layers

A CAD drawing can contain many layers. Each layer is used to draw a specific object type. For example, the drawing below contains layers for walls, furniture, plants, and so on. You can control the visibility of objects on the drawing by turning specific layers on or off.

![Layers in a CAD file](/viewer/net/images/rendering-basics/render-cad-documents/autocad-drawing-layers.png)

When you convert a CAD drawing to HTML, PDF, or image format, GroupDocs.Viewer renders all available layers. You can specify which layers to display in the output file, as described below:

1. Access the [CadOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/cadoptions) property for a target view:

  * [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) 
  * [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)
  * [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)
  * [JpgViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)

2. Assign the list of layers you want to render to the [CadOptions.Layers](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/cadoptions/properties/layers) property.

The following example renders layers with walls and furniture to PDF:

{{< tabs "example9">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("HousePlan.dwg"))
{
    var viewOptions = new PdfViewOptions("output.pdf");
    viewOptions.CadOptions.Layers = new List<Layer>
    {
        new Layer("Base"),
        new Layer("Walls"),
        new Layer("Furniture")
    };
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result.

![Render specific CAD layers](/viewer/net/images/rendering-basics/render-cad-documents/render-specific-layers.png)
