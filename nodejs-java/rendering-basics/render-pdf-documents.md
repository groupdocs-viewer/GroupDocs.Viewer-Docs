---
id: render-pdf-documents
url: viewer/nodejs-java/render-pdf-documents
title: Render PDF documents as HTML and image files
linkTitle: Render PDF documents
weight: 2
description: "This topic describes how to use the GroupDocs.Viewer Java API to convert PDF files to HTML, PNG, and JPEG formats."
keywords: view pdf, pdf viewer, pdf to html, pdf to jpeg, pdf to jpg, pdf to png, pdf to image, convert pdf
productName: GroupDocs.Viewer for Node.js via Java
hideChildren: False
toc: True
aliases:
    - /viewer/nodejs-java/how-to-view-pdf-documents-using-nodejs/
---
[GroupDocs.Viewer for Node.js](https://products.groupdocs.com/viewer/nodejs-java) allows you to render your PDF files in HTML, PNG, and JPEG formats. Use this library to implement a simple PDF viewer within your Java application (web or desktop).

Create a [Viewer](#) class instance to get started with the GroupDocs.Viewer API. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.view](#) method overloads to convert the document to HTML or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/pdf" >}} {{< icon "gdoc_person" >}} View PDF files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Node.js-via-Java" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported Page Layout file formats

GroupDocs.Viewer supports the following PDF and Page Layout file formats:

* [Portable Document Format](https://docs.fileformat.com/pdf/) (.PDF)
* [Microsoft XML Paper Specification](https://docs.fileformat.com/page-description-language/xps/) (.XPS)
* [Open XML Paper Specification](https://docs.fileformat.com/page-description-language/oxps/) (.OXPS)
* [LaTeX Source Document](https://docs.fileformat.com/page-description-language/tex/) (.TEX)

## Render PDF files as HTML

Create an [HtmlViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a PDF file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/nodejs-java/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}).

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.forEmbeddedResources](#) method and specify the output file name.

{{< tabs "render-pdf-to-html-embedded">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, HtmlViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("resume.pdf")
// Create an HTML files.
// {0} is replaced with the current page number in the file name.
const viewOptions = HtmlViewOptions.forEmbeddedResources("render-pdf-to-html-embedded/pdf-to-html-page_{0}.html")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "resume.pdf" >}}
{{< tab-text >}}
`resume.pdf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-pdf-documents/resume.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a PDF file to HTML](/viewer/nodejs-java/images/rendering-basics/render-pdf-documents/render-pdf-to-html.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.forExternalResources](#) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "render-pdf-to-html-external">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, HtmlViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("resume.pdf")
 // Create an HTML file for each PDF page.
// Specify the HTML file names and location of external resources.
// {0} and {1} are replaced with the current page number and resource name, respectively.
const viewOptions = HtmlViewOptions.forExternalResources("render-pdf-to-html-external/pdf-to-html-page_{0}.html", "render-pdf-to-html-external/pdf-to-html-page_{0}/resource_{0}_{1}", "render-pdf-to-html-external/pdf-to-html-page_{0}/resource_{0}_{1}")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "resume.pdf" >}}
{{< tab-text >}}
`resume.pdf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-pdf-documents/resume.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/nodejs-java/images/rendering-basics/render-pdf-documents/render-to-html-external-resources.png)

### Create HTML with fixed layout

By default, PDF and EPUB documents are rendered to HTML with fixed layout to ensure that the output HTML looks the same as a source document. Rendering to fixed layout means that all the HTML elements are absolutely positioned to the container element. And container element has a fixed size so browser window resizing will not have an effect on the position and size of elements in a document.

The following image demonstrates PDF document rendered HTML with fixed layout:

![Create HTML with fixed layout](/viewer/nodejs-java/images/rendering-basics/render-pdf-documents/render-pdf-to-html-with-fixed-layout.png)


### Adjust image quality in the output HTML file

The [HtmlviewOptions.getPdfOptions().setImageQuality()](#) methods allows you to specify the quality of images in the output HTML file. You can set this property to one of the following values:

* [ImageQuality.LOW](#) --- The image resolution is low (96 DPI), and the image size is small. Use this value to increase the conversion performance.
* [ImageQuality.MEDIUM](#) --- The image resolution is medium (192 DPI), and the image size is larger compared to the low quality images.
* [ImageQuality.HIGH](#) --- The image resolution is high (300 DPI), and the image size is big. Use of this value may decrease the conversion performance.

The following code snippet shows how to set the medium image quality when rendering a PDF document to HTML:

{{< tabs "render-pdf-with-image-quality">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, HtmlViewOptions, ImageQuality } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("resume.pdf")
// Create an HTML files.
// {0} is replaced with the current page number in the file name.
const viewOptions = HtmlViewOptions.forEmbeddedResources("render-pdf-with-image-quality/pdf-to-html-page_{0}.html")
// Set image quality to medium.
viewOptions.getPdfOptions().setImageQuality(ImageQuality.MEDIUM)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "resume.pdf" >}}
{{< tab-text >}}
`resume.pdf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-pdf-documents/resume.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

### Render text as an image

GroupDocs.Viewer supports the [HtmlViewOptions.getPdfOptions().setRenderTextAsImage](#) option that allows you to render text as an image when you convert a PDF file to HTML. In this case, the layout of the output HTML file closely mirrors the layout of the source PDF document.

The following code snippet shows how to enable this option in code:

{{< tabs "render-pdf-text-as-image">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, HtmlViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("resume.pdf")
// Create an HTML files.
// {0} is replaced with the current page number in the file name.
const viewOptions = HtmlViewOptions.forEmbeddedResources("render-pdf-text-as-image/pdf-to-html-page_{0}.html")
// Enable rendering text as image.
viewOptions.getPdfOptions().setRenderTextAsImage(true)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "resume.pdf" >}}
{{< tab-text >}}
`resume.pdf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-pdf-documents/resume.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result. PDF content is exported to HTML as an image, so users cannot select or copy document text.  

![Render PDF content as an image in the output HTML file](/viewer/nodejs-java/images/rendering-basics/render-pdf-documents/render-pdf-to-html-as-image.png)

### Enable multi-layer rendering

When you convert a PDF file to HTML, GroupDocs.Viewer creates an HTML document with a single layer (the `z-index` is not specified for document elements). This helps increase performance and reduce the output file size. If you convert a PDF document with multiple layers and want to improve the position of document elements in the output HTML file, use the [HtmlViewOptions.getPdfOptions().setEnableLayeredRendering](#) method to render text and graphics in the HTML file according to their z-order in the source PDF document.

The following code snippet shows how to enable the multi-layer rendering:

{{< tabs "render-pdf-with-multi-layer">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, HtmlViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("resume.pdf")
// Create an HTML files.
// {0} is replaced with the current page number in the file name.
const viewOptions = HtmlViewOptions.forEmbeddedResources("render-pdf-with-multi-layer/pdf-to-html-page_{0}.html")
// Enable the multi-layer rendering.
viewOptions.getPdfOptions().setEnableLayeredRendering(true)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "resume.pdf" >}}
{{< tab-text >}}
`resume.pdf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-pdf-documents/resume.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Render PDF files as images

### Convert PDF files to PNG

Create a [PngViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a PDF file to PNG. Use the [PngViewOptions.setHeight](#) and [PngViewOptions.setWidth](#) methods to specify the output image size in pixels.

{{< tabs "render-pdf-to-png">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, PngViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("resume.pdf")
// Create a PNG image for each PDF page.
// {0} is replaced with the current page number in the image name.
const viewOptions = PngViewOptions("render-pdf-to-png/pdf-to-png-page_{0}.png")
// Set width and height.
viewOptions.setWidth(950)
viewOptions.setHeight(550)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "resume.pdf" >}}
{{< tab-text >}}
`resume.pdf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-pdf-documents/resume.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a PDF file to PNG](/viewer/nodejs-java/images/rendering-basics/render-pdf-documents/render-pdf-to-png.png)

### Convert PDF files to JPEG

Create a [JpgViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a PDF file to JPEG. Use the [JpgViewOptions.setHeight](#) and [JpgViewOptions.setWidth](#) methods to specify the output image size in pixels.

{{< tabs "render-pdf-to-jpeg">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, JpgViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("resume.pdf")
// Create a JPG image for each PDF page.
// {0} is replaced with the current page number in the image name.
const viewOptions = JpgViewOptions("render-pdf-to-jpeg/pdf-to-jpg-page_{0}.jpg")
// Set width and height.
viewOptions.setWidth(950)
viewOptions.setHeight(550)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "resume.pdf" >}}
{{< tab-text >}}
`resume.pdf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-pdf-documents/resume.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

### Preserve the size of document pages

When you render PDF documents as images, GroupDocs.Viewer calculates the optimal image size to achieve better rendering quality. If you want the generated images to be the same size as pages in the source PDF document, use the [PdfOptions.setRenderOriginalPageSize](#) method of the [PngViewOptions](#) or [JpgViewOptions](#) class (depending on the output image format).

{{< tabs "render-pdf-preserve-page-size">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, PngViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("resume.pdf")
// Create a PNG image for each PDF page.
// {0} is replaced with the current page number in the image name.
const viewOptions = PngViewOptions("render-pdf-preserve-page-size/pdf-to-png-page_{0}.png")
// Preserve the size of document pages.
viewOptions.getPdfOptions().setRenderOriginalPageSize(true)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "resume.pdf" >}}
{{< tab-text >}}
`resume.pdf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-pdf-documents/resume.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

### Enable font hinting

To adjust the display of outline fonts when you convert PDF documents to PNG or JPEG, use the [PdfOptions.setEnableFontHinting](#) method, as shown below:

{{< tabs "render-pdf-enable-font-hinting">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, PngViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("resume.pdf")
// Create a PNG image for each PDF page.
// {0} is replaced with the current page number in the image name.
const viewOptions = PngViewOptions("render-pdf-enable-font-hinting/pdf-to-png-page_{0}.png")
// Enable font hinting
viewOptions.getPdfOptions().setEnableFontHinting(true)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "resume.pdf" >}}
{{< tab-text >}}
`resume.pdf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-pdf-documents/resume.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

Refer to the following article for more information on font hinting: [Font hinting](https://en.wikipedia.org/wiki/Font_hinting).

## Disable character grouping

When you render PDF files in other formats, GroupDocs.Viewer groups individual characters into words to improve rendering performance. If your document contains hieroglyphic or special symbols, you may need to disable character grouping to generate a more precise layout. To do this, use the [PdfOptions.setDisableCharsGrouping](#) method, as shown below:

{{< tabs "render-pdf-disable-chars-grouping">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, PngViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("resume.pdf")
// Create a PNG image for each PDF page.
// {0} is replaced with the current page number in the image name.
const viewOptions = PngViewOptions("render-pdf-disable-chars-grouping/pdf-to-png-page_{0}.png")
// Disable character grouping.
viewOptions.getPdfOptions().setDisableCharsGrouping(true)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "resume.pdf" >}}
{{< tab-text >}}
`resume.pdf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-pdf-documents/resume.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Render text comments

Use the [ViewOptions.setRenderComments](#) method for a target view to display textual annotations (such as text comments, sticky notes, text boxes and callouts) in the output HTML, PNG, or JPEG files.

The code example below renders a PDF file with text comments as an image.

{{< tabs "render-pdf-with-comments">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, PngViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("resume.pdf")
// Create a PNG image for each PDF page.
// {0} is replaced with the current page number in the image name.
const viewOptions = PngViewOptions("render-pdf-to-png/pdf-to-png-page_{0}.png")
// Enable rendering comments.
viewOptions.setRenderComments(true)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "resume.pdf" >}}
{{< tab-text >}}
`resume.pdf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-pdf-documents/resume.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Render PDF comments to PNG](/viewer/nodejs-java/images/rendering-basics/render-pdf-documents/render-pdf-comments.png)

## Get information about a PDF file

Follow the steps below to obtain information about a PDF file (the number of pages, page size, and printing permissions): 

1. Create a [ViewInfoOptions](#) instance for a specific view.
2. Call the [Viewer.getViewInfo](#) method, pass the `ViewInfoOptions` instance to this method as a parameter, and cast the returned object to the [PdfViewInfo](#) type.
3. Use the `PdfViewInfo` class properties to retrieve document-specific information.

{{< tabs "get-pdf-file-information">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, ViewInfoOptions } from '@groupdocs/groupdocs.viewer';

const viewInfoOptions = ViewInfoOptions.forHtmlView();
const viewer = new Viewer("resume.pdf")
const viewInfo = viewer.getViewInfo(viewInfoOptions)

// Display information about the PDF document.
console.log("File type: " + viewInfo.getFileType());
console.log("The number of pages: " + viewInfo.getPages().size());
console.log("Is printing allowed: " + viewInfo.isPrintingAllowed());
```
{{< /tab >}}
{{< tab "resume.pdf" >}}
{{< tab-text >}}
`resume.pdf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-pdf-documents/resume.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![Get information about a PDF file](/viewer/nodejs-java/images/rendering-basics/render-pdf-documents/retrieve-pdf-file-information.png)

### Extract text from a PDF file

Use the [ViewInfoOptions.setExtractText](#) method to enable PDF text extraction. Use the [PdfViewInfo.getPages](#) methods to obtain the list of all document pages, and use the ([Page.getLines](#) method to retrieve text for each line.

{{< tabs "extract-text-from-pdf">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, ViewInfoOptions } from '@groupdocs/groupdocs.viewer';

const viewInfoOptions = ViewInfoOptions.forHtmlView();
viewInfoOptions.setExtractText(true)

const viewer = new Viewer("resume.pdf")
const viewInfo = viewer.getViewInfo(viewInfoOptions)

// Retrieve text from the PDF file.
viewInfo.getPages().toArray().forEach(function(page) {
  page.getLines().toArray().forEach(function(line){
    console.log(line.getValue())
    })  
  })
```
{{< /tab >}}
{{< tab "resume.pdf" >}}
{{< tab-text >}}
`resume.pdf` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-pdf-documents/resume.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

![Extract and display PDF text](/viewer/nodejs-java/images/rendering-basics/render-pdf-documents/extract-pdf-text.png)
