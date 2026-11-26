---
id: render-lotus-notes-database-files
url: viewer/net/render-lotus-notes-database-files
title: Render Lotus Notes database files as HTML, PDF, and image files
linkTitle: Render Lotus Notes database files
weight: 17
description: "This topic describes how to use the GroupDocs.Viewer .NET API (C#) to convert Lotus Notes database files (NSF) to HTML, PDF, PNG, and JPEG formats."
keywords: convert nsf to pdf, convert nsf to html, convert nsf to png, convert nsf to jpeg
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
aliases:
    - /viewer/net/view-lotus-notes-data-files
    - /viewer/net/filter-nsf-messages
    - /viewer/net/how-to-convert-and-view-nsf-files
---
[GroupDocs.Viewer for .NET](https://products.groupdocs.com/viewer/net) allows you to render [Lotus Notes Storage Facility (NSF)](https://docs.fileformat.com/database/nsf/) files in HTML, PDF, PNG, and JPEG formats. Use this library to display the contents of NSF files within your .NET application (web or desktop). 

To start with the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class instance. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method overloads to convert the document to HTML, PDF, or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/nsf" >}} {{< icon "gdoc_person" >}} View NSF files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Render Lotus Notes database files as HTML

To convert an NSF file to HTML, call the [HtmlViewOptions.ForEmbeddedResources](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method to create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions) class instance and pass this instance to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method.

{{< tabs "render-nsf-to-html">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.nsf"))
{
   // Create an HTML file.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("output.html");
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
        Using viewer = New Viewer("sample.nsf")
            ' Create an HTML file.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("output.html")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.nsf" >}}
{{< tab-text >}}
`sample.nsf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-lotus-notes-files/sample.nsf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.html" >}}  
```text
HTML file (278 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-lotus-notes-files/RenderNsfToHtml/output.html)
{{< /tab >}}
{{< /tabs >}}

## Render Lotus Notes database files as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an NSF file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "render-nsf-to-pdf">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.nsf"))
{
    // Create a PDF file.
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
        Using viewer = New Viewer("sample.nsf")
            ' Create a PDF file.
            Dim viewOptions = New PdfViewOptions("output.pdf")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.nsf" >}}
{{< tab-text >}}
`sample.nsf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-lotus-notes-files/sample.nsf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
```text
Binary file (PDF, 398 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-lotus-notes-files/RenderNsfToPdf/output.pdf)
{{< /tab >}}
{{< /tabs >}}

## Render Lotus Notes database files as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an NSF file to PNG. Use the [PngViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "render-nsf-to-png">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.nsf"))
{
    // Convert the NSF file to PNG.
    // {0} is replaced with the page numbers in the output image names.
    var viewOptions = new PngViewOptions("output_{0}.png");
    //  Set width and height.
    viewOptions.Width = 800;
    viewOptions.Height = 1000;
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
        Using viewer = New Viewer("sample.nsf")
            ' Convert the NSF file to PNG.
            ' {0} is replaced with the page numbers in the output image names.
            Dim viewOptions = New PngViewOptions("output_{0}.png")
            '  Set width and height.
            viewOptions.Width = 800
            viewOptions.Height = 1000
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.nsf" >}}
{{< tab-text >}}
`sample.nsf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-lotus-notes-files/sample.nsf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-nsf-to-png.zip" >}}  
```text
output_1.png (44 KB)
output_2.png (110 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-lotus-notes-files/RenderNsfToPng/render-nsf-to-png.zip)
{{< /tab >}}
{{< /tabs >}}

## Render Lotus Notes database files as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an NSF file to JPEG. Use the [JpgViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "render-nsf-to-jpg">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.nsf"))
{
    // Convert the NSF file to JPEG.
    // {0} is replaced with the page numbers in the output image names.
    var viewOptions = new JpgViewOptions("output_{0}.jpg");
    //  Set width and height.
    viewOptions.Width = 800;
    viewOptions.Height = 1000;
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
        Using viewer = New Viewer("sample.nsf")
            ' Convert the NSF file to JPEG.
            ' {0} is replaced with the page numbers in the output image names.
            Dim viewOptions = New JpgViewOptions("output_{0}.jpg")
            '  Set width and height.
            viewOptions.Width = 800
            viewOptions.Height = 1000
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.nsf" >}}
{{< tab-text >}}
`sample.nsf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-lotus-notes-files/sample.nsf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-nsf-to-jpg.zip" >}}  
```text
output_1.jpg (39 KB)
output_2.jpg (83 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-lotus-notes-files/RenderNsfToJpg/render-nsf-to-jpg.zip)
{{< /tab >}}
{{< /tabs >}}

## Specify rendering options

GroupDocs.Viewer supports the [MailStorageOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/mailstorageoptions/) class that allows you to specify different options for rendering Lotus Notes database files. To access these options, use the [MailStorageOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/mailstorageoptions/) property for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)

### Limit the number of items to render

When you load large Lotus Notes database files, it may take a significant amount of time to retrieve and render file contents. To improve rendering performance, use the [MailStorageOptions.MaxItems](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/mailstorageoptions/maxitems/) property to limit the number of rendered items. The default property value is **0** (all existing items appear in the output file). 

The following example demonstrates how to specify the maximum number of items to render:

{{< tabs "render-nsf-with-max-items">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.nsf"))
{
    // Create an HTML file.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("render-nsf-with-max-items_{0}.html");
    // Specify the maximum items to render.
    viewOptions.MailStorageOptions.MaxItems = 20;
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
        Using viewer = New Viewer("sample.nsf")
            ' Create an HTML file.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("render-nsf-with-max-items_{0}.html")
            ' Specify the maximum items to render.
            viewOptions.MailStorageOptions.MaxItems = 20
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.nsf" >}}
{{< tab-text >}}
`sample.nsf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-lotus-notes-files/sample.nsf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "p_1.html" >}}  
```text
HTML file (278 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-lotus-notes-files/RenderNsfWithMaxItems/p_1.html)
{{< /tab >}}
{{< /tabs >}}

### Filter messages

IBM Notes allows you to filter messages by specific words in the message body or by part of the sender's or recipient's address.

![Filter messages in IBM Notes](/viewer/net/images/rendering-basics/render-lotus-notes-data-files/filter-nsf-messages.png)

With GroupDocs.Viewer, you can also filter messages before rendering a Lotus Notes database file to HTML, PDF, or image format. To do this, use the following properties:

* [MailStorageOptions.TextFilter](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/mailstorageoptions/textfilter/)---Allows you to render all messages that contain specific text in the subject or body.
* [MailStorageOptions.AddressFilter](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/mailstorageoptions/addressfilter/)---Allows you to render all messages that contain specific text in the sender's or recipient's address.

The following code sample filters messages in an NSF file before rendering this file to HTML:

{{< tabs "render-nsf-with-filters">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.nsf"))
{
    // Create an HTML file.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("render-nsf-with-filters_{0}.html");
    // Set filters.
    viewOptions.MailStorageOptions.TextFilter = "Viewer";
    viewOptions.MailStorageOptions.AddressFilter = "groupdocs@mail.com";
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
        Using viewer = New Viewer("sample.nsf")
            ' Create an HTML file.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("render-nsf-with-filters_{0}.html")
            ' Set filters.
            viewOptions.MailStorageOptions.TextFilter = "Viewer"
            viewOptions.MailStorageOptions.AddressFilter = "groupdocs@mail.com"
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.nsf" >}}
{{< tab-text >}}
`sample.nsf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-lotus-notes-files/sample.nsf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "p_1.html" >}}  
```text
HTML file (32 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-lotus-notes-files/RenderNsfWithFilters/p_1.html)
{{< /tab >}}
{{< /tabs >}}
