---
id: rendering-to-pdf
url: viewer/python-net/rendering-to-pdf
title: Render to PDF
weight: 13
description: "Rendering files to PDF with GroupDocs.Viewer for Python via .NET. It means that you can embed PDF in websites or applications by using this .NET API"
keywords: embed pdf in website, rendering to pdf, python api, rendering pdf
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---  
When rendering to PDF, GroupDocs.Viewer renders all pages of the source document as a single PDF document.

To render files to PDF, follow these steps:

1. Create an instance of the [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/) class. Specify the source document path as a constructor parameter.
2. Instantiate the [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions/) object. Specify a path to save the rendered file.
3. Call the [View.view()](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method of the [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/) object. Specify the [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions/) object as the parameter.

The following code snippet shows how to render a .docx document to PDF:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.docx") as viewer:
    pdf_options = gvo.PdfViewOptions("output-to-pdf.pdf")
    viewer.view(pdf_options)

print(f"\nSource document rendered successfully.")
```
{{< /tab >}}
{{< /tabs >}}

For details, please refer to the following pages:
