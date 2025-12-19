---
id: optimization-pdf-resources
url: viewer/python-net/optimization-pdf-remove-unused-resources
title: Optimize the PDF file by removing unused resources
linkTitle: Optimize the PDF file by removing unused resources
weight: 10
description: "Optimize PDFs with GroupDocs.Viewer by removing unused resources and reducing file size."
keywords: pdf optimization, pdf size reduction, remove unused pdf objects, remove orphaned pdf streams, pdf resource optimization, pdf viewer, groupdocs viewer
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---

In some cases [PDF](https://docs.fileformat.com/pdf/) documents may contain different resources, which are unused, which means they are not accessible and visible when viewing the document in any PDF viewer. Starting from this [version 24.9](https://releases.groupdocs.com/viewer/python-net/release-notes/2024/groupdocs-viewer-for-python-via-net-24-9-release-notes/) the GroupDocs.Viewer is able to remove such unused resources using wo new public properties of the boolean type: `remove_unused_objects` and `remove_unused_streams`, both of which are located in the [`PdfOptimizationOptions`](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/) class. By default both options are disabled (`False`), so the GroupDocs.Viewer will not apply this optimization.

In order to explain these two options and their differences, we need to dive into the PDF structure a little bit.

PDF document consists of PDF objects. Every object has its number (ID) and may belong to one of the following types: name, string, number, boolean, null object, dictionary, array (forms PDF document structure), and stream (raw binary data). Objects may be referenced from other objects, for example, a dictionary or array may contain references to other objects. These references unite all parts of the PDF document and form a PDF document structure. Stream objects contain binary data, and the size of these data may be large. For example, images or fonts are stored as stream objects. After some manipulations with the document, some streams may be "orphaned" i.e. they may not have any reference to them. For example, the old image was replaced with the new one, but the binary data of the old image was not removed. In other words, the stream does not belong anymore to the document logically but still contained in the document physically. For removing such orphaned objects the `remove_unused_objects` property exists — it finds orphaned objects in the document and removes them, this can help to decrease the document size of such objects found.

Every document page has its `Resources` dictionary which contains data like images, fonts, etc. which are used in the page contents. Resources are referenced by their names in the dictionary, for example, the page may contain the operator to draw the image with the name "Image12" on the particular place of the page. In some cases, the resource may become unused, for example, the image was removed from the page contents but left in page resources, or the page was extracted from the document but its resources still contain common resources of the document. Resource became "orphaned", please note that this is another situation, then described in `RemoveUnusedObject` explanation, because the object is still referenced from the resources dictionary of the page, but the resource is never used by the page (its name never used in page contents). `remove_unused_streams` property, when enabled, finds and removes these unnecessary resources. Since after this process removed resource stream objects became not linked with document structure, `remove_unused_objects` option is automatically activated when `RemoveUnusedResources` is used.

Here is an example, where both options are applied to the same input PDF file, so Viewer produces two output PDF files with distinct options applied.

{{< tabs "Example1">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions, PdfOptimizationOptions

def remove_unused_resources():

    view_options_1 = PdfViewOptions("remove_unused_resources/removed_unused_objects.pdf")
    view_options_1.pdf_optimization_options = PdfOptimizationOptions()
    view_options_1.pdf_optimization_options.remove_unused_objects = True

    view_options_2 = PdfViewOptions("remove_unused_resources/removed_unused_streams.pdf")
    view_options_2.pdf_optimization_options = PdfOptimizationOptions()
    view_options_2.pdf_optimization_options.remove_unused_streams = True

    with Viewer("sample.pdf") as viewer:
        viewer.view(view_options_1)
        viewer.view(view_options_2)

if __name__ == "__main__":
    remove_unused_resources()
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/pdf-remove-unused-resources/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

As it is explained above, the effectiveness of the described optimizations depends solely on the specific PDF file — if it has no “orphaned” objects or streams, then these optimizations will do nothing, they only increase the document processing time. However, in some cases they can reduce the document size significantly, even several times.

We checked both `remove_unused_objects` and `remove_unused_streams` on our internal sample PDF documents, and measured their size before and after applied optimizations. Results are shown in the table below.

| Filename    | Original size, bytes | `remove_unused_objects`, bytes | `remove_unused_streams`, bytes |
| ----------- | ------- | -------- | ------- |
| [Sample1.pdf](/viewer/net/sample-files/developer-guide/rendering-documents/Sample1.pdf) | 131 832 | 2 274    | 131 832 |
| [Sample2.pdf](/viewer/net/sample-files/developer-guide/rendering-documents/Sample2.pdf) | 131 870 | 131 774  | 2 690   |

