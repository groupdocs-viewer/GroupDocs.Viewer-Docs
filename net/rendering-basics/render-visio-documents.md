---
id: render-visio-documents
url: viewer/net/render-visio-documents
title: Render Visio documents as HTML, PDF, and image files
linkTitle: Render Visio documents
weight: 5
description: "This topic describes how to use the GroupDocs.Viewer .NET API (C#) to convert Visio diagrams to HTML, PDF, PNG, and JPEG formats."
keywords: visio diagrams, convert visio to pdf, convert visio to html, convert visio to jpeg, convert diagram to pdf, convert diagram to html, convert diagram to jpeg
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
aliases:
    - viewer/net/view-visio-documents
    - viewer/net/how-to-render-visio-files-figures
---
[GroupDocs.Viewer for .NET](https://products.groupdocs.com/viewer/net) allows you to render your Visio diagrams in HTML, PDF, PNG, and JPEG formats. You do not need to use Microsoft Visio or other diagramming software to load and view Visio files within your .NET application (web or desktop). 

To start using the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class instance. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method overloads to convert the document to HTML, PDF, or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/visio" >}} {{< icon "gdoc_person" >}} View Visio files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported Visio file formats

GroupDocs.Viewer supports the following Visio file formats:

* [Visio Drawing](https://docs.fileformat.com/visio/vsdx/) (.VSDX)
* [Visio 2003-2010 Drawing](https://docs.fileformat.com/visio/vsd/) (.VSD)
* [Visio Macro-Enabled Drawing](https://docs.fileformat.com/visio/vsdm/) (.VSDM)
* [Visio Stencil](https://docs.fileformat.com/visio/vssx/) (.VSSX)
* [Visio 2003-2010 Stencil](https://docs.fileformat.com/visio/vss/) (.VSS)
* [Visio Macro-Enabled Stencil](https://docs.fileformat.com/visio/vssm/) (.VSSM)
* [Visio Template](https://docs.fileformat.com/visio/vstx/) (.VSTX)
* [Visio 2003-2010 Template](https://docs.fileformat.com/visio/vst/) (.VST)
* [Visio Macro-Enabled Template](https://docs.fileformat.com/visio/vstm/) (.VSTM)
* [Visio Drawing XML File](https://docs.fileformat.com/visio/vdx/) (.VDX)
* [Visio Stencil XML File](https://docs.fileformat.com/visio/vsx/) (.VSX)
* [Visio Template XML File](https://docs.fileformat.com/visio/vtx/) (.VTX)
* [Visio Web Drawing](https://docs.fileformat.com/visio/vdw/) (.VDW)

GroupDocs.Viewer can detect the document format automatically based on information in the file header.

## Render Visio files as HTML

Create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a Visio file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.ForEmbeddedResources](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method and specify the output file name.

{{< tabs "example1">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("flowchart.vsdx"))
{
    // Create an HTML file for each drawing page.
    // {0} is replaced with the current page number in the file name.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a Visio file to HTML](/viewer/net/images/rendering-basics/render-visio-documents/render-visio-to-html-embedded-resources.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.ForExternalResources](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forexternalresources/index) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "example2">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("flowchart.vsdx"))
{
    // Create an HTML file for each drawing page.
    // Specify the HTML file names and location of external resources.
    // {0} and {1} are replaced with the current page number and resource name, respectively.
    var viewOptions = HtmlViewOptions.ForExternalResources(
        "page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/net/images/rendering-basics/render-visio-documents/render-visio-to-html-external-resources.png)

## Render Visio files as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a Visio file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example3">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("flowchart.vsdx"))
{
    var viewOptions = new PdfViewOptions("output.pdf");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a Visio file to PDF](/viewer/net/images/rendering-basics/render-visio-documents/render-visio-to-pdf.png)

## Render Visio files as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a Visio file to PNG. Use the [PngViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("flowchart.vsdx"))
{
    // Create a PNG image for each drawing page.
    // {0} is replaced with the current page number in the image name.
    var viewOptions = new PngViewOptions("output_{0}.png");
    viewOptions.Width = 950;
    viewOptions.Height = 800;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
The following image demonstrates the result:

![Render a Visio file to PNG](/viewer/net/images/rendering-basics/render-visio-documents/render-visio-to-png-image.png)

## Render Visio files as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a Visio file to JPEG. Use the [JpgViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example5">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("flowchart.vsdx"))
{
    // Create a JPEG image for each drawing page.
    // {0} is replaced with the current page number in the image name.
    var viewOptions = new JpgViewOptions("output_{0}.jpg");
    viewOptions.Width = 950;
    viewOptions.Height = 800;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Render only diagram shapes

GroupDocs.Viewer allows you to render shapes used in a Visio diagram or stored in a Visio stencil file. These shapes are displayed in the **Document Stencil** pane in Microsoft Visio.

![Document Stencil pane in Visio](/viewer/net/images/rendering-basics/render-visio-documents/visio-document-stencil.png)

To render only master shapes contained in your Visio file, enable the [VisioRenderingOptions.RenderFiguresOnly](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/visiorenderingoptions/properties/renderfiguresonly) property for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)

The [VisioRenderingOptions.FigureWidth](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/visiorenderingoptions/properties/figurewidth) property allows you to specify the shape width in pixels. The height is calculated automatically based on the aspect ratio of each shape.

{{< tabs "example6">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("map.vsdx"))
{
    var viewOptions = new PdfViewOptions("output.pdf");
    viewOptions.VisioRenderingOptions.RenderFiguresOnly = true;
    viewOptions.VisioRenderingOptions.FigureWidth = 200;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result.

![Render master shapes only](/viewer/net/images/rendering-basics/render-visio-documents/render-visio-shapes.png)
