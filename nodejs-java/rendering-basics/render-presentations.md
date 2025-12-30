---
id: render-presentations
url: viewer/nodejs-java/render-presentations
title: Render PowerPoint presentations as HTML, PDF, and image files
linkTitle: Render PowerPoint presentations
weight: 4
description: "This topic describes how to use the GroupDocs.Viewer Node.js API to convert PowerPoint presentations to HTML, PDF, PNG, and JPEG formats."
keywords: convert pptx to pdf, convert pptx to html, convert pptx to jpeg, convert ppt to pdf, convert presentation to pdf, convert ppt to html, convert presentation to html, convert presentation to image
productName: GroupDocs.Viewer for Node.js via Java
hideChildren: False
toc: True
aliases:
    - /viewer/nodejs-java/view-powerpoint-presentations/
    - /viewer/nodejs-java/how-to-set-resolution-for-images-when-rendering-presentations-to-html/
    - /viewer/nodejs-java/how-to-convert-and-view-fodp-and-odp-files/
    - /viewer/nodejs-java/converting-presentations-with-shapes-and-text-with-3-d-effects/
    - /viewer/nodejs-java/show-document-notes
---
[GroupDocs.Viewer for Node.js](https://products.groupdocs.com/viewer/nodejs-java) allows you to render your presentations in HTML, PDF, PNG, and JPEG formats. You do not need to use Microsoft PowerPoint or other software to load and view presentations within your Java application (web or desktop). 

Create a [Viewer](#) class instance to get started with the GroupDocs.Viewer API. Pass a presentation you want to view to the class constructor. You can load the presentation from a file or stream. Call one of the [Viewer.view](#) method overloads to convert the presentation to HTML, PDF, or image format. These methods allow you to render the entire presentation or specific slides.

{{< button style="primary" link="https://products.groupdocs.app/viewer/powerpoint" >}} {{< icon "gdoc_person" >}} View PowerPoint files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Node.js-via-Java" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported Presentation file formats

GroupDocs.Viewer supports the following file formats:

* {{% closedlink title="Microsoft PowerPoint Presentation" href="https://docs.fileformat.com/presentation/pptx/" %}} (.PPTX)
* {{% closedlink title="Microsoft PowerPoint 97-2003 Presentation" href="https://docs.fileformat.com/presentation/ppt/" %}} (.PPT)
* {{% closedlink title="Microsoft PowerPoint Template" href="https://docs.fileformat.com/presentation/potx" %}} (.POTX)
* {{% closedlink title="Microsoft PowerPoint 97-2003 Template" href="https://docs.fileformat.com/presentation/pot" %}} (.POT)
* {{% closedlink title="Microsoft PowerPoint Macro-Enabled Template" href="https://docs.fileformat.com/presentation/potm" %}} (.POTM)
* {{% closedlink title="Microsoft PowerPoint Slide Show" href="https://docs.fileformat.com/presentation/ppsx" %}} (.PPSX)
* {{% closedlink title="Microsoft PowerPoint Macro-Enabled Slide Show" href="https://docs.fileformat.com/presentation/ppsm" %}} (.PPSM)
* {{% closedlink title="Microsoft PowerPoint 97-2003 Slide Show" href="https://docs.fileformat.com/presentation/pps" %}} (.PPS)
* {{% closedlink title="Microsoft PowerPoint Macro-Enabled Presentation" href="https://docs.fileformat.com/presentation/pptmx" %}} (.PPTM)
* {{% closedlink title="OpenDocument Presentation" href="https://docs.fileformat.com/presentation/odp" %}} (.ODP)
* {{% closedlink title="OpenDocument Presentation Template" href="https://docs.fileformat.com/presentation/otp" %}} (.OTP)
* {{% closedlink title="OpenDocument Flat XML Presentation" href="https://docs.fileformat.com/" %}} (.FODP)

## Render presentations as HTML

Create an [HtmlViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a presentation file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/nodejs-java/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.forEmbeddedResources](#) method and specify the output file name.

{{< tabs "render-presentation-to-html-embedded">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, HtmlViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.pptx")
// Create an HTML file for each slide.
// {0} is replaced with the current page number in the file name.
const viewOptions = HtmlViewOptions.forEmbeddedResources("render-presentation-to-html-embedded/pptx-to-html-page_{0}.html")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.pptx" >}}
{{< tab-text >}}
`sample.pptx` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-presentations/sample.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a presentation file to HTML](/viewer/nodejs-java/images/rendering-basics/render-presentations/render-to-html-embedded-resources.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.forExternalResources](#) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "render-presentation-to-html-external">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, HtmlViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.pptx")
// Create an HTML file for each slide.
// Specify the HTML file names and location of external resources.
// {0} and {1} are replaced with the current page number and resource name, respectively.
const viewOptions = HtmlViewOptions.forExternalResources("render-presentation-to-html-external/pptx-to-html-page_{0}.html", "render-presentation-to-html-external/pptx-to-html-page_{0}/resource_{0}_{1}", "render-presentation-to-html-external/pptx-to-html-page_{0}/resource_{0}_{1}");
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.pptx" >}}
{{< tab-text >}}
`sample.pptx` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-presentations/sample.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/nodejs-java/images/rendering-basics/render-presentations/render-to-html-external-resources.png)

## Render presentations as PDF

Create a [PdfViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a presentation file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/nodejs-java/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "render-presentation-to-pdf">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, PdfViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.pptx")
const viewOptions = PdfViewOptions("render-presentation-to-pdf/pptx-to-pdf.pdf")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.pptx" >}}
{{< tab-text >}}
`sample.pptx` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-presentations/sample.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a presentation file to PDF](/viewer/nodejs-java/images/rendering-basics/render-presentations/render-to-pdf.png)

## Render presentations as PNG

Create a [PngViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a presentation file to PNG. Use the [PngViewOptions.setHeight](#) and [PngViewOptions.setWidth](#) methods to specify the output image size in pixels.

{{< tabs "render-presentation-to-png">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, PngViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.pptx")
// Create a PNG image for each slide.
// {0} is replaced with the current page number in the image name.
const viewOptions = PngViewOptions("render-presentation-to-png/pptx-to-png-page_{0}.png")
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.pptx" >}}
{{< tab-text >}}
`sample.pptx` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-presentations/sample.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a presentation file to PNG](/viewer/nodejs-java/images/rendering-basics/render-presentations/render-to-png-image.png)

## Render presentations as JPEG

Create a [JpgViewOptions](#) class instance and pass it to the [Viewer.view](#) method to convert a presentation file to JPEG. Use the [JpgViewOptions.setHeight](#) and [JpgViewOptions.setWidth](#) methods to specify the output image size in pixels.


{{< tabs "render-presentation-to-jpeg">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, JpgViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.pptx")
// Create a JPG image for each slide.
// {0} is replaced with the current page number in the image name.
const viewOptions = JpgViewOptions("render-presentation-to-jpeg/pptx-to-jpg-page_{0}.jpg")
viewOptions.setWidth(950)
viewOptions.setHeight(550)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.pptx" >}}
{{< tab-text >}}
`sample.pptx` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-presentations/sample.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Specify image resolution

When you convert presentations with high-resolution images to other formats, you may need to lower image resolution to reduce the output file size. GroupDocs.Viewer supports the [PresentationOptions.setResolution](#) method that allows you to compress images in the output HTML and PDF files. To access this option, use the [HtmlViewOptions.setPresentationOptions](#) or [PdfViewOptions.setPresentationOptions](#) methods (depending on the output file format).

You can use the [PresentationOptions.setResolution](#) method to one of the following [Resolution](#) field values:

| Resolution field | DPI | Remarks |
| --- | --- | --- |
| DOCUMENT_RESOLUTION | As in the source file | This is the default value.|
| DPI_72 | 72 | Maximum image compression and minimum file size. |
| DPI_96 | 96 | Good for web pages and projectors. |
| DPI_150 | 150 | Good for web pages and projectors. |
| DPI_220 | 220 | Excellent quality on most printers and screens. |
| DPI_330 | 330 | Good quality for high-definition (HD) displays. |

The following example demonstrates how to specify image resolution in code: 

{{< tabs "render-presentation-with-image-resolution">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, PdfViewOptions, Resolution } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.pptx")
const viewOptions = PdfViewOptions("render-presentation-with-image-resolution/pptx-to-pdf.pdf")
viewOptions.getPresentationOptions().setResolution(Resolution.Dpi150)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.pptx" >}}
{{< tab-text >}}
`sample.pptx` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-presentations/sample.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Render hidden slides

If your presentation contains hidden slides, use the [ViewOptions.setRenderHiddenPages](#) method for a target view to display these slides in the output HTML, PDF, or image files.

The following code example uses this option to display hidden slides in the generated PDF file:

{{< tabs "render-presentation-hidden-slides">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, PdfViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.pptx")
const viewOptions = PdfViewOptions("render-presentation-hidden-slides/pptx-to-pdf.pdf")
viewOptions.setRenderHiddenPages(true)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.pptx" >}}
{{< tab-text >}}
`sample.pptx` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-presentations/sample.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Render comments

Use the [ViewOptions.setRenderComments](#) method for a target view to display comments in the output file when you convert your presentation to HTML, PDF, PNG, or JPEG format.

{{< tabs "render-presentation-with-comments">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, PdfViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.pptx")
const viewOptions = PdfViewOptions("render-presentation-with-comments/pptx-to-pdf.pdf")
viewOptions.setRenderComments(true)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.pptx" >}}
{{< tab-text >}}
`sample.pptx` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-presentations/sample.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a presentation with comments](/viewer/nodejs-java/images/rendering-basics/render-presentations/render-presentation-comments-to-pdf.png)

## Render speaker notes

A presentation file can contain speaker notes that help presenters recall important information during the presentation. Speaker notes appear in the **Notes** pane below each slide.

![Speaker notes in Microsoft PowerPoint](/viewer/nodejs-java/images/rendering-basics/render-presentations/presentation-speaker-notes.png)

Use the [ViewOptions.setRenderNotes](#) method for a target view to display speaker notes in the output HTML, PDF, or image files.

The following code sample renders a presentation with speaker notes to PDF:

{{< tabs "render-presentation-with-speaker-notes">}}
{{< tab "JavaScript" >}}
```js
import { Viewer, PdfViewOptions } from '@groupdocs/groupdocs.viewer';

const viewer = new Viewer("sample.pptx")
const viewOptions = PdfViewOptions("render-presentation-with-speaker-notes/pptx-to-pdf.pdf")
viewOptions.setRenderNotes(true)
viewer.view(viewOptions)
```
{{< /tab >}}
{{< tab "sample.pptx" >}}
{{< tab-text >}}
`sample.pptx` is the sample file used in this example. Click [here](/viewer/nodejs-java/_sample_files/rendering-basics/render-presentations/sample.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result.

![Render a presentation with notes](/viewer/nodejs-java/images/rendering-basics/render-presentations/render-presentation-notes-to-pdf.png)
