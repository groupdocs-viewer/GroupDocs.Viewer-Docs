---
id: optimization-pdf-convert-grayscale
url: viewer/python-net/optimization-pdf-convert-grayscale
title: Convert to grayscale
linkTitle: Convert to grayscale
weight: 3
description: "This topic describes how to convert PDF file to grayscale using the GroupDocs.Viewer .NET API."
keywords: convert to pdf, optimize size, pdf reduce size, convert to grayscale
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---
To speed up the printing of a PDF file and reduce its size, you can convert it from RGB color space to grayscale.

To convert a PDF file to grayscale, set the [ConvertToGrayScale](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/converttograyscale) property to `true`.

The following code snippet shows how to convert a PDF file to grayscale:

{{< tabs "Example1">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    with gv.Viewer(test_files.sample_docx) as viewer:
        viewOptions = gvo.PdfViewOptions()
        viewOptions.pdf_optimization_options = gvo.PdfOptimizationOptions(convert_to_gray_scale=True)
        viewer.view(viewOptions)
```
{{</ tab >}}
{{</ tabs >}}

The following image demonstrates the result:

![Convert to grayscale](/viewer/python-net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-convert-grayscale.png)
