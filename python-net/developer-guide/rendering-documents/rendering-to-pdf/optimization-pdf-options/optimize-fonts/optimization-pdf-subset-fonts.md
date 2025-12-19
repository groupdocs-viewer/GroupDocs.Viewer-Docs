---
id: optimization-pdf-subset-fonts
url: viewer/python-net/optimization-pdf-subset-fonts
title: Subset fonts
linkTitle: Subset fonts
weight: 2
description: "Reduce PDF file size by subsetting embedded fonts with GroupDocs.Viewer. See how to optimize font usage."
keywords: PDF optimization, font subsetting, PDF size reduction, GroupDocs.Viewer, PDF rendering, font embedding, PDF optimization options
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
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions, PdfOptimizationOptions

def subset_fonts():
    # Load document
    with Viewer("sample.docx") as viewer:
        viewOptions = PdfViewOptions("subset_fonts/subset_fonts.pdf")
        viewOptions.pdf_optimization_options = PdfOptimizationOptions()
        viewOptions.pdf_optimization_options.subset_fonts = True

        viewer.view(viewOptions)

if __name__ == "__main__":
    subset_fonts()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/optimize-fonts/optimization-pdf-subset-fonts/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result. There is no difference in appearance:

![No difference in appearance](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-subset-fonts-appearance.png)

But there is the significant difference in size:

![Significant difference in size](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-subset-fonts-size.png)
