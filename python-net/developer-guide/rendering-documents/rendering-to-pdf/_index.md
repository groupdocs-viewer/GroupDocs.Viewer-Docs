---
id: rendering-to-pdf
url: viewer/python-net/rendering-to-pdf
title: Render to PDF
weight: 13
description: "Rendering files to PDF with GroupDocs.Viewer for Python via .NET. It means that you can embed PDF in websites or applications by using this API"
keywords: embed pdf in website, rendering to pdf, api, rendering pdf
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---  
When rendering to PDF, GroupDocs.Viewer renders all pages of the source document as a single PDF document.

To render files to PDF, follow these steps:

1. Create an instance of the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class. Specify the source document path as a constructor parameter.
2. Instantiate the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) object. Specify a path to save the rendered file.
3. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method of the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) object as the parameter.

The following code snippet shows how to render a .docx document to PDF:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
# Create a PDF file.
with gv.Viewer(test_files.sample_docx) as viewer:
	# Specify the PDF file name.
	viewOptions = gvo.PdfViewOptions()
	viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

For details, please refer to the following pages:
