---
id: optimization-pdf-remove-fields
url: viewer/python-net/optimization-pdf-remove-fields
title: Remove form fields
linkTitle: Remove form fields
weight: 2
description: "This topic describes how to remove form fields from PDF file using the GroupDocs.Viewer Python API."
keywords: convert to pdf, optimize size, pdf reduce size, remove fields
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---
If the output PDF file contains form fields, you can flatten them to reduce the file size.

To remove form fields, set the [remove_form_fields](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/#properties) property to `True`.

The following code snippet shows how to flatten form fields in the file:

{{< tabs "Example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.docx") as viewer:

    viewOptions = gvo.PdfViewOptions()
    viewOptions.pdf_optimization_options = gvo.PdfOptimizationOptions()
    viewOptions.pdf_optimization_options.remove_form_fields = True

    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Remove fields](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-remove-fields.png)