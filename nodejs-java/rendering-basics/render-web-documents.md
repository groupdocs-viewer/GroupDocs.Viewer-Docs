---
id: render-web-documents
url: viewer/nodejs-java/render-web-documents
title: Render web documents as PDF, PNG, and JPEG files
linkTitle: Render Web documents
weight: 9
description: "This topic describes how to use the GroupDocs.Viewer Node.js API to convert web documents to PDF, PNG, and JPEG formats."
keywords: convert html, html to pdf, html to jpeg, html to png, html to image
productName: GroupDocs.Viewer for Node.js via Java
hideChildren: False
toc: True
aliases:
    - /viewer/nodejs-java/view-web-documents
    - /viewer/nodejs-java/how-to-convert-and-view-chm-files
    - /viewer/nodejs-java/how-to-convert-and-view-html-files-with-margins
---
[GroupDocs.Viewer for Node.js](https://products.groupdocs.com/viewer/nodejs-java) allows you to render web documents as PDF, PNG, and JPEG files. Use this library to view web files within your Java application. 

To start using the GroupDocs.Viewer API, create a [Viewer](#) class instance. Pass a web document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.view](#) method overloads to convert the document to PDF or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/web" >}} {{< icon "gdoc_person" >}} View web files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported web file formats

GroupDocs.Viewer supports the following web file formats:

* [Hypertext Markup Language Format](https://docs.fileformat.com/web/html/) (.HTML / .HTM)
* [MIME HTML Format](https://docs.fileformat.com/web/mhtml/) (.MHTML)
* [MHTML Web Archive](https://docs.fileformat.com/web/mht/) (.MHT)
* [Compiled HTML Help Format](https://docs.fileformat.com/web/chm/) (.CHM)

## Render web documents as PDF

Create a [PdfViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a web file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/nodejs-java/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "render-web-to-pdf">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, PdfViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("groupdocs-documentation.mhtml")
 // Create a PDF file for the document.
// Specify the PDF file name.
const viewOptions = PdfViewOptions("render-web-to-pdf/mhtml-to-pdf.pdf")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "groupdocs-documentation.mhtml" >}}
{{< tab-text >}}
`groupdocs-documentation.mhtml` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-web-documents/groupdocs-documentation.mhtml) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a web file to PDF](/viewer/nodejs-java/images/rendering-basics/render-web-documents/render-web-to-pdf.png)

## Render web documents as PNG

Create a [PngViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a web file to PNG. Use the [PngViewOptions.setHeight](#) and [PngViewOptions.setWidth](#) methods to specify the output image size in pixels.

{{< tabs "render-web-to-png">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, PngViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("groupdocs-documentation.mhtml")
// Convert the web file to PNG.
// {0} is replaced with the page numbers in the output image names.
const viewOptions = PngViewOptions("render-web-to-png/mhtml-to-png-page_{0}.png")
 // Set width and height.
viewOptions.setWidth(950)
viewOptions.setHeight(800)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "groupdocs-documentation.mhtml" >}}
{{< tab-text >}}
`groupdocs-documentation.mhtml` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-web-documents/groupdocs-documentation.mhtml) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a web file to PNG](/viewer/nodejs-java/images/rendering-basics/render-web-documents/render-web-to-png.png)

## Render web documents as JPEG

Create a [JpgViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a web file to JPEG. Use the [JpgViewOptions.setHeight](#) and [JpgViewOptions.setWidth](#) methods to specify the output image size in pixels.

{{< tabs "render-web-to-jpeg">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, JpgViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("groupdocs-documentation.mhtml")
// Create a JPEG image for each drawing page.
// {0} is replaced with the current page number in the image name.
const viewOptions = JpgViewOptions("render-web-to-jpeg/mhtml-to-jpg-page_{0}.jpg")
 // Set width and height.
viewOptions.setWidth(1600)
viewOptions.setHeight(650)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "groupdocs-documentation.mhtml" >}}
{{< tab-text >}}
`groupdocs-documentation.mhtml` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-web-documents/groupdocs-documentation.mhtml) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Convert CHM files to HTML

[CHM](https://docs.fileformat.com/web/chm/) is a Microsoft proprietary online help format that is often used for software documentation. With GroupDocs.Viewer, you can convert a CHM file to HTML to display this file in a web browser. To do this, create an [HtmlViewOptions](#) class instance and pass it to the [Viewer.view](#) method. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/nodejs-java/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}).

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.forEmbeddedResources](#) method and specify the output file name.

{{< tabs "render-chm-to-html-embedded">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, HtmlViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.chm")
// Convert the CHM file to HTML.
// {0} is replaced with the page numbers in the output file names.
const viewOptions = HtmlViewOptions.forEmbeddedResources("render-chm-to-html-embedded/chm-to-html-page_{0}.html")
// Enable the following option to display all CHM content on a single HTML page.
// viewOptions.setRenderToSinglePage(true);
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.chm" >}}
{{< tab-text >}}
`sample.chm` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-web-documents/sample.chm) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a web file to HTML](/viewer/nodejs-java/images/rendering-basics/render-web-documents/render-chm-to-html.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.forExternalResources](#) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "render-chm-to-html-external">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, HtmlViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.chm")
// Convert the CHM file to HTML.
// Specify the output file names and location of external resources.
const viewOptions = HtmlViewOptions.forExternalResources("render-chm-to-html-external/chm-to-html-page_{0}.html", "render-chm-to-html-external/chm-to-html-page_{0}/resource_{0}_{1}", "render-chm-to-html-external/chm-to-html-page_{0}/resource_{0}_{1}");
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.chm" >}}
{{< tab-text >}}
`sample.chm` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-web-documents/sample.chm) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}