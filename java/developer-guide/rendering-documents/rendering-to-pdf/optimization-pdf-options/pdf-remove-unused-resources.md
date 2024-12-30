---
id: optimization-pdf-resources
url: viewer/java/optimization-pdf-remove-unused-resources
title: Optimize the PDF file by removing unused resources
linkTitle: Optimize the PDF file by removing unused resources
weight: 10
description: "This topic describes how to optimize PDF file using the GroupDocs.Viewer Java API by removing the unused (orphaned) resources and thus to reduce the file size."
keywords: convert to pdf, optimize size, pdf reduce size, pdf remove unused resources, pdf remove orphaned resources
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---

In some cases [PDF](https://docs.fileformat.com/pdf/) documents may contain different resources, which are unused, which means they are not accessible and visible when viewing the document in any PDF viewer. Starting from the [version 24.12](https://releases.groupdocs.com/viewer/java/release-notes/2024/groupdocs-viewer-for-java-24-12-release-notes/) the GroupDocs.Viewer is able to remove such unused resources using two new public properties of the boolean type: `setRemoveUnusedObjects(...)` and `setRemoveUnusedStreams(...)`, both of which are located in the [`PdfOptimizationOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptimizationoptions/) class. By default, both options are disabled (`false`), so the GroupDocs.Viewer will not apply this optimization.

In order to explain these two options and their differences, we need to dive into the PDF structure a little bit.

PDF document consists of PDF objects. Every object has its number (ID) and may belong to one of the following types: name, string, number, boolean, null object, dictionary, array (forms PDF document structure), and stream (raw binary data). Objects may be referenced from other objects, for example, a dictionary or array may contain references to other objects. These references unite all parts of the PDF document and form a PDF document structure. Stream objects contain binary data, and the size of these data may be large. For example, images or fonts are stored as stream objects. After some manipulations with the document, some streams may be "orphaned" i.e. they may not have any reference to them. For example, the old image was replaced with the new one, but the binary data of the old image was not removed. In other words, the stream does not belong anymore to the document logically but still contained in the document physically. For removing such orphaned objects the `RemoveUnusedObjects` property exists — it finds orphaned objects in the document and removes them, this can help to decrease the document size of such objects found.

Every document page has its `Resources` dictionary which contains data like images, fonts, etc. which are used in the page contents. Resources are referenced by their names in the dictionary, for example, the page may contain the operator to draw the image with the name "Image12" on the particular place of the page. In some cases, the resource may become unused, for example, the image was removed from the page contents but left in page resources, or the page was extracted from the document but its resources still contain common resources of the document. Resource became "orphaned", please note that this is another situation, then described in `RemoveUnusedObject` explanation, because the object is still referenced from the resources dictionary of the page, but the resource is never used by the page (its name never used in page contents). `RemoveUnusedStreams` property, when enabled, finds and removes these unnecessary resources. Since after this process removed resource stream objects became not linked with document structure, `RemoveUnusedObjects` option is automatically activated when `RemoveUnusedResources` is used.

Here is an example, where both options are applied to the same input PDF file, so Viewer produces two output PDF files with distinct options applied.

{{< tabs "Example1">}}
{{< tab "Java" >}}
```java
final String filename = "sample.pdf";

PdfViewOptions viewOptions1 = new PdfViewOptions("output1.pdf");
viewOptions1.setPdfOptimizationOptions(new PdfOptimizationOptions());
viewOptions1.getPdfOptimizationOptions().setRemoveUnusedObjects(true);

PdfViewOptions viewOptions2 = new PdfViewOptions("output2.pdf");
viewOptions2.setPdfOptimizationOptions(new PdfOptimizationOptions());
viewOptions2.getPdfOptimizationOptions().setRemoveUnusedStreams(true);

try (Viewer viewer = new Viewer(filename)) {
    viewer.view(viewOptions1);
    viewer.view(viewOptions2);
}
```
{{< /tab >}}
{{< tab "Kotlin">}}
```kitlin
val filename = "sample.pdf"

val viewOptions1 = PdfViewOptions("output1.pdf").apply {
    pdfOptimizationOptions = PdfOptimizationOptions().apply {
        removeUnusedObjects = true
    }
}

val viewOptions2 = PdfViewOptions("output2.pdf").apply {
    pdfOptimizationOptions = PdfOptimizationOptions().apply {
        removeUnusedStreams = true
    }
}

Viewer(filename).use { viewer ->
    viewer.view(viewOptions1)
    viewer.view(viewOptions2)
}
```
{{< /tab >}}
{{< /tabs >}}

As it is explained above, the effectiveness of the described optimizations depends solely on the specific PDF file — if it has no “orphaned” objects or streams, then these optimizations will do nothing, they only increase the document processing time. However, in some cases they can reduce the document size significantly, even several times.

We checked both `RemoveUnusedObjects` and `RemoveUnusedStreams` on our internal sample PDF documents, and measured their size before and after applied optimizations. Results are shown in the table below.

| Filename                                                                                 | Original size, bytes | `RemoveUnusedObjects`, bytes | `RemoveUnusedStreams`, bytes  |
|------------------------------------------------------------------------------------------|----------------------|------------------------------|-------------------------------|
| [Sample1.pdf](/viewer/java/sample-files/developer-guide/rendering-documents/Sample1.pdf) | 131 832              | 2 274                        | 131 832                       |
| [Sample2.pdf](/viewer/java/sample-files/developer-guide/rendering-documents/Sample2.pdf) | 131 870              | 131 774                      | 2 690                         |

