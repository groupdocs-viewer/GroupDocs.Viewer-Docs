---
id: optimization-pdf-subset-fonts
url: viewer/python-net/optimization-pdf-subset-fonts
title: Subset fonts
linkTitle: Subset fonts
weight: 2
description: "This topic describes how to subset fonts in PDF file using the GroupDocs.Viewer .NET API ."
keywords: convert to pdf, optimize size, pdf reduce size, subset fonts
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---
Optimization resources. SubsetFonts optimization option
Fonts will be converted into subsets if set to true

If the file uses embedded fonts, it contains all font data. GroupDocs.Viewer can subset embedded fonts to reduce the file size.

To subset fonts in a PDF file, set the [SubsetFonts](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/subsetfonts) property to `true`.

The following code snippet shows how to subset fonts in a PDF file:

{{< tabs "Example1">}}
{{< tab "Python" >}}
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    with gv.Viewer(test_files.sample_docx) as viewer:
        viewOptions = gvo.PdfViewOptions()
        viewOptions.pdf_optimization_options = gvo.PdfOptimizationOptions(subset_fonts=True)
        viewer.view(viewOptions)
```
{{</ tab >}}
{{</ tabs >}}

The following image demonstrates the result. There is no difference in appearance:

![No difference in appearance](/viewer/python-net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-subset-fonts-appearance.png)

But there is the significant difference in size:

![Significant difference in size](/viewer/python-net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-subset-fonts-size.png)
