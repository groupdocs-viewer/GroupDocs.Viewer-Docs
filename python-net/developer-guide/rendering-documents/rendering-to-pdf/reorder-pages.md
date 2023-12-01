---
id: reorder-pages
url: viewer/python-net/reorder-pages
title: Reorder pages
weight: 1
description: "Reorder pages when rendering documents to PDF with GroupDocs.Viewer for Python via .NET"
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
GroupDocs.Viewer preserves the page order in the source document. Instead, you may reorder pages in the output PDF document.

To reorder pages, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object.
2. Create the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) object.
3. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method of the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify the new page order in the last parameters.

The following code snippet shows how to reorder pages:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer(test_files.sample_docx) as viewer:
    # Create a PDF file.
    view_options = gvo.PdfViewOptions()
    # Pass page numbers in the order you want to render them.
    viewer.View(view_options, 2, 1); 
```
{{< /tab >}}
{{< /tabs >}}
