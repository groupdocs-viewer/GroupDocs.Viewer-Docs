---
id: render-word-documents
url: viewer/nodejs-java/render-word-documents
title: Render Word documents as HTML, PDF, and image files
linkTitle: Render Word documents
weight: 1
description: "This topic describes how to use the GroupDocs.Viewer and Node.js to convert Word documents to HTML, PDF, PNG, and JPEG formats."
keywords: convert word to pdf, convert word to jpeg, convert doc to pdf, convert docx to pdf, convert word to jpg, convert word to jpeg
productName: GroupDocs.Viewer for Node.js via Java
hideChildren: False
toc: True
aliases:
    - /viewer/nodejs-java/how-to-view-word-documents-using-csharp/
    - /viewer/nodejs-java/show-document-comments
---
[GroupDocs.Viewer for Node.js](https://products.groupdocs.com/viewer/nodejs-java) allows you to render your Microsoft Word documents in HTML, PDF, PNG, and JPEG formats. You do not need to use Microsoft Word or other word processors to load and view Word documents within your JavaScript application (web or desktop). 

To start using the GroupDocs.Viewer API, create a [Viewer](#) class instance. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.view](#) method overloads to convert the document to HTML, PDF, or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/word" >}} {{< icon "gdoc_person" >}} View Word files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Node.js-via-Java" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported Word Processing file formats

GroupDocs.Viewer supports the following Word Processing file formats:

* [Microsoft Word Document](https://docs.fileformat.com/word-processing/docx) (.DOCX)
* [Microsoft Word 97-2003 Document](https://docs.fileformat.com/word-processing/doc) (.DOC)
* [Microsoft Word Macro-Enabled Document](https://docs.fileformat.com/word-processing/docm) (.DOCM)
* [Microsoft Word 97-2003 Template](https://docs.fileformat.com/word-processing/dot) (.DOT)
* [Microsoft Word Macro-Enabled Template](https://docs.fileformat.com/word-processing/dotm) (.DOTM)
* [Microsoft Word Template](https://docs.fileformat.com/word-processing/dotx) (.DOTX)
* [OpenDocument Text](https://docs.fileformat.com/word-processing/odt) (.ODT)
* [OpenDocument Text Template](https://docs.fileformat.com/word-processing/ott) (.OTT)
* [Rich Text Document](https://docs.fileformat.com/word-processing/rtf) (.RTF)
* [Plain Text Document](https://docs.fileformat.com/word-processing/txt) (.TXT)

## Render Word documents as HTML

Create an [HtmlViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a Word file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/nodejs-java/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.forEmbeddedResources](#) method and specify the output file name.

{{< tabs "example1">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("resume.docx")
// Create an HTML files.
// {0} is replaced with the current page number in the file name.
const viewOptions = groupdocs.viewer.HtmlViewOptions.forEmbeddedResources("page_{0}.html")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a Word file to HTML](/viewer/nodejs-java/images/rendering-basics/render-word-documents/render-to-html-embedded-resources.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.forExternalResources](#) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "example2">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("resume.docx")
// Create an HTML file for each page.
// Specify the HTML file names and location of external resources.
// {0} and {1} are replaced with the current page number and resource name, respectively.
const viewOptions = groupdocs.viewer.HtmlViewOptions.forExternalResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/nodejs-java/images/rendering-basics/render-word-documents/render-to-html-external-resources.png)

## Render Word documents as PDF

Create a [PdfViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a Word file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/nodejs-java/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example3">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("resume.docx")
// Create a PDF file for the document.
// Specify the PDF file name.
const viewOptions = groupdocs.viewer.PdfViewOptions("output.pdf")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a Word file to PDF](/viewer/nodejs-java/images/rendering-basics/render-word-documents/render-to-pdf.png)

## Render Word documents as PNG

Create a [PngViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a Word file to PNG. Use the [PngViewOptions.setHeight](#) and [PngViewOptions.setWidth](#) methods to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("resume.docx")
// Create a PNG image for each document page.
// {0} is replaced with the current page number in the image name.
const viewOptions = groupdocs.viewer.PngViewOptions("output_{0}.png")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}
The following image demonstrates the result:

![Render a Word file to PNG](/viewer/nodejs-java/images/rendering-basics/render-word-documents/render-to-png-image.png)

## Render Word documents as JPEG

Create a [JpgViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a Word file to JPEG. Use the [JpgViewOptions.setHeight](#) and [JpgViewOptions.setWidth](#) methods to specify the output image size in pixels.

{{< tabs "example5">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("resume.docx")
// Create a JPG image for each document page.
// {0} is replaced with the current page number in the image name.
const viewOptions = groupdocs.viewer.JpgViewOptions("output_{0}.png")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

## Define page margins

Use the following methods to specify the size of page margins in the output files when you convert your Word documents to HTML, PDF, and image formats: 

* [WordProcessingOptions.setTopMargin](#) specifies the distance (in points) between document content and the top edge of the page.
* [WordProcessingOptions.setBottomMargin](#) specifies the distance (in points) between document content and the bottom edge of the page.
* [WordProcessingOptions.setLeftMargin](#) specifies the distance (in points) between document content and the left edge of the page.
* [WordProcessingOptions.setRightMargin](#) specifies the distance (in points) between document content and the right edge of the page.

You can access these methods for the following classes:

* [HtmlViewOptions](#)
* [PdfViewOptions](#)
* [PngViewOptions](#)
* [JpgViewOptions](#) 

The example below converts a Word document to HTML and specifies page margins for the output file. 

{{< tabs "example6">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("resume.docx")
// Create an HTML file for each document page.
    // {0} is replaced with the current page number in the file name.
const viewOptions = groupdocs.viewer.HtmlViewOptions.forEmbeddedResources("page_{0}.html")
// Specify the size of page margins in points.
viewOptions.getWordProcessingOptions().setTopMargin(72)
viewOptions.getWordProcessingOptions().setBottomMargin(72)
viewOptions.getWordProcessingOptions().setLeftMargin(54)
viewOptions.getWordProcessingOptions().setRightMargin(54)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

## Render tracked changes

GroupDocs.Viewer does not render tracked changes (revisions made to a Word document) by default. If you want to display tracked changes in the output file, use the [WordProcessingOptions.setRenderTrackedChanges](#) method for one of the following classes (depending on the output file format):

* [HtmlViewOptions](#) 
* [PdfViewOptions](#)
* [PngViewOptions](#)
* [JpgViewOptions](#)

The following code example demonstrates how to render a Word document with tracked changes:

{{< tabs "example7">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("resume.docx")
// Convert the document to PDF.
const viewOptions = groupdocs.viewer.PdfViewOptions("output.pdf")
// Enable tracked changes rendering.
viewOptions.getWordProcessingOptions().setRenderTrackedChanges(true)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Render tracked changes to PDF](/viewer/nodejs-java/images/rendering-basics/render-word-documents/render-track-changes-to-pdf.png)

## Render comments

Use the [ViewOptions.setRenderComments](#) method for a target view to display comments in the output file when you convert your document to HTML, PDF, PNG, or JPEG format.

The code example below renders a Word document with comments to PDF.

{{< tabs "example8">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("resume.docx")
// Convert the document to PDF.
const viewOptions = groupdocs.viewer.PdfViewOptions("output.pdf")
// Enable rendering comments.
viewOptions.setRenderComments(true)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Render comments to PDF](/viewer/nodejs-java/images/rendering-basics/render-word-documents/render-comments-to-pdf.png)
