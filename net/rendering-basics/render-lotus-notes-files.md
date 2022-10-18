---
id: render-lotus-notes-database-files
url: viewer/net/render-lotus-notes-database-files
title: Render Lotus Notes database files as HTML, PDF, and image files
linkTitle: Render Lotus Notes database files
weight: 12
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

To start with the GroupDocs.Viewer API, create a [Viewer](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class instance. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method overloads to convert the document to HTML, PDF, or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/nsf" >}} {{< icon "gdoc_person" >}} View NSF files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Render Lotus Notes database files as HTML

To convert an NSF file to HTML, call the [HtmlViewOptions.ForEmbeddedResources](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method to create an [HtmlViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions) class instance and pass this instance to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method.

{{< tabs "example1">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.nsf"))
{
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("output.html");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an NSF file to HTML](/viewer/net/images/rendering-basics/render-lotus-notes-data-files/render-nsf-to-html.png)

## Render Lotus Notes database files as PDF

Create a [PdfViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an NSF file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example2">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.nsf"))
{
    var viewOptions = new PdfViewOptions("output.pdf");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an NSF file to PDF](/viewer/net/images/rendering-basics/render-lotus-notes-data-files/render-nsf-to-pdf.png)

## Render Lotus Notes database files as PNG

Create a [PngViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an NSF file to PNG. Use the [PngViewOptions.Height](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example3">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.nsf"))
{
    // Convert the NSF file to PNG.
    // {0} is replaced with the page numbers in the output image names.
    var viewOptions = new PngViewOptions("output_{0}.png");
    viewOptions.Width = 800;
    viewOptions.Height = 1000;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an NSF file to PNG](/viewer/net/images/rendering-basics/render-lotus-notes-data-files/render-nsf-to-png.png)

## Render Lotus Notes database files as JPEG

Create a [JpgViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an NSF file to JPEG. Use the [JpgViewOptions.Height](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.nsf"))
{
    // Convert the NSF file to JPEG.
    // {0} is replaced with the page numbers in the output image names.
    var viewOptions = new JpgViewOptions("output_{0}.jpg");
    viewOptions.Width = 800;
    viewOptions.Height = 1000;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Specify rendering options

GroupDocs.Viewer supports the [MailStorageOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/mailstorageoptions/) class that allows you to specify different options for rendering Lotus Notes database files. To access these options, use the [MailStorageOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/mailstorageoptions/) property for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)

### Limit the number of items to render

When you load large Lotus Notes database files, it may take a significant amount of time to retrieve and render file contents. To improve rendering performance, use the [MailStorageOptions.MaxItems](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/mailstorageoptions/maxitems/) property to limit the number of rendered items. The default property value is **0** (all existing items appear in the output file). 

The following example demonstrates how to specify the maximum number of items to render:

{{< tabs "example5">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.nsf"))
{
    var viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.MailStorageOptions.MaxItems = 20;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

### Filter messages

IBM Notes allows you to filter messages by specific words in the message body or by part of the sender's or recipient's address.

![Filter messages in IBM Notes](/viewer/net/images/rendering-basics/render-lotus-notes-data-files/filter-nsf-messages.png)

With GroupDocs.Viewer, you can also filter messages before rendering a Lotus Notes database file to HTML, PDF, or image format. To do this, use the following properties:

* [MailStorageOptions.TextFilter](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/mailstorageoptions/textfilter/)---Allows you to render all messages that contain specific text in the subject or body.
* [MailStorageOptions.AddressFilter](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/mailstorageoptions/addressfilter/)---Allows you to render all messages that contain specific text in the sender's or recipient's address.

The following code sample filters messages in an NSF file before rendering this file to HTML:

{{< tabs "example6">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.nsf"))
{
    var viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.MailStorageOptions.TextFilter = "Viewer";
    viewOptions.MailStorageOptions.AddressFilter = "groupdocs.com";
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
