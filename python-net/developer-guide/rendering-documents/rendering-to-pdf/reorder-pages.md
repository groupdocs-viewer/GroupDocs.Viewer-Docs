---
id: reorder-pages
url: viewer/python-net/reorder-pages
title: Reorder pages
weight: 1
description: "Reorder PDF pages during rendering with GroupDocs.Viewer for Python via .NET. Control the output page sequence."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
keywords: GroupDocs.Viewer, page reordering, PDF page order, PDF viewer, GroupDocs.Viewer PDF, document viewer, page order
---
GroupDocs.Viewer preserves the page order in the source document. Instead, you may reorder pages in the output PDF document.

To reorder pages, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) object.
2. Create the [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions) object.
3. Call the [view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method of the [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) object. Specify the new page order in the last parameters.

The following code snippet shows how to reorder pages:

{{< tabs "example1">}}
{{< tab "Python">}}
```python
with gv.Viewer("sample.docx") as viewer:
    # Create view options.
    viewOptions = gvo.PdfViewOptions()

    # Pass page numbers in the order you want to render them.
    viewer.view(viewOptions, 2, 1)
```
{{< /tab >}}
{{< /tabs >}}
