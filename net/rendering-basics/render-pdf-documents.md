---
id: render-pdf-documents
url: viewer/net/render-pdf-documents
title: Render PDF documents as HTML and image files
linkTitle: Render PDF documents
weight: 2
description: "This topic describes how to use the GroupDocs.Viewer .NET API (C#) to convert PDF files to HTML, PNG, and JPEG formats."
keywords: view pdf, pdf viewer, pdf to html, pdf to jpeg, pdf to jpg, pdf to png, pdf to image, convert pdf
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
aliases:
    - /viewer/net/how-to-view-pdf-documents-using-csharp/
---
[GroupDocs.Viewer for .NET](https://products.groupdocs.com/viewer/net) allows you to render your PDF files in HTML, PNG, and JPEG formats. Use this library to implement a simple PDF viewer within your .NET application (web or desktop).

Create a [Viewer](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class instance to get started with the GroupDocs.Viewer API. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method overloads to convert the document to HTML or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/pdf" >}} {{< icon "gdoc_person" >}} View PDF files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported Page Layout file formats

GroupDocs.Viewer supports the following PDF and Page Layout file formats:

* [Portable Document Format](https://docs.fileformat.com/pdf/) (.PDF)
* [Microsoft XML Paper Specification](https://docs.fileformat.com/page-description-language/xps/) (.XPS)
* [Open XML Paper Specification](https://docs.fileformat.com/page-description-language/oxps/) (.OXPS)
* [LaTeX Source Document](https://docs.fileformat.com/page-description-language/tex/) (.TEX)
* [Open Fixed-layout Document](https://www.zhihuilib.com/en/article/detail/2/12) (.OFD)

GroupDocs.Viewer can detect the document format automatically based on information in the file header.

## Render PDF files as HTML

Create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a PDF file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}).

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.ForEmbeddedResources](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method and specify the output file name.

{{< tabs "render-pdf-to-html">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pdf"))
{
    // Create an HTML file for each PDF page.
    // {0} is replaced with the current page number in the file name.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("render-pdf-to-html_{0}.html");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.pdf")
            ' Create an HTML file for each PDF page.
            ' {0} is replaced with the current page number in the file name.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("render-pdf-to-html_{0}.html")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-pdf-documents/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-pdf-to-html.zip" >}}  
```text
page_1.html (732 KB)
page_2.html (402 KB)
page_3.html (408 KB)
page_4.html (85 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-pdf-documents/RenderPdfToHtml/render-pdf-to-html.zip)
{{< /tab >}}
{{< /tabs >}}

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.ForExternalResources](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forexternalresources/index) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "render-pdf-to-html-external">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pdf"))
{
    // Create an HTML file for each PDF page.
    // Specify the HTML file names and location of external resources.
    // {0} and {1} are replaced with the current page number and resource name, respectively.
    var viewOptions = HtmlViewOptions.ForExternalResources("render-pdf-to-html-external_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.pdf")
            ' Create an HTML file for each PDF page.
            ' Specify the HTML file names and location of external resources.
            ' {0} and {1} are replaced with the current page number and resource name, respectively.
            Dim viewOptions = HtmlViewOptions.ForExternalResources("render-pdf-to-html-external_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-pdf-documents/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-pdf-to-html-external.zip" >}}  
```text
page_1.html (3 KB)
page_1/resource_1_f.woff (10 KB)
page_1/resource_1_f1.woff (22 KB)
page_1/resource_1_i.png (513 KB)
page_1/resource_1_s.css (2 KB)
page_2.html (9 KB)
page_2/resource_2_f.woff (13 KB)
page_2/resource_2_f1.woff (23 KB)
page_2/resource_2_i.png (256 KB)
page_2/resource_2_s.css (3 KB)
[TRUNCATED] (21 files total)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-pdf-documents/RenderPdfToHtmlExternal/render-pdf-to-html-external.zip)
{{< /tab >}}
{{< /tabs >}}

External resources are placed in a separate folder.

### Create HTML with fixed layout

By default, PDF and EPUB documents are rendered to HTML with fixed layout to ensure that the output HTML looks the same as a source document. Rendering to fixed layout means that all the HTML elements are absolutely positioned to the container element. And container element has a fixed size so browser window resizing won't have an effect on the position and size of elements in a document.

The following image demonstrates PDF document rendered HTML with fixed layout:

![Create HTML with fixed layout](/viewer/net/images/rendering-basics/render-pdf-documents/render-pdf-to-html-with-fixed-layout.png)

### Create HTML with fluid layout

When rendering to HTML with fluid layout HTML document doesn't have a fixed size. In case you resize a browser window the document content tries to fit into it. To create HTML with fluid layout set [PdfOptions.FixedLayout](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptions/fixedlayout/) property to `false`. 

{{< tabs "render-pdf-fluid-layout">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pdf"))
{
    // Create an HTML file for each PDF page.
    // {0} is replaced with the current page number in the file name.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("render-pdf-fluid-layout_{0}.html");
    // Disable fixed layout.
    viewOptions.PdfOptions.FixedLayout = false;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.pdf")
            ' Create an HTML file for each PDF page.
            ' {0} is replaced with the current page number in the file name.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("render-pdf-fluid-layout_{0}.html")
            ' Disable fixed layout.
            viewOptions.PdfOptions.FixedLayout = False
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-pdf-documents/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-pdf-fluid-layout.zip" >}}  
```text
page_1.html (45 KB)
page_2.html (52 KB)
page_3.html (57 KB)
page_4.html (63 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-pdf-documents/RenderPdfFluidLayout/render-pdf-fluid-layout.zip)
{{< /tab >}}
{{< /tabs >}}

{{< alert style="info" >}}

When rendering PDF and EPUB documents to HTML with a fluid layout all the graphic content such as images are ignored.

{{< /alert >}}

The following image demonstrates the result:

![Create HTML with fluid layout](/viewer/net/images/rendering-basics/render-pdf-documents/render-pdf-to-html-with-fluid-layout.png)

### Adjust image quality in the output HTML file

The [HtmlViewOptions.PdfOptions.ImageQuality](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfoptions/properties/imagequality) option allows you to specify the quality of images in the output HTML file. You can set this property to one of the following values:

* [ImageQuality.Low](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/imagequality) --- The image resolution is low (96 DPI), and the image size is small. Use this value to increase the conversion performance.
* [ImageQuality.Medium](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/imagequality) --- The image resolution is medium (192 DPI), and the image size is larger compared to the low quality images.
* [ImageQuality.High](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/imagequality) --- The image resolution is high (300 DPI), and the image size is big. Use of this value may decrease the conversion performance.

The following code snippet shows how to set the medium image quality when rendering a PDF document to HTML:

{{< tabs "render-pdf-with-image-quality">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pdf"))
{
    // Create an HTML file for each document page.
    // {0} is replaced with the current page number in the file name.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("render-pdf-with-image-quality_{0}.html");
    // Set image quality to medium.
    viewOptions.PdfOptions.ImageQuality = ImageQuality.Medium;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.pdf")
            ' Create an HTML file for each document page.
            ' {0} is replaced with the current page number in the file name.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("render-pdf-with-image-quality_{0}.html")
            ' Set image quality to medium.
            viewOptions.PdfOptions.ImageQuality = ImageQuality.Medium
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-pdf-documents/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-pdf-with-image-quality.zip" >}}  
```text
page_1.html (2784 KB)
page_2.html (1428 KB)
page_3.html (1433 KB)
page_4.html (138 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-pdf-documents/RenderPdfWithImageQuality/render-pdf-with-image-quality.zip)
{{< /tab >}}
{{< /tabs >}}

### Render text as an image

GroupDocs.Viewer supports the [HtmlViewOptions.PdfOptions.RenderTextAsImage](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptions/properties/rendertextasimage) option that allows you to render text as an image when you convert a PDF file to HTML. In this case, the layout of the output HTML file closely mirrors the layout of the source PDF document.

The following code snippet shows how to enable this option in code:

{{< tabs "render-pdf-text-as-image">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pdf"))
{
    // Create an HTML file for each document page.
    // {0} is replaced with the current page number in the file name.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("text-as-image_{0}.html");
    // Enable rendering text as image.
    viewOptions.PdfOptions.RenderTextAsImage = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.pdf")
            ' Create an HTML file for each document page.
            ' {0} is replaced with the current page number in the file name.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("text-as-image_{0}.html")
            ' Enable rendering text as image.
            viewOptions.PdfOptions.RenderTextAsImage = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-pdf-documents/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-pdf-text-as-image.zip" >}}  
```text
text-as-image_1.html (686 KB)
text-as-image_2.html (344 KB)
text-as-image_3.html (344 KB)
text-as-image_4.html (88 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-pdf-documents/RenderPdfTextAsImage/render-pdf-text-as-image.zip)
{{< /tab >}}
{{< /tabs >}}

PDF content is exported to HTML as an image, so users cannot select or copy document text.

### Enable multi-layer rendering

When you convert a PDF file to HTML, GroupDocs.Viewer creates an HTML document with a single layer (the `z-index` is not specified for document elements). This helps increase performance and reduce the output file size. If you convert a PDF document with multiple layers and want to improve the position of document elements in the output HTML file, activate the [HtmlViewOptions.PdfOptions.EnableLayeredRendering](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfoptions/properties/enablelayeredrendering) property to render text and graphics in the HTML file according to their z-order in the source PDF document.

The following code snippet shows how to enable the multi-layer rendering:

{{< tabs "render-pdf-with-layered-rendering">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pdf"))
{
    // Create an HTML file for each document page.
    // {0} is replaced with the current page number in the file name.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("render-pdf-with-layered-rendering_{0}.html");
    // Enable the multi-layer rendering.
    viewOptions.PdfOptions.EnableLayeredRendering = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.pdf")
            ' Create an HTML file for each document page.
            ' {0} is replaced with the current page number in the file name.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("render-pdf-with-layered-rendering_{0}.html")
            ' Enable the multi-layer rendering.
            viewOptions.PdfOptions.EnableLayeredRendering = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-pdf-documents/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-pdf-with-layered-rendering.zip" >}}  
```text
page_1.html (769 KB)
page_2.html (493 KB)
page_3.html (496 KB)
page_4.html (114 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-pdf-documents/RenderPdfWithLayeredRendering/render-pdf-with-layered-rendering.zip)
{{< /tab >}}
{{< /tabs >}}

## Render PDF files as images

### Convert PDF files to PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a PDF file to PNG. Use the [PngViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "render-pdf-to-png">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pdf"))
{
    // Create a PNG image for each PDF page.
    // {0} is replaced with the current page number in the image name.
    var viewOptions = new PngViewOptions("render-pdf-to-png_{0}.png");
    // Set width and height.
    viewOptions.Width = 800;
    viewOptions.Height = 900;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.pdf")
            ' Create a PNG image for each PDF page.
            ' {0} is replaced with the current page number in the image name.
            Dim viewOptions = New PngViewOptions("render-pdf-to-png_{0}.png")
            ' Set width and height.
            viewOptions.Width = 800
            viewOptions.Height = 900
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-pdf-documents/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-pdf-to-png.zip" >}}  
```text
output_1.png (450 KB)
output_2.png (237 KB)
output_3.png (253 KB)
output_4.png (73 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-pdf-documents/RenderPdfToPng/render-pdf-to-png.zip)
{{< /tab >}}
{{< /tabs >}}

### Convert PDF files to JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a PDF file to JPEG. Use the [JpgViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "render-pdf-to-jpg">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pdf"))
{
    // Create a JPEG image for each PDF page.
    // {0} is replaced with the current page number in the image name.
    var viewOptions = new JpgViewOptions("output_{0}.jpg");
    // Set width and height.
    viewOptions.Width = 800;
    viewOptions.Height = 900;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.pdf")
            ' Create a JPEG image for each PDF page.
            ' {0} is replaced with the current page number in the image name.
            Dim viewOptions = New JpgViewOptions("output_{0}.jpg")
            ' Set width and height.
            viewOptions.Width = 800
            viewOptions.Height = 900
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-pdf-documents/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-pdf-to-jpg.zip" >}}  
```text
output_1.jpg (115 KB)
output_2.jpg (90 KB)
output_3.jpg (96 KB)
output_4.jpg (58 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-pdf-documents/RenderPdfToJpg/render-pdf-to-jpg.zip)
{{< /tab >}}
{{< /tabs >}}

### Preserve the size of document pages

When you render PDF documents as images, GroupDocs.Viewer calculates the optimal image size to achieve better rendering quality. If you want the generated images to be the same size as pages in the source PDF document, enable the [PdfOptions.RenderOriginalPageSize](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfoptions/properties/renderoriginalpagesize) property for the [PngViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions) or [JpgViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions) class (depending on the output image format).

{{< tabs "render-pdf-preserve-page-size">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pdf"))
{
    // Create a PNG image for each PDF page.
    // {0} is replaced with the current page number in the image name.
    var viewOptions = new PngViewOptions("render-pdf-preserve-page-size_{0}.png");
    // Preserve the size of document pages.
    viewOptions.PdfOptions.RenderOriginalPageSize = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.pdf")
            ' Create a PNG image for each PDF page.
            ' {0} is replaced with the current page number in the image name.
            Dim viewOptions = New PngViewOptions("render-pdf-preserve-page-size_{0}.png")
            ' Preserve the size of document pages.
            viewOptions.PdfOptions.RenderOriginalPageSize = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-pdf-documents/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-pdf-preserve-page-size.zip" >}}  
```text
output_1.png (278 KB)
output_2.png (110 KB)
output_3.png (132 KB)
output_4.png (24 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-pdf-documents/RenderPdfPreservePageSize/render-pdf-preserve-page-size.zip)
{{< /tab >}}
{{< /tabs >}}

### Enable font hinting

To adjust the display of outline fonts when you convert PDF documents to PNG or JPEG, activate the [PdfOptions.EnableFontHinting](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfoptions/properties/enablefonthinting) option, as shown below:

{{< tabs "render-pdf-with-font-hinting">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pdf"))
{
    // Create a PNG image for each PDF page.
    // {0} is replaced with the current page number in the image name.
    var viewOptions = new PngViewOptions("render-pdf-with-font-hinting_{0}.png");
    //Enable font hinting
    viewOptions.PdfOptions.EnableFontHinting = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.pdf")
            ' Create a PNG image for each PDF page.
            ' {0} is replaced with the current page number in the image name.
            Dim viewOptions = New PngViewOptions("render-pdf-with-font-hinting_{0}.png")
            'Enable font hinting
            viewOptions.PdfOptions.EnableFontHinting = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-pdf-documents/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-pdf-with-font-hinting.zip" >}}  
```text
output_1.png (961 KB)
output_2.png (401 KB)
output_3.png (425 KB)
output_4.png (63 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-pdf-documents/RenderPdfWithFontHinting/render-pdf-with-font-hinting.zip)
{{< /tab >}}
{{< /tabs >}}

Refer to the following article for more information on font hinting: [Font hinting](https://en.wikipedia.org/wiki/Font_hinting).

## Disable character grouping

When you render PDF files in other formats, GroupDocs.Viewer groups individual characters into words to improve rendering performance. If your document contains hieroglyphic or special symbols, you may need to disable character grouping to generate a more precise layout. To do this, use the [PdfOptions.DisableCharsGrouping](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfoptions/properties/disablecharsgrouping) option, as shown below:

{{< tabs "render-pdf-disable-char-grouping">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pdf"))
{
    // Create an HTML file for each document page.
    // {0} is replaced with the current page number in the file name.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("render-pdf-disable-char-grouping_{0}.html");
    // Disable character grouping
    viewOptions.PdfOptions.DisableCharsGrouping = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.pdf")
            ' Create an HTML file for each document page.
            ' {0} is replaced with the current page number in the file name.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("render-pdf-disable-char-grouping_{0}.html")
            ' Disable character grouping
            viewOptions.PdfOptions.DisableCharsGrouping = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-pdf-documents/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-pdf-disable-char-grouping.zip" >}}  
```text
page_1.html (786 KB)
page_2.html (513 KB)
page_3.html (543 KB)
page_4.html (153 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-pdf-documents/RenderPdfDisableCharGrouping/render-pdf-disable-char-grouping.zip)
{{< /tab >}}
{{< /tabs >}}

## Render text comments

Textual annotations (such as text comments, sticky notes, text boxes and callouts) are rendered by default: the [ViewOptions.RenderComments](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/rendercomments) property is `true` unless you change it. The example below sets it explicitly; set it to `false` to hide the annotations in the output HTML, PNG, or JPEG files.

The code example below renders a PDF file with text comments as an image.

{{< tabs "render-pdf-with-comments">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pdf"))
{
    // Create a PNG image for each PDF page.
    // {0} is replaced with the current page number in the image name.
    var viewOptions = new PngViewOptions("render-pdf-with-comments_{0}.png");
    // Enable comments rendering.
    viewOptions.RenderComments = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.pdf")
            ' Create a PNG image for each PDF page.
            ' {0} is replaced with the current page number in the image name.
            Dim viewOptions = New PngViewOptions("render-pdf-with-comments_{0}.png")
            ' Enable comments rendering.
            viewOptions.RenderComments = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-pdf-documents/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-pdf-with-comments.zip" >}}  
```text
output_1.png (961 KB)
output_2.png (401 KB)
output_3.png (425 KB)
output_4.png (63 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-pdf-documents/RenderPdfWithComments/render-pdf-with-comments.zip)
{{< /tab >}}
{{< /tabs >}}

## Get information about a PDF file

Follow the steps below to obtain information about a PDF file (the number of pages, page size, and printing permissions): 

1. Create a [ViewInfoOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/viewinfooptions) instance for a specific view.
2. Call the [Viewer.GetViewInfo](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getviewinfo) method, pass the `ViewInfoOptions` instance to this method as a parameter, and cast the returned object to the [PdfViewInfo](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.results/pdfviewinfo) type.
3. Use the `PdfViewInfo` class properties to retrieve document-specific information.

{{< tabs "get-pdf-information">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Results;
// ...

using (var viewer = new Viewer("sample.pdf"))
{
    var viewInfoOptions = ViewInfoOptions.ForHtmlView();
    var viewInfo = viewer.GetViewInfo(viewInfoOptions) as PdfViewInfo;

    // Display information about the PDF document.
    Console.WriteLine($"File type: {viewInfo.FileType}");
    Console.WriteLine($"The number of pages: {viewInfo.Pages.Count}");
    Console.WriteLine($"Is printing allowed: {viewInfo.PrintingAllowed}");
    
    // Display information about all document pages.
    Console.WriteLine("Page information:");
    foreach (Page page in viewInfo.Pages)
    {
        // The Page.ToString method is overriden to display the following page information: 
        // "Page {Number} ({visibility}) {Width}x{Height}px with {Lines.Count} line(s)."
        Console.WriteLine(page);
    }
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
Imports GroupDocs.Viewer.Results
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.pdf")
            Dim viewInfoOptions = ViewInfoOptions.ForHtmlView()
            Dim viewInfo = TryCast(viewer.GetViewInfo(viewInfoOptions), PdfViewInfo)
        
            ' Display information about the PDF document.
            Console.WriteLine($"File type: {viewInfo.FileType}")
            Console.WriteLine($"The number of pages: {viewInfo.Pages.Count}")
            Console.WriteLine($"Is printing allowed: {viewInfo.PrintingAllowed}")
        
            ' Display information about all document pages.
            Console.WriteLine("Page information:")
            For Each page As Page In viewInfo.Pages
                ' The Page.ToString method is overriden to display the following page information: 
                ' "Page {Number} ({visibility}) {Width}x{Height}px with {Lines.Count} line(s)."
                Console.WriteLine(page)
            Next
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-pdf-documents/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "get-pdf-information.txt" >}}  
```text
File type: Portable Document Format File (.pdf)
The number of pages: 4
Is printing allowed: True
Page information:
Page 1 (visible) 595x842px with 0 line(s).
Page 2 (visible) 595x842px with 0 line(s).
Page 3 (visible) 595x842px with 0 line(s).
Page 4 (visible) 595x842px with 0 line(s).
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-pdf-documents/GetPdfInformation/get-pdf-information.txt)
{{< /tab >}}
{{< /tabs >}}

### Extract text from a PDF file

Set the [ViewInfoOptions.ExtractText](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/viewinfooptions/properties/extracttext) property to `true` to enable PDF text extraction. Use the [PdfViewInfo.Pages](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.results/viewinfo/properties/pages) property to obtain the list of all document pages, and iterate through the collection of lines on each page ([Page.Lines](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.results/page/properties/lines)) to retrieve text for each line.

{{< tabs "extract-pdf-text">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Results;
// ...

using (var viewer = new Viewer("sample.pdf"))
{
    var viewInfoOptions = ViewInfoOptions.ForHtmlView();
    viewInfoOptions.ExtractText = true;
    var viewInfo = viewer.GetViewInfo(viewInfoOptions) as PdfViewInfo;
    
    // Retrieve text from the PDF file.
    Console.WriteLine("Extracted document text:");
    foreach (Page page in viewInfo.Pages)
        foreach (Line line in page.Lines)
        {
            Console.WriteLine(line.Value);
        }
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
Imports GroupDocs.Viewer.Results
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.pdf")
            Dim viewInfoOptions = ViewInfoOptions.ForHtmlView()
            viewInfoOptions.ExtractText = True
            Dim viewInfo = TryCast(viewer.GetViewInfo(viewInfoOptions), PdfViewInfo)
        
            ' Retrieve text from the PDF file.
            Console.WriteLine("Extracted document text:")
            For Each page As Page In viewInfo.Pages
                For Each line As Line In page.Lines
                    Console.WriteLine(line.Value)
                Next
            Next
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-pdf-documents/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "extract-pdf-text.txt" >}}  
```text
Extracted document text:
Autumn Harvest 2026
The wholesale catalog for cafes, grocers and restaurants
Our seasonal range is back, bigger than ever: a spiced roast from Northwind Coffee Roasters, apple
butter and cranberry relish from Orchard Row, a squash soup from Sunfield Kitchens and a fruit loaf
baked on the Quayside. Order by 15 October for delivery from the first week of November.
Harbor Lane Provisions | 18 Quayside Road, Port Ellery | +1 555 0142 300
Coffee & Tea
Roasted for us by Northw
[TRUNCATED]
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-pdf-documents/ExtractPdfText/extract-pdf-text.txt)
{{< /tab >}}
{{< /tabs >}}

## Skip font license verification when rendering XPS and OXPS files

If an XPS or OXPS file contains a font that cannot be embedded due to licensing restrictions, GroupDocs.Viewer throws an exception at runtime. If you have a license for this font, enable the [PdfOptions.DisableFontLicenseVerifications](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptions/disablefontlicenseverifications) option to skip font license verification.

{{< tabs "render-xps-skip-font-license-check">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (Viewer viewer = new Viewer("sample.oxps"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources("render-xps-skip-font-license-check_{0}.html");
    viewOptions.PdfOptions.DisableFontLicenseVerifications = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer As Viewer = New Viewer("sample.oxps")
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources("render-xps-skip-font-license-check_{0}.html")
            viewOptions.PdfOptions.DisableFontLicenseVerifications = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.oxps" >}}
{{< tab-text >}}
`sample.oxps` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-pdf-documents/sample.oxps) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-xps-skip-font-license-check.zip" >}}  
```text
p_1.html (734 KB)
p_2.html (114 KB)
p_3.html (143 KB)
p_4.html (727 KB)
p_5.html (88 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-pdf-documents/RenderXpsSkipFontLicenseCheck/render-xps-skip-font-license-check.zip)
{{< /tab >}}
{{< /tabs >}}

## Enclose images in SVG when rendering PDF and Page Layout files

By default, when rendering to the PDF and Page Layout file formats, all images are combined into a single PNG file, which serves as the background for the output HTML document.

The [PdfOptions.WrapImagesInSvg](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptions/wrapimagesinsvg) option allows you to wrap each image in the output HTML document with an SVG tag to improve output quality.

This option is available when rendering PDF and Page Layout file formats to HTML with embedded or external resources. 

{{< tabs "render-pdf-images-in-svg">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (Viewer viewer = new Viewer("sample.pdf"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources("render-pdf-images-in-svg_{0}.html");
    viewOptions.PdfOptions.WrapImagesInSvg = true;

    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer As Viewer = New Viewer("sample.pdf")
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources("render-pdf-images-in-svg_{0}.html")
            viewOptions.PdfOptions.WrapImagesInSvg = True
        
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-pdf-documents/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-pdf-images-in-svg.zip" >}}  
```text
p_1.html (1429 KB)
p_2.html (1432 KB)
p_3.html (751 KB)
p_4.html (67 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-pdf-documents/RenderPdfImagesInSvg/render-pdf-images-in-svg.zip)
{{< /tab >}}
{{< /tabs >}}

The following image shows a PDF page rendered with the disabled (left) and enabled (right) `WrapImagesInSvg` option:

![Images as background vs embedded in SVG](/viewer/net/images/rendering-basics/render-pdf-documents/wrap-images-in-svg.png)

## Disable copy protection

When rendering PDF files with protection against copying text and images to HTML, GroupDocs.Viewer adds an `inert` HTML attribute to the HTML `<body>` tag.

Use [PdfOptions.DisableCopyProtection](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptions/disablecopyprotection) to turn off copy protection. When `DisableCopyProtection` is set to `true`, the `inert` HTML attribute won't be added to the HTML `<body>` tag in any case.

{{< alert style="info" >}}

This option was added in GroupDocs.Viewer for .NET 24.4. Previous versions of GroupDocs.Viewer for .NET ignores PDF copy protection and does not add `inert` HTML attribute to HTML `<body>` tag.   

{{< /alert >}}

This option is supported when rendering PDF files to HTML with embedded or external resources. 

{{< tabs "render-pdf-disable-copy-protection">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (Viewer viewer = new Viewer("copy_protected.pdf"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources("render-pdf-disable-copy-protection_{0}.html");
    viewOptions.PdfOptions.DisableCopyProtection = true;

    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer As Viewer = New Viewer("copy_protected.pdf")
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources("render-pdf-disable-copy-protection_{0}.html")
            viewOptions.PdfOptions.DisableCopyProtection = True
        
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "copy_protected.pdf" >}}
{{< tab-text >}}
`copy_protected.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-pdf-documents/copy_protected.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "p_1.html" >}}  
```text
HTML file (92 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-pdf-documents/RenderPdfDisableCopyProtection/p_1.html)
{{< /tab >}}
{{< /tabs >}}

The following image shows a copy-protected PDF rendered with copy protection on the left and with the `DisableCopyProtection` option set to `true` on the right:

![Render with or without copy protection](/viewer/net/images/rendering-basics/render-pdf-documents/render-with-and-without-copy-protection.png)

## Repairing corrupted PDF documents

By default GroupDocs.Viewer cannot process the PDF documents with corrupted structure or content — it throws an exception when trying to open such files. However, starting from the version [24.5](https://releases.groupdocs.com/viewer/net/release-notes/2024/groupdocs-viewer-for-net-24-5-release-notes/) GroupDocs.Viewer can try to repair the structural corruptions in PDF documents. By default this feature is disabled. To enable it, need to use the newly added `TryRepair` boolean property of the [`LoadOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/loadoptions/) class by setting its value to `true`.

When enabled, this feature addresses the following issues in a PDF document:

* Broken references within the document (incorrect object offsets in the Cross-reference list).
* Missing critical elements like root object, page object, or page content.
* Circular references (Form X-object referencing itself).

Here is a source code sample:

{{< tabs "repair-corrupted-pdf">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

LoadOptions loadOptions = new LoadOptions();
loadOptions.TryRepair = true;

PngViewOptions viewOptions = new PngViewOptions("repair-corrupted-pdf_{0}.png");

using (Viewer viewer = new Viewer("corrupted.pdf", loadOptions))
{    
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Dim loadOptions As New LoadOptions()
        loadOptions.TryRepair = True

        Dim viewOptions As New PngViewOptions("repair-corrupted-pdf_{0}.png")

        Using viewer As New Viewer("corrupted.pdf", loadOptions)
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "corrupted.pdf" >}}
{{< tab-text >}}
`corrupted.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-pdf-documents/corrupted.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "repair-corrupted-pdf.zip" >}}  
```text
p_1.png (130 KB)
p_2.png (129 KB)
p_3.png (130 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-pdf-documents/RepairCorruptedPdf/repair-corrupted-pdf.zip)
{{< /tab >}}
{{< /tabs >}}

## Render OFD documents

Starting from the [version 24.12](https://releases.groupdocs.com/viewer/net/release-notes/2024/groupdocs-viewer-for-net-24-12-release-notes/), the GroupDocs.Viewer started to support the [OFD](https://www.zhihuilib.com/en/article/detail/2/12) (Open Fixed-layout Document) format, defined by GB/T 33190-2016 aims to replace PDF in Chinese public institutions. For processing _all_ the documents of this format the GroupDocs.Viewer requires that font [SimSun.ttf](https://learn.microsoft.com/en-us/typography/font-list/simsun) must be installed on the operating system. When using Microsoft Windows this should not be the problem, because the SimSun is preinstalled in all the Windows versions and editions starting from the _Windows 7_ (for example, _Windows 7_ has preinstalled SimSun version [5.03](https://learn.microsoft.com/en-us/typography/fonts/windows_7_font_list), while _Windows 10_ — SimSun version [5.16](https://learn.microsoft.com/en-us/typography/fonts/windows_10_font_list)). But on the Linux SimSun is usually not installed, and when trying to process such a file on Linux, a `GroupDocsViewerException : Could not load file. File is corrupted or damaged. - Font SimSun was not found` exception will be thrown.

In order to view and save arbitrary OFD file on Linux, the SimSun.ttf font should be loaded to the GroupDocs.Viewer using the [`FolderFontSource`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/folderfontsource/) class and [`FontSettings.SetFontSources`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/fontsettings/setfontsources/) method, and this should be done _before_ instantiating a [`Viewer`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/) class with OFD file. Article ["Set custom fonts"](https://docs.groupdocs.com/viewer/net/set-custom-fonts/) describes setting a custom font in detail, but a short example of setting a SimSun and saving OFD to HTML on Linux is below:

{{< tabs "render-ofd-document">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Fonts;
// ...

//Put a SimSun.ttf to folder
string SimSunFolderPath = "full-valid-path\folder-with-SimSun-inside";
FolderFontSource fontSource = new FolderFontSource(SimSunFolderPath, SearchOption.TopFolderOnly);
FontSettings.SetFontSources(fontSource);

using (Viewer viewer = new Viewer("input.ofd"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources("render-ofd-document_{0}.html");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
Imports GroupDocs.Viewer.Fonts
' ...

' Put a SimSun.ttf to folder
Dim SimSunFolderPath As String = "full-valid-path\folder-with-SimSun-inside"
Dim fontSource As FolderFontSource = New FolderFontSource(SimSunFolderPath, SearchOption.TopFolderOnly)
FontSettings.SetFontSources(fontSource)

Using viewer As Viewer = New Viewer("input.ofd")
	Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources("render-ofd-document_{0}.html")
	viewer.View(viewOptions)
End Using
```
{{< /tab >}}
{{< /tabs >}}

## Render popup annotations

PDF documents may contain specific annotation, which are represented as **popups**, also called the balloon hints, which are by default hidden, but appear when the user hovers the mouse cursor over them and/or clicks them. Another annotation type, called **highlight annotations**, highlight some portion of text or some area on the page, but at the same time can have binded comments, which, again, are hidden by default, but appear when clicking on highlight. Before the [version 26.8](https://releases.groupdocs.com/viewer/net/release-notes/2026/groupdocs-viewer-for-net-26-8-release-notes/) of GroupDocs.Viewer it was not possible to view such annotation types, regardless of the selected output format, the only way to see them was to open the original PDF document in some desktop PDF viewer like Adobe Reader or Foxit Reader. But there was no possibility to preserve these annotations when rendering PDF to HTML or raster image formats.

In the GroupDocs.Viewer version 26.8 this has been changed. Popup annotations are still hidden by default (so the well-known and usual behavior of GroupDocs.Viewer is untouched), but they can be enabled. From the very beginning the GroupDocs.Viewer has a boolean property [`RenderNotes`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/rendernotes/), which is located in the [`BaseViewOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/) abstract class and thus is available for all 4 rendering options: PDF, HTML, PNG, and JPEG. Initially the `RenderNotes` property was related only to the Presentation (PPT, PPTX, PPTM, …) and Microsoft project (MPP, MPT, MPX) formats families, and when rendering the PDF documents, this property had no effect. In GroupDocs.Viewer version 26.8 things have changed: now this property has relation to the PDF format and is responsible for enabling popup annotations: when it is disabled by default (`false` value), popup annotations are hidden. But when enabled (`true`), the popup annotations are present for output HTML and raster image formats.

Source code sample below shows loading PDF file and rendering it to HTML with embedded resources, PNG and JPEG with enabled popup annotations.

{{< tabs "render-pdf-popup-annotations">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

// Preparing output options
PngViewOptions pngOpt = new PngViewOptions("render-pdf-popup-annotations_{0}.png");
JpgViewOptions jpegOpt = new JpgViewOptions();
HtmlViewOptions htmlEmbeddedOpt = HtmlViewOptions.ForEmbeddedResources("render-pdf-popup-annotations_{0}.html");

// Enabling "RenderNotes" for all options
pngOpt.RenderNotes = jpegOpt.RenderNotes = htmlEmbeddedOpt.RenderNotes = true;

// Loading sample PDF file
using (Viewer viewer = new Viewer("sample.pdf"))
{
    // Rendering to output formats
    viewer.View(pngOpt);
    viewer.View(jpegOpt);
    viewer.View(htmlEmbeddedOpt);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

' Preparing output options
Dim pngOpt As PngViewOptions = New PngViewOptions("render-pdf-popup-annotations_{0}.png")
Dim jpegOpt As JpgViewOptions = New JpgViewOptions()
Dim htmlEmbeddedOpt As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources("render-pdf-popup-annotations_{0}.html")

' Enabling "RenderNotes" for all options
pngOpt.RenderNotes = jpegOpt.RenderNotes = htmlEmbeddedOpt.RenderNotes = True

' Loading sample PDF file
Using viewer As New Viewer("sample.pdf")
    ' Rendering to output formats
    viewer.View(pngOpt)
    viewer.View(jpegOpt)
    viewer.View(htmlEmbeddedOpt)
End Using
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-pdf-documents/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-pdf-popup-annotations.zip" >}}  
```text
p_1.html (769 KB)
p_1.jpg (279 KB)
p_1.png (961 KB)
p_2.html (597 KB)
p_2.jpg (250 KB)
p_2.png (420 KB)
p_3.html (496 KB)
p_3.jpg (223 KB)
p_3.png (425 KB)
p_4.html (114 KB)
[TRUNCATED] (12 files total)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-pdf-documents/RenderPdfPopupAnnotations/render-pdf-popup-annotations.zip)
{{< /tab >}}
{{< /tabs >}}

One important note to mention. The [`PdfOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptions/) class has a boolean property [`EnableLayeredRendering`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptions/enablelayeredrendering/), which works when rendering PDF to HTML format and is disabled (`false`) by default. This means that by default all objects like text and graphics are present in output HTML as a single layer. However, when [`RenderNotes`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/rendernotes/) property is enabled and user renders PDF to HTML, the internal value of `EnableLayeredRendering` will be set to `true`, so layered rendering will be applied even if `EnableLayeredRendering` is set to `false` forcibly.
