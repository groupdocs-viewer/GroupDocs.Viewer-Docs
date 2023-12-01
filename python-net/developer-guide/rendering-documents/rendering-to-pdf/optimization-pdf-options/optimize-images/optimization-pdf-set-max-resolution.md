---
id: optimization-pdf-set-max-resolution
url: viewer/python-net/optimization-pdf-set-max-resolution
title: Set image resolution
linkTitle: Set image resolution
weight: 2
description: "This topic describes how to set image resolution in PDF file using the GroupDocs.Viewer .NET API ."
keywords: convert to pdf, optimize size, pdf reduce size, set resolution
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---
If the output PDF file contains images, you can reduce its resolution.

To allow changing the image resolution, set the [CompressImages](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/compressimages/) and [ResizeImages](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/resizeimages/) properties to `true`. The GroupDocs.Viewer compresses all images in the file. The [MaxResolution](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/maxresolution/) property determines the maximum resolution. 

The following code snippet shows how to reduce image resolution in the file:

{{< tabs "Example1">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    with gv.Viewer(test_files.sample_docx) as viewer:
        viewOptions = gvo.PdfViewOptions()
        viewOptions.pdf_optimization_options = gvo.PdfOptimizationOptions(compress_images = true, image_quality = 50, resize_images = true, max_resolution = 100)
        viewer.view(viewOptions)
```
{{</ tab >}}
{{</ tabs >}}

The following image demonstrates the result:

![Set max resolution](/viewer/python-net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-set-max-resolution.png)
