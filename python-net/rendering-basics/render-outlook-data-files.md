---
id: render-outlook-data-files
url: viewer/python-net/render-outlook-data-files
title: Render Outlook data files as HTML, PDF, and image files
linkTitle: Render Outlook data files
weight: 13
description: "This topic describes how to use the GroupDocs.Viewer Python API to convert Outlook data files (PST and OST) to HTML, PDF, PNG, and JPEG formats."
keywords: convert ost to pdf, convert pst to pdf, convert ost to html, convert pst to html, convert ost to png, convert pst to png, convert ost to jpeg, convert pst to jpeg
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
[GroupDocs.Viewer for Python via .NET](https://products.groupdocs.com/viewer/python-net) allows you to render Microsoft Outlook data files in HTML, PDF, PNG, and JPEG formats. Use this library to display the contents of OST and PST files within your Python application (web or desktop). 

To start with the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) class instance. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view/index) method overloads to convert the document to HTML, PDF, or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/outlook" >}} {{< icon "gdoc_person" >}} View Outlook files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported Outlook data file formats

GroupDocs.Viewer supports the following Outlook data file formats:

* [Outlook Offline Storage Table](https://docs.fileformat.com/email/ost) (.OST)
* [Outlook Personal Storage Table](https://docs.fileformat.com/email/pst) (.PST)

GroupDocs.Viewer can detect the document format automatically based on information in the file header.

## Render Outlook data files as HTML

To convert an OST or PST file to HTML, call the [HtmlViewOptions.ForEmbeddedResources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method to create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions) class instance and pass this instance to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view/index) method.

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...

    # Create an HTML file.
    with gv.Viewer(test_files.sample_pst) as viewer:
        html_options = gvo.HtmlViewOptions.for_embedded_resources("page.html")
        viewer.view(html_options)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a PST file to HTML](/viewer/python-net/images/rendering-basics/render-outlook-files/render-pst-to-html.png)

## Render Outlook data files as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view/index) method to convert an OST or PST file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    # Create a PDF file.
    with gv.Viewer(test_files.sample_pst) as viewer:
        viewOptions = gvo.PdfViewOptions("output.pdf")
        viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a PST file to PDF](/viewer/python-net/images/rendering-basics/render-outlook-files/render-pst-to-pdf.png)

## Render Outlook data files as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view/index) method to convert an OST or PST file to PNG. Use the [PngViewOptions.Height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...

    # Convert the PST file to PNG.
    # {0} is replaced with the page numbers in the output image names.
    with gv.Viewer(test_files.sample_pst) as viewer:
        png_options = gvo.PngViewOptions("output_{0}.png")
        # Set width and height.
        png_options.width = 800
        png_options.height = 900
        viewer.view(png_options)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a PST file to PNG](/viewer/python-net/images/rendering-basics/render-outlook-files/render-pst-to-png.png)

## Render Outlook data files as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/methods/view/index) method to convert an OST or PST file to JPEG. Use the [JpgViewOptions.Height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...

    # Convert the PST file to JPEG.
    # {0} is replaced with the page numbers in the output image names.
    with gv.Viewer(test_files.sample_pst) as viewer:
        jpg_options = gvo.JpgViewOptions("output_{0}.jpg")
        # Set width and height.
        jpg_options.width = 950
        jpg_options.height = 900
        viewer.view(jpg_options)
```
{{< /tab >}}
{{< /tabs >}}

## Get information about folders in an Outlook data file

Follow the steps below to obtain information about folders contained in an Outlook data file.

1. Create a [ViewInfoOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/viewinfooptions) instance for a specific view.
2. Call the [Viewer.GetViewInfo](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getviewinfo) method, pass the `ViewInfoOptions` instance to this method as a parameter, and cast the returned object to the [OutlookViewInfo](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.results/outlookviewinfo) type.
3. Use the [OutlookViewInfo.Folders](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.results/outlookviewinfo/properties/folders) property to obtain the list of folders in the Outlook data file.

{{< tabs "example5">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    # Create an HTML file.
    with gv.Viewer(test_files.sample_pst) as viewer:
        info = viewer.get_view_info(gvo.ViewInfoOptions.for_html_view())

        if info is not None:
            # Display information about the PST file.
            print("File type:", info.file_type)
            print("The number of pages:", len(info.pages))

            # Display the list of folders that the PST file contains.
            print("The file contains the following folders:")
            for folder in info.folders:
                print(folder)
```
{{< /tab >}}
{{< /tabs >}}

## Specify rendering options

GroupDocs.Viewer supports the [OutlookOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/outlookoptions) class that allows you to specify different options for rendering Outlook data files. To access these options, use the [OutlookOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/baseviewoptions/properties/outlookoptions) property for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)

### Render a specific folder

When you convert an OST or PST file to HTML, PDF, or image format, GroupDocs.Viewer renders messages from all folders contained in the file (including nested folders). If you want to render items from a specific folder, set the [OutlookOptions.Folder](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/outlookoptions/properties/folder) property for a target view. Specify the folder name as follows: `{Parent folder name}\\{Subfolder name}`.


{{< tabs "example6">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
#  ...
    # Create an HTML file.
    with gv.Viewer(test_files.sample_pst) as viewer:
        html_options = gvo.HtmlViewOptions.for_embedded_resources()
        # Render messages from the "Inbox" folder and its subfolders.
        html_options.outlook_options.folder = "Inbox";
        # Render messages from a specific subfolder in the "Inbox" folder.
        # viewOptions.OutlookOptions.Folder = "Inbox\\Work\\Urgent";
        viewer.view(html_options)
```
{{< /tab >}}
{{< /tabs >}}

### Limit the number of folder items to render

When you load large Outlook data files, it may take a significant amount of time to retrieve and render file contents. To improve rendering performance, use the [OutlookOptions.MaxItemsInFolder](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/outlookoptions/properties/maxitemsinfolder) property to limit the number of rendered items (messages, contacts, or tasks) in each folder. The default property value is **50**. Set this property to **0** to render all existing items. 

The following example demonstrates how to specify the maximum number of folder items to render:

{{< tabs "example7">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
#  ...
    # Create an HTML file.
    with gv.Viewer(test_files.sample_pst) as viewer:
        html_options = gvo.HtmlViewOptions.for_embedded_resources()
        # Specify the maximum number of folder items.
        html_options.outlook_options.max_items_in_folder = 30
        viewer.view(html_options)
```
{{< /tab >}}
{{< /tabs >}}

### Filter messages

Microsoft Outlook allows you to filter messages by specific words in the message body or by part of the sender's or recipient's address.

![Filter messages in Microsoft Outlook](/viewer/python-net/images/rendering-basics/render-outlook-files/filter-messages.png)

With GroupDocs.Viewer, you can also filter messages before rendering an Outlook data file to HTML, PDF, or image format. To do this, use the following properties:

* [OutlookOptions.TextFilter](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/outlookoptions/properties/textfilter)---Allows you to render all messages that contain specific text in the subject or body.
* [OutlookOptions.AddressFilter](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/outlookoptions/properties/addressfilter)---Allows you to render all messages that contain specific text in the sender's or recipient's address.

The following code sample filters messages in a PST file before rendering this file to HTML:

{{< tabs "example8">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
#  ...
    # Create an HTML file.
    with gv.Viewer(test_files.sample_pst) as viewer:
        html_options = gvo.HtmlViewOptions.for_embedded_resources()
        # Set filters.
        html_options.outlook_options.text_filter = "Viewer";
        html_options.outlook_options.address_filder = "groupdocs.com";
        viewer.view(html_options)
```
{{< /tab >}}
{{< /tabs >}}
