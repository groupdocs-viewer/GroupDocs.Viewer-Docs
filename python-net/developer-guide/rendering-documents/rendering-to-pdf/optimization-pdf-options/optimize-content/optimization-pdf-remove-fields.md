---
id: optimization-pdf-remove-fields
url: viewer/python-net/optimization-pdf-remove-fields
title: Remove form fields
linkTitle: Remove form fields
weight: 2
description: "Remove form fields from PDF files to reduce file size using GroupDocs.Viewer's optimization options."
keywords: PDF optimization, flatten form fields, remove form fields, PDF size reduction, PDF conversion, GroupDocs.Viewer, PDF rendering
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
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions, PdfOptimizationOptions

def remove_form_fields():
    # Load document
    with Viewer("sample.docx") as viewer:
        viewOptions = PdfViewOptions("remove_form_fields/without_form_fields.pdf")
        viewOptions.pdf_optimization_options = PdfOptimizationOptions()
        viewOptions.pdf_optimization_options.remove_form_fields = True

        viewer.view(viewOptions)

if __name__ == "__main__":
    remove_form_fields()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/optimize-content/optimization-pdf-remove-fields/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Remove fields](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-remove-fields.png)