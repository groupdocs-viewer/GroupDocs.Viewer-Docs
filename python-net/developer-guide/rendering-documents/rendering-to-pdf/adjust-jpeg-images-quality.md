---
id: adjust-jpeg-images-quality
url: viewer/python-net/adjust-jpeg-images-quality
title: Specify the JPEG image quality
weight: 3
description: "Adjust JPEG images quality when rendering documents to PDF with GroupDocs.Viewer for Python via .NET"
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
Decreasing the JPG images quality reduces the size of the output file.

To adjust images quality, set the [image_quality](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/#properties) property of the [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/) class. The value must be between 1 (minimum quality) and 100. The default value is 90.

To set the image quality, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) class. Specify the source document path as a constructor parameter.
1. Instantiate the [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions) object.
2. Set the [PdfViewOptions.pdf_optimization_options](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions/#properties) value as instantiated [PdfOptimizationOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/) object.
3. Set the [PdfViewOptions.pdf_optimization_options.image_quality](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/#properties) value.
4. Call the [view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method of the [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) object. Specify the [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions) object as the parameter.

The following code snippet shows how to adjust JPG image quality in the output PDF document:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.docx") as viewer:
    # Create view options.
    viewOptions = gvo.PdfViewOptions()

    # Specify the JPG image quality.
    pdf_optimization_options = gvo.PdfOptimizationOptions()
    pdf_optimization_options.image_quality = 50
    # Specify pdf_optimization_options object
    viewOptions.pdf_optimization_options = pdf_optimization_options

    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}
