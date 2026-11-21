---
id: optimization-pdf-resources
url: viewer/net/optimization-pdf-remove-unused-resources
title: Optimize the PDF file by removing unused resources
linkTitle: Optimize the PDF file by removing unused resources
weight: 10
description: "This topic describes how to optimize PDF file using the GroupDocs.Viewer .NET API (C#) by removing the unused (orphaned) resources and thus to reduce the file size."
keywords: convert to pdf, optimize size, pdf reduce size, pdf remove unused resources, pdf remove orphaned resources
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

In some cases [PDF](https://docs.fileformat.com/pdf/) documents may contain different resources, which are unused, which means they are not accessible and visible when viewing the document in any PDF viewer. Starting from [version 24.6](https://releases.groupdocs.com/viewer/net/release-notes/2024/groupdocs-viewer-for-net-24-6-release-notes/) the GroupDocs.Viewer is able to remove such unused resources using two new public properties of the boolean type: `RemoveUnusedObjects` and `RemoveUnusedStreams`, both of which are located in the [`PdfOptimizationOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/) class. By default both options are disabled (`false`), so the GroupDocs.Viewer will not apply this optimization.

The two options remove two different kinds of unused data.

## Unused objects

PDF document consists of PDF objects. Every object has its number (ID) and may belong to one of the following types: name, string, number, boolean, null object, dictionary, array (forms PDF document structure), and stream (raw binary data). Objects may be referenced from other objects, for example, a dictionary or array may contain references to other objects. These references unite all parts of the PDF document and form a PDF document structure. Stream objects contain binary data, and the size of these data may be large. For example, images or fonts are stored as stream objects. After some manipulations with the document, some streams may be "orphaned" i.e. they may not have any reference to them. For example, the old image was replaced with the new one, but the binary data of the old image was not removed. In other words, the stream does not belong anymore to the document logically but still contained in the document physically. For removing such orphaned objects the `RemoveUnusedObjects` property exists — it finds orphaned objects in the document and removes them, this can help to decrease the document size of such objects found.

## Unused streams

Every document page has its `Resources` dictionary which contains data like images, fonts, etc. which are used in the page contents. Resources are referenced by their names in the dictionary, for example, the page may contain the operator to draw the image with the name "Image12" on the particular place of the page. In some cases, the resource may become unused, for example, the image was removed from the page contents but left in page resources, or the page was extracted from the document but its resources still contain common resources of the document. Resource became "orphaned", note that this is another situation than the unused objects above, because the object is still referenced from the resources dictionary of the page, but the resource is never used by the page (its name never used in page contents). `RemoveUnusedStreams` property, when enabled, finds and removes these unnecessary resources. Since after this process removed resource stream objects became not linked with document structure, `RemoveUnusedObjects` is applied too when `RemoveUnusedStreams` is enabled.

## Remove unused objects and streams

Here is an example, where both options are applied to the same input PDF file, so Viewer produces two output PDF files with distinct options applied.

{{< tabs "remove-unused-resources">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

const string filename = "sample.pdf";

PdfViewOptions viewOptions1 = new PdfViewOptions("output1.pdf");
viewOptions1.PdfOptimizationOptions = new PdfOptimizationOptions();
viewOptions1.PdfOptimizationOptions.RemoveUnusedObjects = true;

PdfViewOptions viewOptions2 = new PdfViewOptions("output2.pdf");
viewOptions2.PdfOptimizationOptions = new PdfOptimizationOptions();
viewOptions2.PdfOptimizationOptions.RemoveUnusedStreams = true;

using (Viewer viewer = new Viewer(filename))
{
    viewer.View(viewOptions1);
    viewer.View(viewOptions2);
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
        Const filename As String = "sample.pdf"

        Dim viewOptions1 As PdfViewOptions = New PdfViewOptions("output1.pdf")
        viewOptions1.PdfOptimizationOptions = New PdfOptimizationOptions()
        viewOptions1.PdfOptimizationOptions.RemoveUnusedObjects = True

        Dim viewOptions2 As PdfViewOptions = New PdfViewOptions("output2.pdf")
        viewOptions2.PdfOptimizationOptions = New PdfOptimizationOptions()
        viewOptions2.PdfOptimizationOptions.RemoveUnusedStreams = True

        Using viewer As New Viewer(filename)
            viewer.View(viewOptions1)
            viewer.View(viewOptions2)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/pdf-remove-unused-resources/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "remove-unused-resources.zip" >}}  
```text
output1.pdf (890 KB)
output2.pdf (542 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/pdf-remove-unused-resources/RemoveUnusedResources/remove-unused-resources.zip)
{{< /tab >}}
{{< /tabs >}}

## How much it saves

As it is explained above, the effectiveness of the described optimizations depends solely on the specific PDF file — if it has no “orphaned” objects or streams, then these optimizations will do nothing, they only increase the document processing time. However, in some cases they can reduce the document size significantly, even several times.

The sample file of this example is a catalog extract that was edited in place, so it has both kinds of orphans: four photos that its first page lists but never draws (unused streams), and the objects of a deleted page (unused objects). Rendered with each option, it gives these sizes:

| File | Original size, bytes | `RemoveUnusedObjects`, bytes | `RemoveUnusedStreams`, bytes |
| ---- | ------- | -------- | ------- |
| [sample.pdf](/viewer/net/_sample_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/pdf-remove-unused-resources/sample.pdf) | 1 053 186 | 911 481 | 554 937 |

