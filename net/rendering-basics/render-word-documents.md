---
id: render-word-documents
url: viewer/net/render-word-documents
title: Render Word documents as HTML, PDF, and image files
linkTitle: Render Word documents
weight: 1
description: "This topic describes how to use the GroupDocs.Viewer .NET API (C#) to convert Word documents to HTML, PDF, PNG, and JPEG formats."
keywords: convert word to pdf, convert word to jpeg, convert doc to pdf, convert docx to pdf, convert word to jpg, convert word to jpeg
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
aliases:
    - /viewer/net/how-to-view-word-documents-using-csharp/
    - /viewer/net/show-document-comments
---
[GroupDocs.Viewer for .NET](https://products.groupdocs.com/viewer/net) allows you to render your Microsoft Word documents in HTML, PDF, PNG, and JPEG formats. You do not need to use Microsoft Word or other word processors to load and view Word documents within your .NET application (web or desktop). 

To start using the GroupDocs.Viewer API, create a [Viewer](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class instance. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method overloads to convert the document to HTML, PDF, or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/word" >}} {{< icon "gdoc_person" >}} View Word files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

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

GroupDocs.Viewer can detect the document format automatically based on information in the file header.

## Render Word documents as HTML

Create an [HtmlViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a Word file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.ForEmbeddedResources](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method and specify the output file name.

{{< tabs "example1">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("resume.docx"))
{
    // Create an HTML file for each document page.
    // {0} is replaced with the current page number in the file name.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a Word file to HTML](/viewer/net/images/rendering-basics/render-word-documents/render-to-html-embedded-resources.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.ForExternalResources](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forexternalresources/index) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "example2">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("resume.docx"))
{
    // Create an HTML file for each document page.
    // Specify the HTML file names and location of external resources.
    // {0} and {1} are replaced with the current page number and resource name, respectively.
    var viewOptions = HtmlViewOptions.ForExternalResources(
        "page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/net/images/rendering-basics/render-word-documents/render-to-html-external-resources.png)

## Render Word documents as PDF

Create a [PdfViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a Word file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example3">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("resume.docx"))
{
    var viewOptions = new PdfViewOptions("output.pdf");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a Word file to PDF](/viewer/net/images/rendering-basics/render-word-documents/render-to-pdf.png)

## Render Word documents as PNG

Create a [PngViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a Word file to PNG. Use the [PngViewOptions.Height](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("resume.docx"))
{
    // Create a PNG image for each document page.
    // {0} is replaced with the current page number in the image name.
    var viewOptions = new PngViewOptions("output_{0}.png");
    viewOptions.Width = 800;
    viewOptions.Height = 900;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
The following image demonstrates the result:

![Render a Word file to PNG](/viewer/net/images/rendering-basics/render-word-documents/render-to-png-image.png)

## Render Word documents as JPEG

Create a [JpgViewOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a Word file to JPEG. Use the [JpgViewOptions.Height](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example5">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("resume.docx"))
{
    // Create a JPEG image for each document page.
    // {0} is replaced with the current page number in the image name.
    var viewOptions = new JpgViewOptions("output_{0}.jpg");
    viewOptions.Width = 800;
    viewOptions.Height = 900;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Define page margins

Use the following properties to specify the size of page margins in the output files when you convert your Word documents to HTML, PDF, and image formats: 

* [WordProcessingOptions.TopMargin](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/wordprocessingoptions/properties/topmargin)---Specifies the distance (in points) between document content and the top edge of the page.
* [WordProcessingOptions.BottomMargin](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/wordprocessingoptions/properties/bottommargin)---Specifies the distance (in points) between document content and the bottom edge of the page.
* [WordProcessingOptions.LeftMargin](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/wordprocessingoptions/properties/leftmargin)---Specifies the distance (in points) between document content and the left edge of the page.
* [WordProcessingOptions.RightMargin](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/wordprocessingoptions/properties/rightmargin)---Specifies the distance (in points) between document content and the right edge of the page.

You can access these properties for the following classes:

* [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions)
* [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions) 

The example below converts a Word document to HTML and specifies page margins for the output file. 

{{< tabs "example6">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("resume.docx"))
{
    // Create an HTML file for each document page.
    // {0} is replaced with the current page number in the file name.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    // Specify the size of page margins in points.
    viewOptions.WordProcessingOptions.TopMargin = 72;
    viewOptions.WordProcessingOptions.BottomMargin = 72;
    viewOptions.WordProcessingOptions.LeftMargin = 54;
    viewOptions.WordProcessingOptions.RightMargin = 54;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Render tracked changes

GroupDocs.Viewer does not render tracked changes (revisions made to a Word document) by default. If you want to display tracked changes in the output file, enable the [WordProcessingOptions.RenderTrackedChanges](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/wordprocessingoptions/properties/rendertrackedchanges) property for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)

The following code example demonstrates how to render a Word document with tracked changes:

{{< tabs "example7">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("TrackChanges.docx"))
{
    var viewOptions = new PdfViewOptions("output.pdf");
    viewOptions.WordProcessingOptions.RenderTrackedChanges = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Render tracked changes to PDF](/viewer/net/images/rendering-basics/render-word-documents/render-track-changes-to-pdf.png)

## Render comments

Enable the [ViewOptions.RenderComments](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/rendercomments) option for a target view to display comments in the output file when you convert your document to HTML, PDF, PNG, or JPEG format.

The code example below renders a Word document with comments to PDF.

{{< tabs "example8">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("resume.docx"))
{
    var viewOptions = new PdfViewOptions("output.pdf");
    viewOptions.RenderComments = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Render comments to PDF](/viewer/net/images/rendering-basics/render-word-documents/render-comments-to-pdf.png)
