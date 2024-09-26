---
id: optimization-pdf-subset-fonts
url: viewer/python-net/optimization-pdf-subset-fonts
title: Subset fonts
linkTitle: Subset fonts
weight: 2
description: "This topic describes how to subset fonts in PDF file using the GroupDocs.Viewer Python API."
keywords: convert to pdf, optimize size, pdf reduce size, subset fonts
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---
Not optimized files may contain embedded fonts. GroupDocs.Viewer can remove unused instructions in embedded fonts to reduce the file size.

To subset fonts in a PDF file, set the [subset_fonts](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/#properties) property to `True`.

The following code snippet shows how to subset fonts in a PDF file:

{{< tabs "Example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.docx") as viewer:

    viewOptions = gvo.PdfViewOptions()
    viewOptions.pdf_optimization_options = gvo.PdfOptimizationOptions()
    viewOptions.pdf_optimization_options.subset_fonts = True

    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result. There is no difference in appearance:

![No difference in appearance](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-subset-fonts-appearance.png)

But there is the significant difference in size:

![Significant difference in size](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-subset-fonts-size.png)
