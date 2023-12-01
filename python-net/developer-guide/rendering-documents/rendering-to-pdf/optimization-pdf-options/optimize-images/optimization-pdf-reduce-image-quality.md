---
id: optimization-pdf-reduce-image-quality
url: viewer/python-net/optimization-pdf-reduce-image-quality
title: Reduce image quality
linkTitle: Reduce image quality
weight: 1
description: "This topic describes how to compress images in PDF file using the GroupDocs.Viewer .NET API."
keywords: convert to pdf, optimize size, pdf reduce size, compress images
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---

If the output PDF file contains images, you can reduce its size using image compression.

To enable image compression, set the [CompressImages](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/compressimages/) property to `true`. The GroupDocs.Viewer compresses all images in the file.

The [ImageQuality](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/imagequality/) property determines the compression ratio. It is a quality value in percent. 100% means original quality.

The following code snippet shows how to compress images in the file:

{{< tabs "Example1">}}
{{< tab "Python" >}}
```python

import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    with gv.Viewer(test_files.sample_docx) as viewer:
        viewOptions = gvo.PdfViewOptions()
        viewOptions.pdf_optimization_options = gvo.PdfOptimizationOptions(convert_to_gray_scale = True, image_quality = 50)
        viewer.view(viewOptions)
```
{{</ tab >}}
{{</ tabs >}}

The following image demonstrates the result:

![Reduce image quality](/viewer/python-net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-reduce-image-quality.png)
