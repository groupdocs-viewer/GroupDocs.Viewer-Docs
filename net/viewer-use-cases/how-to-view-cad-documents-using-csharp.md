---
id: how-to-view-cad-documents-using-csharp
url: viewer/net/how-to-view-cad-documents-using-csharp
title: How to view CAD documents using C#
weight: 1
description: "This guide describes how to build your CAD files viewer in C#. View CAD files (DWG, DGN, DXF) to render as HTML, JPG, PNG, or PDF using GroupDocs.Viewer .NET API by GroupDocs."
keywords: dwg dgn dxf dwf cad view render convert
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

CAD  (Computer-Aided Design) document formats are designed to work on detailed drawings, building plans, and device diagrams for their subsequent production or related work. What used to be done manually on a drawing board in pase, now can be done quickly on a computer.
The most used formats in the CAD design industry are DWG, DWF, DXF, DGN. In this article, we will discuss how to view CAD files using C# in .NET applications.

The following topics are covered below in brief:

* [.NET API for rendering CAD files](#net-api-for-rendering-cad-files)
* [How to render CAD files into HTML, JPG, PNG, or PDF](#how-to-render-cad-files-into-html-jpg-png-or-pdf)
* [Getting layouts/layers information](#getting-layouts-layers-information)
* [Layers rendering](#layers-rendering)
* [Layouts rendering](#layouts-rendering)

## .NET API for rendering CAD files

[GroupDocs.Viewer for .NET](#https://products.groupdocs.com/viewer/net) provides API to render CAD documents formats to PNG, PDF, JPEG, and HTML. Also, API includes special options for additional result image processing. Supported formats are DWF, DXF, DGN, IFC, STL, DWT, Plotter documents, and [many others](https://docs.groupdocs.com/viewer/net/supported-document-formats/).

Use the [downloads section](https://downloads.groupdocs.com/viewer/net) to download API DLLs or MSI installer or NuGet:

```nuget
PM> Install-Package GroupDocs.Viewer
```

## How to render CAD files into HTML, JPG, PNG, or PDF

### Rendering to HTML with Embedded Resources in C\#

To render your file to HTML file(s) with embedded resources do the following steps:

* With Viewer class load your document.
* With the ForExternalResources method create the HtmlViewOptions instance and type output file name.
* Call View method to render your document to HTML, resources will be embedded in to file.

```cs
using (Viewer viewer = new Viewer("document.dwg"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    viewer.View(viewOptions);
}
```

### Rendering to HTML with External Resources in C\#

To render your file to HTML file(s) with external resources do the following steps:

* With Viewer class load your document.
* with ForExternalResources method create HtmlViewOptions instance and type the output file name.
* Call View method to render your document to HTML.

```cs
using (Viewer viewer = new Viewer("document.dwg"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForExternalResources(
        "page_{0}.html","page_{0}/resource_{1}","page_{0}/resources");

    viewer.View(viewOptions);
}
```

### Rendering to JPEG in C\#

* With Viewer class load your document.
* Сreate JpegViewOptions instance and type output file name.
* Call View method to render your document to JPEG.

```cs
using (Viewer viewer = new Viewer("document.dwg"))
{
    JpgViewOptions viewOptions = JpgViewOptions("output.jpg");
    viewer.View(viewOptions);
}
```

### Rendering to PNG in C\#

* With Viewer class load your document.
* Сreate PngViewOptions instance and type output file name.
* Call View method to render your document to PNG.

```cs
using (Viewer viewer = new Viewer("document.dwg"))
{
    PngViewOptions viewOptions = PngViewOptions("output.png");
    viewer.View(viewOptions);
}
```

### Rendering to PDF in C\#

* With Viewer class load your document.
* Сreate PngViewOptions instance and type output file name.
* Call View method to render your document to PDF.

```cs
using (Viewer viewer = new Viewer("document.dwg"))
{
    PdfViewOptions viewOptions = PdfViewOptions("output.pdf");
    viewer.View(viewOptions);
}
```

## Getting layouts/layers information

CAD files often consist of many layouts and layers. You can obtain information on what layouts and layers are in a specific file with the following code:

* With Viewer class load your document.
* Сreate PngViewOptions instance and type output file name.
* Call View method to render your document to PDF.
* Call GetViewInfo to get layers/layouts information and get CadViewInfo object result.
* Layouts and layers Lists are located in resulted CadViewInfo object.

```cs
using (Viewer viewer = new Viewer("document.dwg"))
{
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForHtmlView();
    CadViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions) as CadViewInfo;

    Console.WriteLine($"File type: {viewInfo.FileType}, pages count {viewInfo.Pages.Count}.");
    

    Console.WriteLine("Layouts list:");
    foreach (Layout layout in viewInfo.Layouts)
        Console.WriteLine(layout);

    Console.WriteLine("Layers list:");
    foreach (Layer layer in viewInfo.Layers)
        Console.WriteLine(layer);
}
```

You can use this information to specify what layers/layouts render in the output file.

### Layers rendering

CAD drawing most often contains multiple layers, drawing contains a list of layers that rendering by default,
but other layers may hidden, because these layers are may contain supervisor remarks, details of the discussion, or
other additional information that should not be in the final drawing.

To render your file with specific layers please do the following steps:

* With Viewer class load your document.
* Сreate HtmlViewOptions/JpgViewOptions/PngViewOptions/PdfViewOptions instance and type output file name.
* Initialize viewOptions.CadOptions.Layers property with a list of required layers information.
* Call View method to render your document with specified layers.

```cs
using (Viewer viewer = new Viewer("document.dwg"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.CadOptions.Layers = new List<Layer>
    {
        new Layer("Labels"),
        new Layer("Remarks")
    };

    viewer.View(viewOptions);
}
```

### Layouts rendering

By default GroupDocs.Viewer renders CAD file model presentation (document default layer).
If you want to choose a different layout you can set the layout name to render.

To render your file with specific layouts please do the following steps:

* With Viewer class load your document.
* Сreate HtmlViewOptions/JpgViewOptions/PngViewOptions/PdfViewOptions instance and type output file name.
* Set required layout name in viewOptions.CadOptions.LayoutName property.
* Call View method to render your document with a specified layout.

```cs
using (Viewer viewer = new Viewer("document.dwg"))
{
   HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
   viewOptions.CadOptions.LayoutName = "FinalLayout";
   viewer.View(viewOptions);
}
```

## Get a Free API License

In order to use the API without evaluation limitations, you can get a free [temporary license](https://purchase.groupdocs.com/temporary-license).

## Conclusion

In conclusion, I hope you now know how to view CAD files in C# with .NET applications, in this article you have seen how to get models, layers, and layouts information for CAD files in your application.
Also, you can use [Online Applications to view your files](https://products.groupdocs.app/viewer/family) these applications are built with GroupDocs.Viewer.

You can learn how to use GroupDocs.Viewer in your applications with [documentation](https://docs.groupdocs.com/viewer/net/) and if you have any questions or issues you feel free to send these via our [forum](https://forum.groupdocs.com/).

## See also

* How to view DOCX using C#
* How to view PDF using C#
* View word documents using C#
