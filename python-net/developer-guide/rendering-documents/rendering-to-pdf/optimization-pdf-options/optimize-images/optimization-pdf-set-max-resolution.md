---
id: optimization-pdf-set-max-resolution
url: viewer/python-net/optimization-pdf-set-max-resolution
title: Set image resolution
linkTitle: Set image resolution
weight: 2
description: "This topic describes how to set image resolution in PDF file using the GroupDocs.Viewer Python API."
keywords: convert to pdf, optimize size, pdf reduce size, set resolution
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---
If the output PDF file contains images, you can reduce its resolution.

To allow changing the image resolution, set the [compress_images](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/#properties) and [resize_images](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/#properties) properties to `True`. The GroupDocs.Viewer compresses all images in the file. The [max_resolution](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/#properties) property determines the maximum resolution. 

The following code snippet shows how to reduce image resolution in the file:

{{< tabs "Example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.docx") as viewer:

    viewOptions = gvo.PdfViewOptions()
    viewOptions.pdf_optimization_options = gvo.PdfOptimizationOptions()
    viewOptions.pdf_optimization_options.compress_images = True
    viewOptions.pdf_optimization_options.image_quality = 50
    viewOptions.pdf_optimization_options.resize_images = True
    viewOptions.pdf_optimization_options.max_resolution = 100

    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Set max resolution](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-set-max-resolution.png)
