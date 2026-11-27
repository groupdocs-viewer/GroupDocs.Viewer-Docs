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

To start using the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class instance. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method overloads to convert the document to HTML, PDF, or image format. These methods allow you to render the entire document or specific pages.

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

Create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a Word file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.ForEmbeddedResources](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method and specify the output file name.

{{< tabs "render-word-to-html">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.docx"))
{
    // Create an HTML file for each document page.
    // {0} is replaced with the current page number in the file name.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("render-word-to-html_{0}.html");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.docx")
            ' Create an HTML file for each document page.
            ' {0} is replaced with the current page number in the file name.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("render-word-to-html_{0}.html")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-word-documents/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-word-to-html.zip" >}}  
```text
render-word-to-html_1.html (253 KB)
render-word-to-html_2.html (110 KB)
render-word-to-html_3.html (148 KB)
render-word-to-html_4.html (1001 KB)
render-word-to-html_5.html (86 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-word-documents/RenderWordToHtml/render-word-to-html.zip)
{{< /tab >}}
{{< /tabs >}}

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.ForExternalResources](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forexternalresources/index) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "render-word-to-html-external">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.docx"))
{
    // Create an HTML file for each document page.
    // Specify the HTML file names and location of external resources.
    // {0} and {1} are replaced with the current page number and resource name, respectively.
    var viewOptions = HtmlViewOptions.ForExternalResources("render-word-to-html-external_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.docx")
            ' Create an HTML file for each document page.
            ' Specify the HTML file names and location of external resources.
            ' {0} and {1} are replaced with the current page number and resource name, respectively.
            Dim viewOptions = HtmlViewOptions.ForExternalResources("render-word-to-html-external_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-word-documents/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-word-to-html-external.zip" >}}  
```text
page_1/resource_1_f.woff (20 KB)
page_1/resource_1_f1.woff (9 KB)
page_1/resource_1_f2.woff (10 KB)
page_1/resource_1_i.jpeg (144 KB)
page_1/resource_1_i.png (4 KB)
page_1/resource_1_s.css (1 KB)
page_2/resource_2_f.woff (15 KB)
page_2/resource_2_f1.woff (29 KB)
page_2/resource_2_f2.woff (8 KB)
page_2/resource_2_f3.woff (12 KB)
[TRUNCATED] (35 files total)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-word-documents/RenderWordToHtmlExternal/render-word-to-html-external.zip)
{{< /tab >}}
{{< /tabs >}}

External resources are placed in a separate folder.

## Render Word documents as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a Word file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "render-word-to-pdf">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.docx"))
{
    // Create a PDF file for the document.
    // Specify the PDF file name.
    var viewOptions = new PdfViewOptions("render-word-to-pdf.pdf");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.docx")
            ' Create a PDF file for the document.
            ' Specify the PDF file name.
            Dim viewOptions = New PdfViewOptions("render-word-to-pdf.pdf")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-word-documents/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-word-to-pdf.pdf" >}}  
```text
Binary file (PDF, 719 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-word-documents/RenderWordToPdf/render-word-to-pdf.pdf)
{{< /tab >}}
{{< /tabs >}}

## Render Word documents as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a Word file to PNG. Use the [PngViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "render-word-to-png">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.docx"))
{
    // Create a PNG image for each document page.
    // {0} is replaced with the current page number in the image name.
    var viewOptions = new PngViewOptions("output_{0}.png");
    // Set width and height.
    viewOptions.Width = 800;
    viewOptions.Height = 900;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.docx")
            ' Create a PNG image for each document page.
            ' {0} is replaced with the current page number in the image name.
            Dim viewOptions = New PngViewOptions("output_{0}.png")
            ' Set width and height.
            viewOptions.Width = 800
            viewOptions.Height = 900
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-word-documents/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-word-to-png.zip" >}}  
```text
output_1.png (275 KB)
output_2.png (130 KB)
output_3.png (97 KB)
output_4.png (414 KB)
output_5.png (80 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-word-documents/RenderWordToPng/render-word-to-png.zip)
{{< /tab >}}
{{< /tabs >}}

## Render Word documents as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a Word file to JPEG. Use the [JpgViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "render-word-to-jpg">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.docx"))
{
    // Create a JPEG image for each document page.
    // {0} is replaced with the current page number in the image name.
    var viewOptions = new JpgViewOptions("output_{0}.jpg");
    // Set width and height.
    viewOptions.Width = 800;
    viewOptions.Height = 900;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.docx")
            ' Create a JPEG image for each document page.
            ' {0} is replaced with the current page number in the image name.
            Dim viewOptions = New JpgViewOptions("output_{0}.jpg")
            ' Set width and height.
            viewOptions.Width = 800
            viewOptions.Height = 900
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-word-documents/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-word-to-jpg.zip" >}}  
```text
output_1.jpg (72 KB)
output_2.jpg (91 KB)
output_3.jpg (86 KB)
output_4.jpg (87 KB)
output_5.jpg (62 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-word-documents/RenderWordToJpg/render-word-to-jpg.zip)
{{< /tab >}}
{{< /tabs >}}

## Define page margins

Use the following properties to specify the size of page margins in the output files when you convert your Word documents to HTML, PDF, and image formats: 

* [WordProcessingOptions.TopMargin](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/wordprocessingoptions/properties/topmargin) specifies the distance (in points) between document content and the top edge of the page.
* [WordProcessingOptions.BottomMargin](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/wordprocessingoptions/properties/bottommargin) specifies the distance (in points) between document content and the bottom edge of the page.
* [WordProcessingOptions.LeftMargin](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/wordprocessingoptions/properties/leftmargin) specifies the distance (in points) between document content and the left edge of the page.
* [WordProcessingOptions.RightMargin](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/wordprocessingoptions/properties/rightmargin) specifies the distance (in points) between document content and the right edge of the page.

You can access these properties for the following classes:

* [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions)
* [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions) 

The example below converts a Word document to HTML and specifies page margins for the output file. 

{{< tabs "render-word-with-margins">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.docx"))
{
    // Create an HTML file for each document page.
    // {0} is replaced with the current page number in the file name.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("render-word-with-margins_{0}.html");
    // Specify the size of page margins in points.
    viewOptions.WordProcessingOptions.TopMargin = 72;
    viewOptions.WordProcessingOptions.BottomMargin = 72;
    viewOptions.WordProcessingOptions.LeftMargin = 54;
    viewOptions.WordProcessingOptions.RightMargin = 54;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("sample.docx")
            ' Create an HTML file for each document page.
            ' {0} is replaced with the current page number in the file name.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("render-word-with-margins_{0}.html")
            ' Specify the size of page margins in points.
            viewOptions.WordProcessingOptions.TopMargin = 72
            viewOptions.WordProcessingOptions.BottomMargin = 72
            viewOptions.WordProcessingOptions.LeftMargin = 54
            viewOptions.WordProcessingOptions.RightMargin = 54
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-word-documents/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-word-with-margins.zip" >}}  
```text
render-word-with-margins_1.html (253 KB)
render-word-with-margins_2.html (110 KB)
render-word-with-margins_3.html (148 KB)
render-word-with-margins_4.html (1001 KB)
render-word-with-margins_5.html (86 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-word-documents/RenderWordWithMargins/render-word-with-margins.zip)
{{< /tab >}}
{{< /tabs >}}

## Render tracked changes

GroupDocs.Viewer does not render tracked changes (revisions made to a Word document) by default. If you want to display tracked changes in the output file, enable the [WordProcessingOptions.RenderTrackedChanges](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/wordprocessingoptions/properties/rendertrackedchanges) property for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)

The following code example demonstrates how to render a Word document with tracked changes:

{{< tabs "render-word-with-tracked-changes">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("with_tracked_changes.docx"))
{
    // Convert the document to PDF.
    var viewOptions = new PdfViewOptions("render-word-with-tracked-changes.pdf");
    // Enable tracked changes rendering.
    viewOptions.WordProcessingOptions.RenderTrackedChanges = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("with_tracked_changes.docx")
            ' Convert the document to PDF.
            Dim viewOptions = New PdfViewOptions("render-word-with-tracked-changes.pdf")
            ' Enable tracked changes rendering.
            viewOptions.WordProcessingOptions.RenderTrackedChanges = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "with_tracked_changes.docx" >}}
{{< tab-text >}}
`with_tracked_changes.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-word-documents/with_tracked_changes.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-word-with-tracked-changes.pdf" >}}  
```text
Binary file (PDF, 64 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-word-documents/RenderWordWithTrackedChanges/render-word-with-tracked-changes.pdf)
{{< /tab >}}
{{< /tabs >}}

## Render comments

Comments are rendered by default: the [ViewOptions.RenderComments](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/rendercomments) property is `true` unless you change it. The example below sets it explicitly; set it to `false` to hide the comments when you convert your document to HTML, PDF, PNG, or JPEG format.

The code example below renders a Word document with comments to PDF.

{{< tabs "render-word-with-comments">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("with_comment.docx"))
{
    // Convert the document to PDF.
    var viewOptions = new PdfViewOptions("render-word-with-comments.pdf");
    // Enable comments rendering.
    viewOptions.RenderComments = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("with_comment.docx")
            ' Convert the document to PDF.
            Dim viewOptions = New PdfViewOptions("render-word-with-comments.pdf")
            ' Enable comments rendering.
            viewOptions.RenderComments = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "with_comment.docx" >}}
{{< tab-text >}}
`with_comment.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-word-documents/with_comment.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-word-with-comments.pdf" >}}  
```text
Binary file (PDF, 70 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-word-documents/RenderWordWithComments/render-word-with-comments.pdf)
{{< /tab >}}
{{< /tabs >}}

## Unlink table of contents

When rendering to HTML or PDF, you can set [WordProcessingOptions.UnlinkTableOfContents](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/wordprocessingoptions/properties/unlinktableofcontents) to `true` to unlink table of contents. For HTML rendering, `<a>` tags with relative links will be replaced with `<span>` tags, removing functionality but preserving visual appearance. For PDF rendering, the table of contents will be rendered as plain text without links to document sections.

The code example below renders a Word document with table of contents as a plain text without links.

{{< tabs "render-word-unlink-toc">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("handbook.docx"))
{
    // Convert the document to HTML.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("render-word-unlink-toc_{0}.html");
    // Unlink table of contents.
    viewOptions.WordProcessingOptions.UnlinkTableOfContents = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("handbook.docx")
            ' Convert the document to HTML.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("render-word-unlink-toc_{0}.html")
            ' Unlink table of contents.
            viewOptions.WordProcessingOptions.UnlinkTableOfContents = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "handbook.docx" >}}
{{< tab-text >}}
`handbook.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-word-documents/handbook.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-word-unlink-toc.zip" >}}  
```text
render-word-unlink-toc_1.html (68 KB)
render-word-unlink-toc_2.html (79 KB)
render-word-unlink-toc_3.html (76 KB)
render-word-unlink-toc_4.html (85 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-word-documents/RenderWordUnlinkToc/render-word-unlink-toc.zip)
{{< /tab >}}
{{< /tabs >}}

## Disable updating fields when saving

The most of formats inside the WordProcessing family of formats, like DOC, DOCX, ODT and so on, have the concept of [fields](https://support.microsoft.com/en-us/office/list-of-field-codes-in-word-1ad6d91a-55a7-4a8d-b535-cf7888659a51), which are processed when the document is opened in some viewer application like Microsoft Word. When the input WordProcessing document is loaded to the GroupDocs.Viewer and saved to the HTML (with embedded or external resources), PDF, PNG, or JPEG output formats, all the fields within the input document are updated while saving, and this mimics the Microsoft Word behavior. But in some scenarios, for example, when field values are incorrect, there is no necessary and even not desirable to update fields.

Starting from the version [24.12](https://releases.groupdocs.com/viewer/net/release-notes/2024/groupdocs-viewer-for-net-24-12-release-notes/) the GroupDocs.Viewer for .NET has obtained an ability to disable updating fields while saving the documents. The new public property [`UpdateFields`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/wordprocessingoptions/updatefields/) of the [`System.Boolean`](https://learn.microsoft.com/dotnet/api/system.boolean) type was added to the [`Options.WordProcessingOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/wordprocessingoptions/) class. By default the value of this property is set to `true`, so fields are updated, as before. In order to turn fields updating off, please set this property to `false`. Code sample below shows opening a sample DOCX document and saving to the HTML with embedded resources and PDF formats without updating fields during saving.

{{< tabs "render-word-without-updating-fields">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

HtmlViewOptions htmlViewOptions = HtmlViewOptions.ForEmbeddedResources("render-word-without-updating-fields_{0}.html");
htmlViewOptions.WordProcessingOptions.UpdateFields = false;

PdfViewOptions pdfViewOptions = new PdfViewOptions("render-word-without-updating-fields.pdf");
pdfViewOptions.WordProcessingOptions.UpdateFields = false;

using (var viewer = new Viewer("handbook.docx"))
{    
    viewer.View(htmlViewOptions);
	viewer.View(pdfViewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Dim htmlViewOptions = HtmlViewOptions.ForEmbeddedResources("render-word-without-updating-fields_{0}.html")
htmlViewOptions.WordProcessingOptions.UpdateFields = False

Dim pdfViewOptions = New PdfViewOptions("render-word-without-updating-fields.pdf")
pdfViewOptions.WordProcessingOptions.UpdateFields = False

Using viewer = New Viewer("handbook.docx")	
	viewer.View(htmlViewOptions)
	viewer.View(pdfViewOptions)
End Using
```
{{< /tab >}}
{{< tab "handbook.docx" >}}
{{< tab-text >}}
`handbook.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-word-documents/handbook.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-word-without-updating-fields.zip" >}}  
```text
render-word-without-updating-fields.pdf (80 KB)
render-word-without-updating-fields_1.html (68 KB)
render-word-without-updating-fields_2.html (79 KB)
render-word-without-updating-fields_3.html (76 KB)
render-word-without-updating-fields_4.html (85 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-word-documents/RenderWordWithoutUpdatingFields/render-word-without-updating-fields.zip)
{{< /tab >}}
{{< /tabs >}}

## Remove or preserve JavaScript when saving to HTML

Most of WordProcessing formats like DOC, DOCX, ODT and so on are able to store the scripts, usually written on VBA. When the output format is PDF, PNG, or JPEG, there is no problem at all. But when the output format is HTML, this may lead to the situations when malicious or harmful VBA script(s) from input DOCX, for example, will be translated to the resultant HTML document. Before the [version 25.1](https://releases.groupdocs.com/viewer/net/release-notes/2025/groupdocs-viewer-for-net-25-1-release-notes/) the was no possibility for the GroupDocs.Viewer to disable scripts preserving and translation — all the VBA scripts were translated to the JavaScript in HTML. Starting from the version 25.1, for the security purposes script translation is disabled by default — all the links containing JavaScript are replaced with the harmless `"javascript:void(0)"` string in the resultant HTML markup. But it is possible to enable script translation, as it was present in the GroupDocs.Viewer before, by using a new public property `RemoveJavaScript` of the [`System.Boolean`](https://learn.microsoft.com/dotnet/api/system.boolean) type in the [`Options.HtmlViewOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/) class. By default this property has a `true` value — JavaScript will be removed from the resultant HTML document. For preserving the JavaScript, as it was in the previous versions of the GroupDocs.Viewer, the `false` value should be assigned to this property. Code sample below shows opening a sample DOCX document and rendering it to the HTML with embedded resources with and without JavaScript.

{{< tabs "render-word-html-without-javascript">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

HtmlViewOptions htmlViewOptionsWithoutJavaScript = HtmlViewOptions.ForEmbeddedResources("without-js-page{0}.html");

HtmlViewOptions htmlViewOptionsWithJavaScript = HtmlViewOptions.ForEmbeddedResources("with-js-page{0}.html");
htmlViewOptionsWithJavaScript.RemoveJavaScript = false;

using (var viewer = new Viewer("with_script.docx"))
{
    viewer.View(htmlViewOptionsWithoutJavaScript);
    viewer.View(htmlViewOptionsWithJavaScript);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Dim htmlViewOptionsWithoutJavaScript = HtmlViewOptions.ForEmbeddedResources("without-js-page{0}.html")

Dim htmlViewOptionsWithJavaScript = HtmlViewOptions.ForEmbeddedResources("with-js-page{0}.html")
htmlViewOptionsWithJavaScript.RemoveJavaScript = false;

Using viewer = New Viewer("with_script.docx")	
	viewer.View(htmlViewOptionsWithoutJavaScript)
	viewer.View(htmlViewOptionsWithJavaScript)
End Using
```
{{< /tab >}}
{{< tab "with_script.docx" >}}
{{< tab-text >}}
`with_script.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-word-documents/with_script.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-word-html-without-javascript.zip" >}}  
```text
with-js-page1.html (81 KB)
without-js-page1.html (81 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-word-documents/RenderWordHtmlWithoutJavascript/render-word-html-without-javascript.zip)
{{< /tab >}}
{{< /tabs >}}

## Specify DPI when rendering to raster formats

Before version 26.8, when rendering loaded WordProcessing documents to the raster formats ([PNG](#render-word-documents-as-png) and [JPEG](#render-word-documents-as-jpeg)), the horizontal and vertical resolution of the output image was always fixed and equal to `96` DPI (Dots Per Inch). As a result, it was impossible to significantly increase the quality of produced images. To solve this problem, the [version 26.8](https://releases.groupdocs.com/viewer/net/release-notes/2026/groupdocs-viewer-for-net-26-8-release-notes/) contains two new properties in the [`WordProcessingOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/wordprocessingoptions/) — the `HorizontalResolution` and `VerticalResolution`, both of `Int32` type, which are responsible for the horizontal resolution and vertical resolution respectively.

By default their values are `96` DPI — same as in all previous versions of GroupDocs.Viewer. But now a user can change these values. The minimum possible value is `72` DPI — even if a user will set a lesser number, the `72` DPI will be applied. There is also a maximum possible value — `600` DPI. Even if the bigger numbers are specified, the `600` DPI is applied. This is true for both `HorizontalResolution` and `VerticalResolution`.

Need to additionally emphasize that these two properties are valid only when rendering to the PNG and JPEG formats; for other formats they are ignored.

Source code below demonstrated rendering the loaded “sample.docs” to the PNG format with adjusted horizontal and vertical resolutions, which are both set to 192 DPI, and to the JPEG format, where horizontal resolution is intact and default (96 DPI), while only the vertical is adjusted — 120 DPI.

{{< tabs "render-word-with-dpi">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

PngViewOptions pngOpt = new PngViewOptions();
pngOpt.WordProcessingOptions.HorizontalResolution = pngOpt.WordProcessingOptions.VerticalResolution = 192;

JpgViewOptions jpegOpt = new JpgViewOptions();
jpegOpt.WordProcessingOptions.VerticalResolution = 120;

using (Viewer viewer = new Viewer("sample.docx"))
{
    viewer.View(pngOpt);
    viewer.View(jpegOpt);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Dim pngOpt As New PngViewOptions()
pngOpt.WordProcessingOptions.HorizontalResolution = pngOpt.WordProcessingOptions.VerticalResolution = 192

Dim jpegOpt As New JpgViewOptions()
jpegOpt.WordProcessingOptions.VerticalResolution = 120

Using viewer As New Viewer("sample.docx")
    viewer.View(pngOpt)
    viewer.View(jpegOpt)
End Using
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-word-documents/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-word-with-dpi.zip" >}}  
```text
p_1.jpg (97 KB)
p_1.png (858 KB)
p_2.jpg (133 KB)
p_2.png (102 KB)
p_3.jpg (116 KB)
p_3.png (87 KB)
p_4.jpg (127 KB)
p_4.png (1376 KB)
p_5.jpg (85 KB)
p_5.png (64 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-word-documents/RenderWordWithDpi/render-word-with-dpi.zip)
{{< /tab >}}
{{< /tabs >}}

## Add page numbers during rendering

By default the GroupDocs.Viewer renders the input WordProcessing documents “as-is”, without any changes. This applies to the page numbers as well: when they are present in the original file, they also will be present in the output PDF, HTML, PNG and JPEG, and vice versa. Initially there was no possibility to forcibly add the page numbers to the produced output documents.

However, this has changed since the [version 26.8](https://releases.groupdocs.com/viewer/net/release-notes/2026/groupdocs-viewer-for-net-26-8-release-notes/). Starting from this version it is possible to apply the page numeration to the WordProcessing documents. Important note: the input WordProcessing file are not changed in any case regardless of which options are applied. The described feature modifies only the output documents, generated by the GroupDocs.Viewer from input Words files.

This feature has the next behavior. A new property `PageNumberLocation` was added to the [`WordProcessingOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/wordprocessingoptions/) class, that is accessible from the [`WordProcessingOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/wordprocessingoptions/) property. It is of enum type `WordsPageNumberLocation` and its default value is `NotApply` — this means that by default the input WordProcessing documents are rendered as before: when an input document has page numbers, they are present in the output documents, but when it has not — page numbers are absent. But when any other value of `WordsPageNumberLocation` enum except from of `NotApply` is specified in the `PageNumberLocation` property, the GroupDocs.Viewer forcibly adds the page numbers to the produced output documents. If the original document already had the page numbers, they are initially removed from the output documents, and then the new page numbers are added.

The `WordsPageNumberLocation` enum actually has 2 functions: it forcibly applies the page numbers to the pages and also specifies the position of where the page numbers should be located: `TopLeft`, `TopCenter`, `TopRight`, `BottomLeft`, `BottomCenter`, `BottomRight`.

Page numbers with different locations can be applied to different output formats for the same input WordProcessing document. The code sample above shows applying page numbers in the top left corner to the output PDF and page numbers in the bottom center side to the output HTML.

{{< tabs "render-word-with-page-numbers">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

PdfViewOptions pdfOpt = new PdfViewOptions("render-word-with-page-numbers.pdf");
pdfOpt.WordProcessingOptions.PageNumberLocation = WordsPageNumberLocation.TopLeft;

HtmlViewOptions htmlEmbeddedOpt = HtmlViewOptions.ForEmbeddedResources("render-word-with-page-numbers_{0}.html");
htmlEmbeddedOpt.WordProcessingOptions.PageNumberLocation = WordsPageNumberLocation.BottomCenter;

using (Viewer viewer = new Viewer("sample.docx"))
{
    viewer.View(pdfOpt);
    viewer.View(htmlEmbeddedOpt);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Dim pdfOpt As New PdfViewOptions("render-word-with-page-numbers.pdf")
pdfOpt.WordProcessingOptions.PageNumberLocation = WordsPageNumberLocation.TopLeft

Dim htmlEmbeddedOpt As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources("render-word-with-page-numbers_{0}.html")
htmlEmbeddedOpt.WordProcessingOptions.PageNumberLocation = WordsPageNumberLocation.BottomCenter

Using viewer As New Viewer("sample.docx")
    viewer.View(pdfOpt)
    viewer.View(htmlEmbeddedOpt)
End Using
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-word-documents/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-word-with-page-numbers.zip" >}}  
```text
render-word-with-page-numbers.pdf (719 KB)
render-word-with-page-numbers_1.html (250 KB)
render-word-with-page-numbers_2.html (108 KB)
render-word-with-page-numbers_3.html (146 KB)
render-word-with-page-numbers_4.html (1001 KB)
render-word-with-page-numbers_5.html (86 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-word-documents/RenderWordWithPageNumbers/render-word-with-page-numbers.zip)
{{< /tab >}}
{{< /tabs >}}

## Word files rendering demo

The [View Word files online](https://products.groupdocs.app/viewer/docx) app is available to test and preview rendering output for Word and other document formats.

