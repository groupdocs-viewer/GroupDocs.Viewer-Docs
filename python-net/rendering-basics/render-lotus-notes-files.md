---
id: render-lotus-notes-database-files
url: viewer/python-net/render-lotus-notes-database-files
title: Render Lotus Notes database files as HTML, PDF, and image files
linkTitle: Render Lotus Notes database files
weight: 14
description: "Convert NSF files to HTML, PDF, PNG, or JPEG using the GroupDocs.Viewer Python API."
keywords: nsf conversion, lotus notes, pdf conversion, html conversion, png conversion, jpeg conversion, groupdocs viewer
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/view-lotus-notes-data-files
    - /viewer/python-net/filter-nsf-messages
    - /viewer/python-net/how-to-convert-and-view-nsf-files
---
[GroupDocs.Viewer for Python via .NET](https://products.groupdocs.com/viewer/python-net) allows you to render [Lotus Notes Storage Facility (NSF)](https://docs.fileformat.com/database/nsf/) files in HTML, PDF, PNG, and JPEG formats. Use this library to display the contents of NSF files within your .NET application (web or desktop). 

To start with the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) class instance. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method overloads to convert the document to HTML, PDF, or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/nsf" >}} {{< icon "gdoc_person" >}} View NSF files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Python-via-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Render Lotus Notes database files as HTML

To convert an NSF file to HTML, call the [HtmlViewOptions.for_embedded_resources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods) method to create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions) class instance and pass this instance to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method.

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.nsf") as viewer:
    # Create an HTML file.
    viewOptions = gvo.HtmlViewOptions.for_embedded_resources("output.html")
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an NSF file to HTML](/viewer/python-net/images/rendering-basics/render-lotus-notes-data-files/render-nsf-to-html.png)

## Render Lotus Notes database files as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert an NSF file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.nsf") as viewer:
    # Create an PDF file.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an NSF file to PDF](/viewer/python-net/images/rendering-basics/render-lotus-notes-data-files/render-nsf-to-pdf.png)

## Render Lotus Notes database files as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert an NSF file to PNG. Use the [PngViewOptions.height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/#properties) and [PngViewOptions.width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/#properties) properties to specify the output image size in pixels.

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.nsf") as viewer:
    # Convert the NSF file to PNG.
    # {0} is replaced with the page numbers in the output image names.
    viewOptions = gvo.PngViewOptions("output_{0}.png")
    # Set width and height.
    viewOptions.width = 800
    viewOptions.height = 1000
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an NSF file to PNG](/viewer/python-net/images/rendering-basics/render-lotus-notes-data-files/render-nsf-to-png.png)

## Render Lotus Notes database files as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert an NSF file to JPEG. Use the [JpgViewOptions.height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/#properties) and [JpgViewOptions.width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/#properties) properties to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.nsf") as viewer:
    # Convert the NSF file to JPEG.
    # {0} is replaced with the page numbers in the output image names.
    viewOptions = gvo.JpgViewOptions("output_{0}.jpg")
    # Set width and height.
    viewOptions.width = 800
    viewOptions.height = 1000
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

## Specify rendering options

GroupDocs.Viewer supports the [MailStorageOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/mailstorageoptions/) class that allows you to specify different options for rendering Lotus Notes database files. To access these options, use the [MailStorageOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/) property for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/jpgviewoptions)

### Limit the number of items to render

When you load large Lotus Notes database files, it may take a significant amount of time to retrieve and render file contents. To improve rendering performance, use the [mail_storage_options.max_items](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/mailstorageoptions/#properties) property to limit the number of rendered items. The default property value is **0** (all existing items appear in the output file). 

The following example demonstrates how to specify the maximum number of items to render:

{{< tabs "example5">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.nsf") as viewer:
    # Create an HTML file.
    viewOptions = gvo.HtmlViewOptions.for_embedded_resources()
    # Specify the maximum items to render.
    viewOptions.mail_storage_options.max_items = 20
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

### Filter messages

IBM Notes allows you to filter messages by specific words in the message body or by part of the sender's or recipient's address.

![Filter messages in IBM Notes](/viewer/python-net/images/rendering-basics/render-lotus-notes-data-files/filter-nsf-messages.png)

With GroupDocs.Viewer, you can also filter messages before rendering a Lotus Notes database file to HTML, PDF, or image format. To do this, use the following properties:

* [mail_storage_options.text_filter](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/mailstorageoptions/)---Allows you to render all messages that contain specific text in the subject or body.
* [mail_storage_options.address_filter](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/mailstorageoptions/)---Allows you to render all messages that contain specific text in the sender's or recipient's address.

The following code sample filters messages in an NSF file before rendering this file to HTML:

{{< tabs "example6">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.nsf") as viewer:
    # Create an HTML file.
    viewOptions = gvo.HtmlViewOptions.for_embedded_resources()
    # Set filters
    options.outlook_options.text_filter = "Viewer"
    options.outlook_options.address_filter = "groupdocs@mail.com"
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}
