---
id: render-outlook-data-files
url: viewer/python-net/render-outlook-data-files
title: Render Outlook data files as HTML, PDF, and image files
linkTitle: Render Outlook data files
weight: 13
description: "Convert Outlook (PST/OST) files to HTML, PDF, PNG, or JPEG using the GroupDocs.Viewer Python API."
keywords: convert ost to pdf, convert pst to pdf, ost to html, pst to html, ost to image, pst to image, outlook rendering
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/view-outlook-data-files
    - /viewer/python-net/filter-messages
    - /viewer/python-net/how-to-convert-and-view-ost-and-pst-files
    - /viewer/python-net/how-to-get-outlook-data-file-folders
    - /viewer/python-net/limit-count-of-items-to-render
    - /viewer/python-net/render-outlook-data-file-folder
---
[GroupDocs.Viewer for Python via .NET](https://products.groupdocs.com/viewer/python-net) allows you to render Microsoft Outlook data files in HTML, PDF, PNG, and JPEG formats. Use this library to display the contents of OST and PST files within your .NET application (web or desktop). 

To start with the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) class instance. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method overloads to convert the document to HTML, PDF, or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/outlook" >}} {{< icon "gdoc_person" >}} View Outlook files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Python-via-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported Outlook data file formats

GroupDocs.Viewer supports the following Outlook data file formats:

* [Outlook Offline Storage Table](https://docs.fileformat.com/email/ost) (.OST)
* [Outlook Personal Storage Table](https://docs.fileformat.com/email/pst) (.PST)

GroupDocs.Viewer can detect the document format automatically based on information in the file header.

## Render Outlook data files as HTML

To convert an OST or PST file to HTML, call the [HtmlViewOptions.for_embedded_resources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods) method to create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions) class instance and pass this instance to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method.

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.pst") as viewer:
    # Create an HTML file.
    viewOptions = gvo.HtmlViewOptions.for_embedded_resources("output.html")
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a PST file to HTML](/viewer/python-net/images/rendering-basics/render-outlook-files/render-pst-to-html.png)

## Render Outlook data files as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert an OST or PST file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.pst") as viewer:
    # Create a PDF file.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a PST file to PDF](/viewer/python-net/images/rendering-basics/render-outlook-files/render-pst-to-pdf.png)

## Render Outlook data files as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert an OST or PST file to PNG. Use the [PngViewOptions.height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/#properties) and [PngViewOptions.width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/#properties) properties to specify the output image size in pixels.

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.pst") as viewer:
    # Convert the PST file to PNG.
    # {0} is replaced with the page numbers in the output image names.
    viewOptions = gvo.PngViewOptions("output_{0}.png")
    # Set width and height.
    viewOptions.width = 800
    viewOptions.height = 900
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a PST file to PNG](/viewer/python-net/images/rendering-basics/render-outlook-files/render-pst-to-png.png)

## Render Outlook data files as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert an OST or PST file to JPEG. Use the [JpgViewOptions.height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/#properties) and [JpgViewOptions.width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/#properties) properties to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.pst") as viewer:
    # Convert the PST file to JPEG.
    # {0} is replaced with the page numbers in the output image names.
    viewOptions = gvo.JpgViewOptions("output_{0}.jpg")
    # Set width and height.
    viewOptions.width = 800
    viewOptions.height = 900
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

## Specify rendering options

GroupDocs.Viewer supports the [OutlookOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/outlookoptions) class that allows you to specify different options for rendering Outlook data files. To access these options, use the [outlook_options](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/#properties) property for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/jpgviewoptions)

### Render a specific folder

When you convert an OST or PST file to HTML, PDF, or image format, GroupDocs.Viewer renders messages from all folders contained in the file (including nested folders). If you want to render items from a specific folder, set the [outlook_options.folder](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/outlookoptions/#properties) property for a target view. Specify the folder name as follows: `{Parent folder name}\\{Subfolder name}`.


{{< tabs "example5">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.pst") as viewer:
    # Create an HTML file.
    viewOptions = gvo.HtmlViewOptions.for_embedded_resources("output.html")
    # Render messages from the "Inbox" folder and its subfolders.
    viewOptions.outlook_options.folder = "Inbox"
    # Render messages from a specific subfolder in the "Inbox" folder.
    # viewOptions.OutlookOptions.Folder = "Inbox\\Work\\Urgent";
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

### Limit the number of folder items to render

When you load large Outlook data files, it may take a significant amount of time to retrieve and render file contents. To improve rendering performance, use the [OutlookOptions.max_items_in_folder](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/outlookoptions/#properties) property to limit the number of rendered items (messages, contacts, or tasks) in each folder. The default property value is **50**. Set this property to **0** to render all existing items. 

The following example demonstrates how to specify the maximum number of folder items to render:

{{< tabs "example6">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.pst") as viewer:
    # Create an HTML file.
    viewOptions = gvo.HtmlViewOptions.for_embedded_resources()
    # Specify the maximum number of folder items.
    viewOptions.outlook_options.max_items_in_folder = 30
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

### Filter messages

Microsoft Outlook allows you to filter messages by specific words in the message body or by part of the sender's or recipient's address.

![Filter messages in Microsoft Outlook](/viewer/python-net/images/rendering-basics/render-outlook-files/filter-messages.png)

With GroupDocs.Viewer, you can also filter messages before rendering an Outlook data file to HTML, PDF, or image format. To do this, use the following properties:

* [OutlookOptions.text_filter](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/outlookoptions/#properties)---Allows you to render all messages that contain specific text in the subject or body.
* [OutlookOptions.address_filter](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/outlookoptions/#properties)---Allows you to render all messages that contain specific text in the sender's or recipient's address.

The following code sample filters messages in a PST file before rendering this file to HTML:

{{< tabs "example7">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.pst") as viewer:
    # Create an HTML file.
    viewOptions = gvo.HtmlViewOptions.for_embedded_resources()
    # Set filters.
    viewOptions.outlook_options.text_filter = "Viewer"
    viewOptions.outlook_options.address_filter = "groupdocs.com"
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}
