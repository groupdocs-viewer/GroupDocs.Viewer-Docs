---
id: render-lotus-notes-database-files
url: viewer/nodejs-java/render-lotus-notes-database-files
title: Render Lotus Notes database files as HTML, PDF, and image files
linkTitle: Render Lotus Notes database files
weight: 14
description: "This topic describes how to use the GroupDocs.Viewer Node.js API to convert Lotus Notes database files (NSF) to HTML, PDF, PNG, and JPEG formats."
keywords: convert nsf to pdf, convert nsf to html, convert nsf to png, convert nsf to jpeg
productName: GroupDocs.Viewer for Node.js via Java
hideChildren: False
toc: True
aliases:
    - /viewer/nodejs-java/view-lotus-notes-data-files
    - /viewer/nodejs-java/filter-nsf-messages
    - /viewer/nodejs-java/how-to-convert-and-view-nsf-files
---
[GroupDocs.Viewer for Node.js via Java](https://products.groupdocs.com/viewer/nodejs-java) allows you to render [Lotus Notes Storage Facility (NSF)](https://docs.fileformat.com/database/nsf/) files in HTML, PDF, PNG, and JPEG formats. Use this library to display the contents of NSF files within your Node.js application (web or desktop). 

To start with the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer/viewer) class instance. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.view](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer/viewer/) method overloads to convert the document to HTML, PDF, or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/nsf" >}} {{< icon "gdoc_person" >}} View NSF files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Node.js-via-Java" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Render Lotus Notes database files as HTML

To convert an NSF file to HTML, call the [HtmlViewOptions.forEmbeddedResources](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/htmlviewoptions/#forEmbeddedResources--) method to create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/htmlviewoptions) class instance and pass this instance to the [Viewer.view](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer/viewer/) method.

{{< tabs "render-nsf-to-html">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, HtmlViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.nsf")
// Specify the HTML file name.
const viewOptions = HtmlViewOptions.forEmbeddedResources("render-nsf-to-html/nsf-to-html.html")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.nsf" >}}
{{< tab-text >}}
`sample.nsf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-lotus-notes-files/sample.nsf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an NSF file to HTML](/viewer/nodejs-java/images/rendering-basics/render-lotus-notes-data-files/render-nsf-to-html.png)

## Render Lotus Notes database files as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer/viewer/) method to convert an NSF file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/nodejs-java/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "render-nsf-to-pdf">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, PdfViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.nsf")
// Create a PDF file.
const viewOptions = PdfViewOptions("render-nsf-to-pdf/nsf-to-pdf.pdf")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.nsf" >}}
{{< tab-text >}}
`sample.nsf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-lotus-notes-files/sample.nsf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an NSF file to PDF](/viewer/nodejs-java/images/rendering-basics/render-lotus-notes-data-files/render-nsf-to-pdf.png)

## Render Lotus Notes database files as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer/viewer/) method to convert an NSF file to PNG. Use the [PngViewOptions.setHeight](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pngviewoptions/#setHeight-int-) and [PngViewOptions.setWidth](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pngviewoptions/#setWidth-int-) methods to specify the output image size in pixels.

{{< tabs "render-nsf-to-png">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, PngViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.nsf")
// Convert the NSF file to PNG.
// {0} is replaced with the page numbers in the output image names.
const viewOptions = PngViewOptions("render-nsf-to-png/nsf-to-png-page_{0}.png")
// Set width and height.
viewOptions.setWidth(950)
viewOptions.setHeight(550)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.nsf" >}}
{{< tab-text >}}
`sample.nsf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-lotus-notes-files/sample.nsf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an NSF file to PNG](/viewer/nodejs-java/images/rendering-basics/render-lotus-notes-data-files/render-nsf-to-png.png)

## Render Lotus Notes database files as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer/viewer/) method to convert an NSF file to JPEG. Use the [JpgViewOptions.setHeight](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/jpgviewoptions/#setHeight-int-) and [JpgViewOptions.setWidth](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/jpgviewoptions/#setWidth-int-) methods to specify the output image size in pixels.

{{< tabs "render-nsf-to-jpeg">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, JpgViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.nsf")
// Convert the NSF file to JPG.
// {0} is replaced with the page numbers in the output image names.
const viewOptions = JpgViewOptions("render-nsf-to-jpeg/nsf-to-jpg-page_{0}.jpg")
// Set width and height.
viewOptions.setWidth(950)
viewOptions.setHeight(550)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.nsf" >}}
{{< tab-text >}}
`sample.nsf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-lotus-notes-files/sample.nsf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Specify rendering options

GroupDocs.Viewer supports the [MailStorageOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/mailstorageoptions) class that allows you to specify different options for rendering Lotus Notes database files. To access these options, use the [setMailStorageOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/baseviewoptions/#setMailStorageOptions-com.groupdocs.viewer.options.MailStorageOptions-) method for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/jpgviewoptions)

### Limit the number of items to render

When you load large Lotus Notes database files, it may take a significant amount of time to retrieve and render file contents. To improve rendering performance, use the [MailStorageOptions.setMaxItems](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/mailstorageoptions/#setMaxItems-int-) method to limit the number of rendered items. The default property value is **0** (all existing items appear in the output file). 

The following example demonstrates how to specify the maximum number of items to render:

{{< tabs "render-nsf-limit-items">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, HtmlViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.nsf")
// Create an HTML file.
const viewOptions = HtmlViewOptions.forEmbeddedResources("render-nsf-limit-items/nsf-to-html.html")
// Specify the maximum items to render.
viewOptions.getMailStorageOptions().setMaxItems(20)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.nsf" >}}
{{< tab-text >}}
`sample.nsf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-lotus-notes-files/sample.nsf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

### Filter messages

IBM Notes allows you to filter messages by specific words in the message body or by part of the sender's or recipient's address.

![Filter messages in IBM Notes](/viewer/nodejs-java/images/rendering-basics/render-lotus-notes-data-files/filter-nsf-messages.png)

With GroupDocs.Viewer, you can also filter messages before rendering a Lotus Notes database file to HTML, PDF, or image format. To do this, use the following properties:

* [MailStorageOptions.setTextFilter](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/mailstorageoptions/#setTextFilter-java.lang.String-)---Allows you to render all messages that contain specific text in the subject or body.
* [MailStorageOptions.setAddressFilter](https://reference.groupdocs.com/viewer/nodejs-java/com.groupdocs.viewer.options/mailstorageoptions/#setAddressFilter-java.lang.String-)---Allows you to render all messages that contain specific text in the sender's or recipient's address.

The following code sample filters messages in an NSF file before rendering this file to HTML:

{{< tabs "render-nsf-filter-messages">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, HtmlViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.nsf")
// Create an HTML file.
const viewOptions = HtmlViewOptions.forEmbeddedResources("render-nsf-filter-messages/nsf-to-html.html")
 // Set filters.
viewOptions.getMailStorageOptions().setTextFilter("April 2015");
viewOptions.getMailStorageOptions().setAddressFilter("test@test.com");
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.nsf" >}}
{{< tab-text >}}
`sample.nsf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-lotus-notes-files/sample.nsf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}
