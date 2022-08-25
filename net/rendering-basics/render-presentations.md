---
id: render-presentations
url: viewer/net/render-presentations
title: Render PowerPoint presentations as HTML, PDF, and image files
linkTitle: Render PowerPoint presentations
weight: 4
description: "This topic describes how to use the GroupDocs.Viewer .NET API (C#) to convert PowerPoint presentations to HTML, PDF, PNG, and JPEG formats."
keywords: convert pptx to pdf, convert pptx to html, convert pptx to jpeg, convert ppt to pdf, convert presentation to pdf, convert ppt to html, convert presentation to html, convert presentation to image
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
aliases:
    - /viewer/net/view-powerpoint-presentations/
    - /viewer/net/how-to-set-resolution-for-images-when-rendering-presentations-to-html/
    - /viewer/net/how-to-convert-and-view-fodp-and-odp-files/
    - /viewer/net/converting-presentations-with-shapes-and-text-with-3-d-effects/
    - /viewer/net/show-document-notes
---
[GroupDocs.Viewer for .NET](https://products.groupdocs.com/viewer/net) allows you to render your presentations in HTML, PDF, PNG, and JPEG formats. You do not need to use Microsoft PowerPoint or other software to load and view presentations within your .NET application (web or desktop). 

Create a [Viewer](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class instance to get started with the GroupDocs.Viewer API. Pass a presentation you want to view to the class constructor. You can load the presentation from a file or stream. Call one of the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method overloads to convert the presentation to HTML, PDF, or image format. These methods allow you to render the entire presentation or specific slides.

{{< button style="primary" link="https://products.groupdocs.app/viewer/powerpoint" >}} View PowerPoint files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} View demos and examples on GitHub {{< /button >}}

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
* {{% closedlink title="OpenDocument Flat XML Presentation" href="https://fileinfo.com/extension/fodp" %}} (.FODP)

GroupDocs.Viewer can detect the document format automatically based on information in the file header.

## Render presentations as HTML

Create an [HtmlViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a presentation file to HTML. The **HtmlViewOptions** class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.ForEmbeddedResources](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method and specify the output file name.

```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pptx"))
{
    // Create an HTML file for each slide.
    // {0} is replaced with the current page number in the file name.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    viewer.View(viewOptions);
}
```

The following image demonstrates the result:

![Render a presentation file to HTML](viewer/net/images/rendering-basics/render-presentations/render-to-html-embedded-resources.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.ForExternalResources](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forexternalresources/index) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pptx"))
{
    // Create an HTML file for each slide.
    // Specify the HTML file names and location of external resources.
    // {0} and {1} are replaced with the current page number and resource name, respectively.
    var viewOptions = HtmlViewOptions.ForExternalResources(
        "page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");
    viewer.View(viewOptions);
}
```

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](viewer/net/images/rendering-basics/render-presentations/render-to-html-external-resources.png)

## Render presentations as PDF

Create a [PdfViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a presentation file to PDF. The **PdfViewOptions** class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pptx"))
{
    var viewOptions = new PdfViewOptions("output.pdf");
    viewer.View(viewOptions);
}
```

The following image demonstrates the result:

![Render a presentation file to PDF](viewer/net/images/rendering-basics/render-presentations/render-to-pdf.png)

## Render presentations as PNG

Create a [PngViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a presentation file to PNG. Use the [PngViewOptions.Height](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pptx"))
{
    // Create a PNG image for each slide.
    // {0} is replaced with the current page number in the image name.
    var viewOptions = new PngViewOptions("output_{0}.png");
    viewOptions.Width = 950;
    viewOptions.Height = 550;
    viewer.View(viewOptions);
}
```

The following image demonstrates the result:

![Render a presentation file to PNG](viewer/net/images/rendering-basics/render-presentations/render-to-png-image.png)

## Render presentations as JPEG

Create a [JpgViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a presentation file to JPEG. Use the [JpgViewOptions.Height](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.


```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pptx"))
{
    // Create a JPEG image for each slide.
    // {0} is replaced with the current page number in the image name.
    var viewOptions = new JpgViewOptions("output_{0}.jpg");
    viewOptions.Width = 950;
    viewOptions.Height = 550;
    viewer.View(viewOptions);
}
```

## Specify image resolution

When you convert presentations with high-resolution images to other formats, you may need to lower image resolution to reduce the output file size. GroupDocs.Viewer supports the [PresentationOptions.Resolution](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/presentationoptions/properties/resolution) option that allows you to compress images in the output HTML and PDF files. To access this option, use the [HtmlViewOptions.PresentationOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/presentationoptions) or [PdfViewOptions.PresentationOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/presentationoptions) property (depending on the output file format).

You can set the [PresentationOptions.Resolution](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/presentationoptions/properties/resolution) property to one of the following [Resolution](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/resolution) field values:

| Resolution field | DPI | Remarks |
| --- | --- | --- |
| DocumentResolution | As in the source file | This is the default value.|
| Dpi72 | 72 | Maximum image compression and minimum file size. |
| Dpi96 | 96 | Good for web pages and projectors. |
| Dpi150 | 150 | Good for web pages and projectors. |
| Dpi220 | 220 | Excellent quality on most printers and screens. |
| Dpi330 | 330 | Good quality for high-definition (HD) displays. |

The following example demonstrates how to specify image resolution in code: 

```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pptx"))
{
    var viewOptions = new PdfViewOptions("output.pdf");
    viewOptions.PresentationOptions.Resolution = Resolution.Dpi150;
    viewer.View(viewOptions);
}
```

## Render hidden slides

If your presentation contains hidden slides, enable the [ViewOptions.RenderHiddenPages](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/renderhiddenpages) property for a target view to display these slides in the output HTML, PDF, or image files.

The following code example uses this option to display hidden slides in the generated PDF file:

```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pptx"))
{
    var viewOptions = new PdfViewOptions("output.pdf");
    viewOptions.RenderHiddenPages = true;
    viewer.View(viewOptions);
}
```

## Render comments

Enable the [ViewOptions.RenderComments](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/rendercomments) option for a target view to display comments in the output file when you convert your presentation to HTML, PDF, PNG, or JPEG format.

```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pptx"))
{
    var viewOptions = new PdfViewOptions("output.pdf");
    viewOptions.RenderComments = true;
    viewer.View(viewOptions);
}
```

The following image demonstrates the result:

![Render a presentation with comments](viewer/net/images/rendering-basics/render-presentations/render-presentation-comments-to-pdf.png)

## Render speaker notes

A presentation file can contain speaker notes that help presenters recall important information during the presentation. Speaker notes appear in the **Notes** pane below each slide.

![Speaker notes in Microsoft PowerPoint](viewer/net/images/rendering-basics/render-presentations/presentation-speaker-notes.png)

Enable the [ViewOptions.RenderNotes](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/rendernotes) property for a target view to display speaker notes in the output HTML, PDF, or image files.

The following code sample renders a presentation with speaker notes to PDF:

```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.pptx"))
{
    var viewOptions = new PdfViewOptions("output.pdf");
    viewOptions.RenderNotes = true;
    viewer.View(viewOptions);
}
```

The image below demonstrates the result.

![Render a presentation with notes](viewer/net/images/rendering-basics/render-presentations/render-presentation-notes-to-pdf.png)
