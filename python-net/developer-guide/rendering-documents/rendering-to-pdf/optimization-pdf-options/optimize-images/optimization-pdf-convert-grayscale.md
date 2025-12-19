---
id: optimization-pdf-convert-grayscale
url: viewer/python-net/optimization-pdf-convert-grayscale
title: Convert to grayscale
linkTitle: Convert to grayscale
weight: 3
description: "Convert PDFs to grayscale to reduce file size and speed up printing using the GroupDocs.Viewer Python API."
keywords: PDF grayscale conversion, PDF optimization, reduce PDF size, PDF rendering, GroupDocs.Viewer, grayscale PDF, PDF optimization
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---
To speed up the printing of a PDF file and reduce its size, you can convert it from RGB color space to grayscale.

To convert a PDF file to grayscale, set the [convert_to_gray_scale](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/#properties) property to `True`.

The following code snippet shows how to convert a PDF file to grayscale:

{{< tabs "Example1">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions, PdfOptimizationOptions

def convert_to_grayscale():
    # Load document
    with Viewer("sample.docx") as viewer:
        viewOptions = PdfViewOptions("convert_to_grayscale/grayscale_output.pdf")
        viewOptions.pdf_optimization_options = PdfOptimizationOptions()
        viewOptions.pdf_optimization_options.convert_to_gray_scale = True

        viewer.view(viewOptions)

if __name__ == "__main__":
    convert_to_grayscale()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/optimize-images/optimization-pdf-convert-grayscale/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Convert to grayscale](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-convert-grayscale.png)
