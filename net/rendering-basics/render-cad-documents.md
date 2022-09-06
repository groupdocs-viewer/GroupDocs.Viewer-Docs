---
id: render-cad-documents
url: viewer/net/render-cad-documents
title: Render CAD documents as HTML, PDF, and image files
linkTitle: Render CAD documents
weight: 6
description: "This guide describes how to build your CAD files viewer in C#. View CAD files (DWG, DGN, DXF) to render as HTML, JPG, PNG, or PDF using GroupDocs.Viewer .NET API by GroupDocs."
keywords: CAD Viewer in CSharp, Convert DWG to HTML in CSharp, Convert DWG to JPG in CSharp, DWG Viewer using CSharp
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
aliases:
    - /viewer/net/how-to-view-cad-documents-using-csharp/
---

CAD  (Computer-Aided Design) document formats are designed to work on detailed drawings, building plans, and device diagrams for their subsequent production or related work. What used to be done manually on a drawing board in pase, now can be done quickly on a computer.
The most used formats in the CAD design industry are DWG, DWF, DXF, DGN. In this article, we will discuss how to view CAD files using C# in .NET applications.

The following topics are covered below in brief:

* [.NET API for rendering CAD files](viewer/net/render-cad-documents/#net-api-for-rendering-cad-files)
* [How to render CAD files into HTML, JPG, PNG, or PDF](viewer/net/render-cad-documents/#how-to-render-cad-files-into-html-jpg-png-or-pdf)
* [Getting layouts/layers information](viewer/net/render-cad-documents/#getting-layoutslayers-information)
* [Layers rendering](viewer/net/render-cad-documents/#layers-rendering)
* [Layouts rendering](viewer/net/render-cad-documents/#layouts-rendering)

## .NET API for rendering CAD files

[GroupDocs.Viewer for .NET](https://products.groupdocs.com/viewer/net) provides API to render CAD documents formats to PNG, PDF, JPEG, and HTML. Also, API includes special options for additional result image processing. Supported formats are DWF, DXF, DGN, IFC, STL, DWT, Plotter documents, and [many others](https://docs.groupdocs.com/viewer/net/supported-document-formats/).

Use the [downloads section](https://downloads.groupdocs.com/viewer/net) to download API DLLs or MSI installer or NuGet:

```nuget
PM> Install-Package GroupDocs.Viewer
```

![Source CAD document preview](/viewer/net/images/rendering-basics/render-cad-documents/source_image_preview.jpg)

## How to render CAD files into HTML, JPG, PNG, or PDF

### Rendering to HTML with Embedded Resources in C\#

To render your file to HTML file(s) with embedded resources do the following steps:

* With Viewer` class load your document.
* With the `ForEmbeddedResources` method create the `HtmlViewOptions` instance and type output file name.
* Call `View` method to render your document to HTML, resources will be embedded in to file.

```cs
using (Viewer viewer = new Viewer("sample.dwf"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    viewer.View(viewOptions);
}
```

![Rendering CAD document to HTML](/viewer/net/images/rendering-basics/render-cad-documents/rendering_to_html_with_embed.jpg)

### Rendering to HTML with External Resources in C\#

To render your file to HTML file(s) with external resources do the following steps:

* With `Viewer` class load your document.
* with `ForExternalResources` method create `HtmlViewOptions` instance and type:
  * the output file name mask
  * external resources folder file path mask
  * url for resources mask format

* Call `View` method to render your document to HTML.

Resources will be placed to separate folder.

![Resources placed into separate folder](/viewer/net/images/rendering-basics/render-cad-documents/resources_placed_to_separate_folder.jpg)

```cs
using (Viewer viewer = new Viewer("sample.dwf"))
{
    HtmlViewOptions viewOptions = 
        HtmlViewOptions.ForExternalResources(
            "page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");

    viewer.View(viewOptions);
}
```

### Rendering to JPEG in C\#

* With `Viewer` class load your document.
* Сreate `JpegViewOptions` instance and type output file name.
* Call `View` method to render your document to JPEG.

```cs
using (Viewer viewer = new Viewer("sample.dwf"))
{
    JpgViewOptions viewOptions = new JpgViewOptions("output.jpg");
    viewer.View(viewOptions);
}
```

![Rendering CAD document to JPEG](/viewer/net/images/rendering-basics/render-cad-documents/rendering_cad_to_jpeg.jpg)

### Rendering to PNG in C\#

* With `Viewer` class load your document.
* Сreate `PngViewOptions` instance and type output file name.
* Call `View` method to render your document to PNG.

```cs
using (Viewer viewer = new Viewer("sample.dwf"))
{
    PngViewOptions viewOptions = new PngViewOptions("output.png");
    viewer.View(viewOptions);
}
```

![Rendering CAD document to PNG](/viewer/net/images/rendering-basics/render-cad-documents/rendering_cad_to_png.jpg)

### Rendering to PDF in C\#

* With `Viewer` class load your document.
* Сreate `PngViewOptions` instance and type output file name.
* Call `View` method to render your document to PDF.

```cs
using (Viewer viewer = new Viewer("sample.dwf"))
{
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    viewer.View(viewOptions);
}
```

![Rendering CAD document to PDF](/viewer/net/images/rendering-basics/render-cad-documents/rendering_cad_to_pdf.jpg)

## Getting layouts/layers information

CAD files often consist of many layouts and layers. You can obtain information on what layouts and layers are in a specific file with the following code:

* With `Viewer` class load your document.
* Сreate `PngViewOptions` instance and type output file name.
* Call `View` method to render your document to PDF.
* Call `GetViewInfo` to get layers/layouts information and get `CadViewInfo` object result.
* Layouts and layers Lists are located in resulted `CadViewInfo` object.

```cs
using (Viewer viewer = new Viewer("sample.dwf"))
{
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForHtmlView();
    CadViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions) as CadViewInfo;

    Console.WriteLine($"File type: {viewInfo.FileType}, pages count {viewInfo.Pages.Count}.");
    

    Console.WriteLine("Layouts list:");
    foreach (Layout layout in viewInfo.Layouts)
        Console.WriteLine(layout.Name);

    Console.WriteLine("Layers list:");
    foreach (Layer layer in viewInfo.Layers)
        Console.WriteLine(layer);
}
```

You can use this information to specify what layers/layouts render in the output file.

![Layouts and layers information](/viewer/net/images/rendering-basics/render-cad-documents/layouts_and_layers_information.jpg)

### Layers rendering

CAD drawing most often contains multiple layers, drawing contains a list of layers that rendering by default,
but other layers may hidden, because these layers are may contain supervisor remarks, details of the discussion, or
other additional information that should not be in the final drawing.

To render your file with specific layers please do the following steps:

* With `Viewer` class load your document.
* Сreate `HtmlViewOptions/JpgViewOptions/PngViewOptions/PdfViewOptions` instance and type output file name.
* Initialize `viewOptions.CadOptions.Layers` property with a list of required layers information.
* Call `View` method to render your document with specified layers.

```cs
using (Viewer viewer = new Viewer("sample.dwf"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
     viewOptions.CadOptions.Layers = new List<Layer>
    {
         new Layer("CIRCLE"),
    };

    viewer.View(viewOptions);
}
```

This drawing contains two layers: "0" - with a rectangle and "CIRCLE" with a circle. We want to render circle only,
so we added a layer with the name "CIRCLE" in the layers list.

![Render specific layer](/viewer/net/images/rendering-basics/render-cad-documents/render_specific_layer.jpg)

### Layouts rendering

By default GroupDocs.Viewer renders CAD file model presentation (document default layer).
If you want to choose a different layout you can set the layout name to render.

To render your file with specific layouts please do the following steps:

* With `Viewer` class load your document.
* Сreate `HtmlViewOptions/JpgViewOptions/PngViewOptions/PdfViewOptions` instance and type output file name.
* Set required layout name in `viewOptions.CadOptions.LayoutName` property.
* Call `View` method to render your document with a specified layout.

```cs
using (Viewer viewer = new Viewer("sample.dwf"))
{
   HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
   viewOptions.CadOptions.LayoutName = "three-layouts-with-layers-Layout2";
   viewer.View(viewOptions);
}
```

This drawing contains three layouts: "three-layouts-with-layers-Layout1", "three-layouts-with-layers-Layout2", "three-layouts-with-layers-Layout3".
We select "three-layouts-with-layers-Layout2" layout name with rectangle, we set this layer name in LayoutName property.

![Specific layout rendering](/viewer/net/images/rendering-basics/render-cad-documents/specific_layout_rendering.jpg)

## Get a Free API License

In order to use the API without evaluation limitations, you can get a free [temporary license](https://purchase.groupdocs.com/temporary-license).

## Conclusion

In conclusion, I hope you now know how to view CAD files in C# with .NET applications, in this article you have seen how to get models, layers, and layouts information for CAD files in your application.
Also, you can use [Online Applications to view your files](https://products.groupdocs.app/viewer/family) these applications are built with GroupDocs.Viewer.

You can learn how to use GroupDocs.Viewer in your applications with [documentation](https://docs.groupdocs.com/viewer/net/) and if you have any questions or issues you feel free to send these via our [forum](https://forum.groupdocs.com/).

## See also

* [How to view Word documents](viewer/net/render-word-documents/)
* [How to view PDF documents](viewer/net/render-pdf-documents/)
* [How to view Excel spreadsheets](viewer/net/render-excel-and-apple-numbers-spreadsheets/)
