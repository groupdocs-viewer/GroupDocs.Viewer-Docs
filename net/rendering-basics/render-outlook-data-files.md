---
id: render-outlook-data-files
url: viewer/net/render-outlook-data-files
title: Render Outlook data files as HTML, PDF, and image files
linkTitle: Render Outlook data files
weight: 11
description: "This topic describes how to use the GroupDocs.Viewer .NET API (C#) to convert Outlook data files (PST and OST) to HTML, PDF, PNG, and JPEG formats."
keywords: convert ost to pdf, convert pst to pdf, convert ost to html, convert pst to html, convert ost to png, convert pst to png, convert ost to jpeg, convert pst to jpeg
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
aliases:
    - /viewer/net/view-outlook-data-files
    - /viewer/net/filter-messages
    - /viewer/net/how-to-convert-and-view-ost-and-pst-files
    - /viewer/net/how-to-get-outlook-data-file-folders
    - /viewer/net/limit-count-of-items-to-render
    - /viewer/net/render-outlook-data-file-folder
---
[GroupDocs.Viewer for .NET](https://products.groupdocs.com/viewer/net) allows you to render Microsoft Outlook data files in HTML, PDF, PNG, and JPEG formats. Use this library to display the contents of OST and PST files within your .NET application (web or desktop). 

To start with the GroupDocs.Viewer API, create a [Viewer](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class instance. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method overloads to convert the document to HTML, PDF, or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/outlook" >}} {{< icon "gdoc_person" >}} View Outlook files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported Outlook data file formats

GroupDocs.Viewer supports the following file formats:

* [Outlook Offline Storage Table](https://docs.fileformat.com/email/ost) (.OST)
* [Outlook Personal Storage Table](https://docs.fileformat.com/email/pst) (.PST)

GroupDocs.Viewer can detect the document format automatically based on information in the file header.

## Render Outlook data files as HTML

To convert an OST or PST file to HTML, call the [HtmlViewOptions.ForEmbeddedResources](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method to create an [HtmlViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions) class instance and pass this instance to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method.

{{< tabs "example1">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pst"))
{
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("output.html");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a PST file to HTML](/viewer/net/images/rendering-basics/render-outlook-files/render-pst-to-html.png)

## Render Outlook data files as PDF

Create a [PdfViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an OST or PST file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example2">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pst"))
{
    var viewOptions = new PdfViewOptions("output.pdf");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a PST file to PDF](/viewer/net/images/rendering-basics/render-outlook-files/render-pst-to-pdf.png)

## Render Outlook data files as PNG

Create a [PngViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an OST or PST file to PNG. Use the [PngViewOptions.Height](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example3">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pst"))
{
    // Convert the PST file to PNG.
    // {0} is replaced with the page numbers in the output image names.
    var viewOptions = new PngViewOptions("output_{0}.png");
    viewOptions.Width = 800;
    viewOptions.Height = 900;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a PST file to PNG](/viewer/net/images/rendering-basics/render-outlook-files/render-pst-to-png.png)

## Render Outlook data files as JPEG

Create a [JpgViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an OST or PST file to JPEG. Use the [JpgViewOptions.Height](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pst"))
{
    // Convert the PST file to JPEG.
    // {0} is replaced with the page numbers in the output image names.
    var viewOptions = new JpgViewOptions("output_{0}.jpg");
    viewOptions.Width = 800;
    viewOptions.Height = 900;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Obtain information about folders in an Outlook data file

Follow the steps below to obtain information about folders contained in an Outlook data file.

1. Create a [ViewInfoOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/viewinfooptions) instance for a specific view.
2. Call the [Viewer.GetViewInfo](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getviewinfo) method, pass the `ViewInfoOptions` instance to this method as a parameter, and cast the returned object to the [OutlookViewInfo](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.results/outlookviewinfo) type.
3. Use the [OutlookViewInfo.Folders](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.results/outlookviewinfo/properties/folders) property to obtain the list of folders in the Outlook data file.

{{< tabs "example5">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Results;
// ...

using (var viewer = new Viewer("sample.pst"))
{
    var viewInfoOptions = ViewInfoOptions.ForHtmlView();
    var viewInfo = viewer.GetViewInfo(viewInfoOptions) as OutlookViewInfo;

    if (viewInfo != null)
    {
        // Display information about the PST file.
        Console.WriteLine($"File type: {viewInfo.FileType}");
        Console.WriteLine($"The number of pages: {viewInfo.Pages.Count}");

        // Display the list of folders that the PST file contains.
        Console.WriteLine("The file contains the following folders:");
        foreach (string folder in viewInfo.Folders)
            Console.WriteLine(folder);
    }
}
```
{{< /tab >}}
{{< /tabs >}}

## Specify rendering options

GroupDocs.Viewer supports the [OutlookOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/outlookoptions) class that allows you to specify different options for rendering Outlook data files. To access these options, use the [OutlookOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/outlookoptions) property for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)

### Render a specific folder

When you convert an OST or PST file to HTML, PDF, or image format, GroupDocs.Viewer renders messages from all folders contained in the file (including nested folders). If you want to render items from a specific folder, set the [OutlookOptions.Folder](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/outlookoptions/properties/folder) property for a target view. Specify the folder name as follows: `{Parent folder name}\\{Subfolder name}`.


{{< tabs "example6">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pst"))
{
    var viewOptions = HtmlViewOptions.ForEmbeddedResources();
    // Render messages from the "Inbox" folder and its subfolders.
    viewOptions.OutlookOptions.Folder = "Inbox";
    // Render messages from a specific subfolder in the "Inbox" folder.
    // viewOptions.OutlookOptions.Folder = "Inbox\\Work\\Urgent";
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

### Limit the number of folder items to render

When you load large Outlook data files, it may take a significant amount of time to retrieve and render file contents. To improve rendering performance, use the [OutlookOptions.MaxItemsInFolder](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/outlookoptions/properties/maxitemsinfolder) property to limit the number of rendered items (messages, contacts, or tasks) in each folder. The default property value is **50**. Set this property to **0** to render all existing items. 

The following example demonstrates how to specify the maximum number of folder items to render:

{{< tabs "example7">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pst"))
{
    var viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.OutlookOptions.MaxItemsInFolder = 30;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

### Filter messages

Microsoft Outlook allows you to filter messages by specific words in the message body or by part of the sender's or recipient's address.

![Filter messages in Microsoft Outlook](/viewer/net/images/rendering-basics/render-outlook-files/filter-messages.png)

With GroupDocs.Viewer, you can also filter messages before rendering an Outlook data file to HTML, PDF, or image format. To do this, use the following properties:

* [OutlookOptions.TextFilter](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/outlookoptions/properties/textfilter)---Allows you to render all messages that contain specific text in the subject or body.
* [OutlookOptions.AddressFilter](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/outlookoptions/properties/addressfilter)---Allows you to render all messages that contain specific text in the sender's or recipient's address.

The following code sample filters messages in a PST file before rendering this file to HTML:

{{< tabs "example8">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pst"))
{
    var viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.OutlookOptions.TextFilter = "Viewer";
    viewOptions.OutlookOptions.AddressFilter = "groupdocs.com";
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
