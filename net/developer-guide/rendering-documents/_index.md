---
id: rendering-documents
url: viewer/net/rendering-documents
title: Render documents
weight: 3
description: "Render documents to HTML, PDF, PNG, or JPEG with GroupDocs.Viewer for .NET: how pages become output files, which output to choose, and how to render specific pages."
productName: GroupDocs.Viewer for .NET
hideChildren: False
keywords: GroupDocs.Viewer, rendering, PDF, HTML, PNG, JPEG, images, document conversion, render specific pages, C#, GroupDocs Viewer
toc: True
---
Rendering turns a document into files that a browser or an app can display: HTML pages, a PDF file, or PNG and JPEG images. GroupDocs.Viewer renders more than 190 formats, and all of them the same way: open the document with a [Viewer](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/), create the view options of the output you need, and call [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/view/).

![A three-page DOCX rendered by GroupDocs.Viewer: three HTML files, three PNG images or three JPEG images, one per page, or one PDF file with all three pages](/viewer/net/images/developer-guide/rendering-documents/rendering-overview.svg)

## Choose the output

| Output | View options | Files | Good for |
|---|---|---|---|
| HTML | [HtmlViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/) | One HTML file per page. Its fonts, images and styles are embedded in it or saved next to it | Showing a document in a web page, with text that readers can select and search |
| PDF | [PdfViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions/) | One PDF file with every page | Downloading, printing and archiving |
| PNG | [PngViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/) | One image per page, lossless | Previews and thumbnails with sharp text |
| JPEG | [JpgViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/) | One image per page, smaller than PNG | Photos and scans, where file size matters more |

When an output has one file per page, put `{0}` in the file name: it is replaced with the page number, so `page_{0}.png` gives `page_1.png`, `page_2.png` and so on. A PDF needs no `{0}`, because every page goes into the one file.

## Render a document

The following example renders each page of a Word document to a PNG image:

{{< tabs "render-document-to-png">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

// Load the document
using (Viewer viewer = new Viewer("sample.docx"))
{
    // Create a PNG image for each page.
    // {0} is replaced with the current page number in the file name.
    PngViewOptions viewOptions = new PngViewOptions("render-document-to-png_{0}.png");
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
        ' Load the document
        Using viewer As Viewer = New Viewer("sample.docx")
            ' Create a PNG image for each page.
            ' {0} is replaced with the current page number in the file name.
            Dim viewOptions As PngViewOptions = New PngViewOptions("render-document-to-png_{0}.png")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-document-to-png.zip" >}}  
```text
page_1.png (206 KB)
page_2.png (59 KB)
page_3.png (44 KB)
page_4.png (309 KB)
page_5.png (35 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/rendering-documents/_index/RenderDocumentToPng/render-document-to-png.zip)
{{< /tab >}}
{{< /tabs >}}

Replace `PngViewOptions` with `JpgViewOptions`, `PdfViewOptions` or `HtmlViewOptions.ForEmbeddedResources` to get the other outputs; the pages below describe each one.

## Render specific pages

To render only some of the pages, pass their numbers to [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/view/) after the view options. The following example renders pages 1 and 3:

{{< tabs "render-specific-pages">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

// Load the document
using (Viewer viewer = new Viewer("sample.docx"))
{
    // {0} is replaced with the current page number in the file name.
    PngViewOptions viewOptions = new PngViewOptions("render-specific-pages_{0}.png");
    // Render pages 1 and 3 only.
    viewer.View(viewOptions, 1, 3);
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
        ' Load the document
        Using viewer As Viewer = New Viewer("sample.docx")
            ' {0} is replaced with the current page number in the file name.
            Dim viewOptions As PngViewOptions = New PngViewOptions("render-specific-pages_{0}.png")
            ' Render pages 1 and 3 only.
            viewer.View(viewOptions, 1, 3)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-specific-pages.zip" >}}  
```text
page_1.png (206 KB)
page_3.png (44 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/rendering-documents/_index/RenderSpecificPages/render-specific-pages.zip)
{{< /tab >}}
{{< /tabs >}}

When you render to PDF, the order of the numbers is the order of the pages in the file: see [Reorder pages]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-pdf/reorder-pages" >}}).

## More about rendering

Each format has options of its own, such as the hidden slides of a presentation, the layers of a CAD drawing or the folders of an archive. See [Document rendering basics]({{< ref "viewer/net/rendering-basics" >}}). The pages of this section cover the outputs:
