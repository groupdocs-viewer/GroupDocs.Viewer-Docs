---
id: render-ebooks
url: viewer/net/render-ebooks
title: Render EBooks as HTML, PDF, and image files
linkTitle: Render EBooks
weight: 8
description: "This topic describes how to use the GroupDocs.Viewer .NET API to convert EBooks to HTML, PDF, PNG, and JPEG formats."
keywords: convert ebook to pdf, convert ebook to jpeg, convert ebook to pdf, convert ebook to jpg, convert ebook to png
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
aliases:
    - /viewer/net/how-to-view-ebooks-using-csharp/
---
[GroupDocs.Viewer for .NET](https://products.groupdocs.com/viewer/net) allows you to render your EBooks (EPUB, MOBI) in HTML, PDF, PNG, and JPEG formats. You do not need to use any book reader to load and view EBooks within your .NET application (web or desktop). 

To start using the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class instance. Pass a book you want to view to the class constructor. You can load the book from a file or stream. Call one of the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method overloads to convert the EBook to HTML, PDF, or image format.

{{< button style="primary" link="https://products.groupdocs.app/viewer/ebook" >}} {{< icon "gdoc_person" >}} View EBookd online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported EBooks file formats

GroupDocs.Viewer supports the following EBooks file formats:

* [EPUB](https://docs.fileformat.com/ebook/epub/) (.EPUB)
* [MOBI](https://docs.fileformat.com/ebook/mobi/) (.MOBI)
* [AZW3](https://docs.fileformat.com/ebook/azw3/) (.AZW3)

GroupDocs.Viewer can detect the book format automatically based on information in the file header.

## Render EBooks as HTML

Create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an EBook file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.ForEmbeddedResources](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method and specify the output file name.

{{< tabs "render-ebook-to-html">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.epub"))
{
    // Create an HTML file for each document page.
    // {0} is replaced with the current page number in the file name.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
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
        Using viewer = New Viewer("sample.epub")
            ' Create an HTML file for each document page.
            ' {0} is replaced with the current page number in the file name.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.epub" >}}
{{< tab-text >}}
`sample.epub` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-ebooks/sample.epub) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-ebook-to-html.zip" >}}  
```text
page_1.html (53 KB)
page_2.html (735 KB)
page_3.html (388 KB)
page_4.html (732 KB)
page_5.html (736 KB)
page_6.html (395 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-ebooks/RenderEbookToHtml/render-ebook-to-html.zip)
{{< /tab >}}
{{< /tabs >}}

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.ForExternalResources](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forexternalresources/index) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "render-ebook-to-html-external">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.epub"))
{
    // Create an HTML file for each document page.
    // Specify the HTML file names and location of external resources.
    // {0} and {1} are replaced with the current page number and resource name, respectively.
    var viewOptions = HtmlViewOptions.ForExternalResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");
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
        Using viewer = New Viewer("sample.epub")
            ' Create an HTML file for each document page.
            ' Specify the HTML file names and location of external resources.
            ' {0} and {1} are replaced with the current page number and resource name, respectively.
            Dim viewOptions = HtmlViewOptions.ForExternalResources("page_{0}.html", "page_{0}/resource_{0}_ {1}", "page_{0}/resource_{0}_{1}")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.epub" >}}
{{< tab-text >}}
`sample.epub` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-ebooks/sample.epub) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-ebook-to-html-external.zip" >}}  
```text
page_1.html (2 KB)
page_1/resource_1_f.woff (11 KB)
page_1/resource_1_f1.woff (18 KB)
page_1/resource_1_i.png (7 KB)
page_1/resource_1_s.css (3 KB)
page_2.html (4 KB)
page_2/resource_2_f.woff (13 KB)
page_2/resource_2_f1.woff (20 KB)
page_2/resource_2_i.png (513 KB)
page_2/resource_2_s.css (3 KB)
[TRUNCATED] (30 files total)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-ebooks/RenderEbookToHtmlExternal/render-ebook-to-html-external.zip)
{{< /tab >}}
{{< /tabs >}}

External resources are placed in a separate folder.

## Render EBooks as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an EBook to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "render-ebook-to-pdf">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.epub"))
{
    // Create a PDF file for the document.
    // Specify the PDF file name.
    var viewOptions = new PdfViewOptions("output.pdf");
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
        Using viewer = New Viewer("sample.epub")
            ' Create a PDF file for the document.
            ' Specify the PDF file name.
            Dim viewOptions = New PdfViewOptions("output.pdf")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.epub" >}}
{{< tab-text >}}
`sample.epub` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-ebooks/sample.epub) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
```text
Binary file (PDF, 341 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-ebooks/RenderEbookToPdf/output.pdf)
{{< /tab >}}
{{< /tabs >}}

## Render EBooks as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an EBook to PNG. Use the [PngViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "render-ebook-to-png">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.epub"))
{
    // Create a PNG image for each document page.
    // {0} is replaced with the current page number in the image name.
    var viewOptions = new PngViewOptions("output_{0}.png");

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
        Using viewer = New Viewer("sample.epub")
            ' Create a PNG image for each document page.
            ' {0} is replaced with the current page number in the image name.
            Dim viewOptions = New PngViewOptions("output_{0}.png")

            ' Set width and height.
            viewOptions.Width = 800
            viewOptions.Height = 900
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.epub" >}}
{{< tab-text >}}
`sample.epub` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-ebooks/sample.epub) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-ebook-to-png.zip" >}}  
```text
output_1.png (40 KB)
output_2.png (372 KB)
output_3.png (226 KB)
output_4.png (305 KB)
output_5.png (360 KB)
output_6.png (288 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-ebooks/RenderEbookToPng/render-ebook-to-png.zip)
{{< /tab >}}
{{< /tabs >}}

## Render EBooks as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an EBook to JPEG. Use the [JpgViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "render-ebook-to-jpg">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.epub"))
{
    // Create a JPEG image for each document page.
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
        Using viewer = New Viewer("sample.epub")
            ' Create a JPEG image for each document page.
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
{{< tab "sample.epub" >}}
{{< tab-text >}}
`sample.epub` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-ebooks/sample.epub) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-ebook-to-jpg.zip" >}}  
```text
output_1.jpg (31 KB)
output_2.jpg (75 KB)
output_3.jpg (47 KB)
output_4.jpg (60 KB)
output_5.jpg (66 KB)
output_6.jpg (73 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-ebooks/RenderEbookToJpg/render-ebook-to-jpg.zip)
{{< /tab >}}
{{< /tabs >}}

