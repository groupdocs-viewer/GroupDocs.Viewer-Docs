---
id: optimization-pdf-reduce-image-quality
url: viewer/python-net/optimization-pdf-reduce-image-quality
title: Reduce image quality
linkTitle: Reduce image quality
weight: 1
description: "Compress images in PDF files to reduce size. Adjust image quality (0-100%) using the GroupDocs.Viewer Python API."
keywords: pdf optimization, image compression, pdf size reduction, GroupDocs.Viewer, image quality, PDF rendering, optimize PDF
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---

If the output PDF file contains images, you can reduce its size using image compression.

To enable image compression, set the [compress_images](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/#properties) property to `True`. The GroupDocs.Viewer compresses all images in the file.

The [image_quality](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/#properties) property determines the compression ratio. It is a quality value in percent. 100% means original quality.

The following code snippet shows how to compress images in the file:

{{< tabs "Example1">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions, PdfOptimizationOptions

def reduce_image_quality():
    # Load document
    with Viewer("sample.docx") as viewer:
        viewOptions = PdfViewOptions("reduce_image_quality/reduced_quality.pdf")
        viewOptions.pdf_optimization_options = PdfOptimizationOptions()
        viewOptions.pdf_optimization_options.compress_images = True
        viewOptions.pdf_optimization_options.image_quality = 50

        viewer.view(viewOptions)

if __name__ == "__main__":
    reduce_image_quality()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/optimize-images/optimization-pdf-reduce-image-quality/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Reduce image quality](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-reduce-image-quality.png)
