---
id: optimization-pdf-for-web
url: viewer/python-net/optimization-pdf-for-web
title: Optimize a PDF file for a browser
linkTitle: Optimize a PDF file for a browser
weight: 1
description: "Optimize PDFs for faster browser display using GroupDocs.Viewer. Reduce load times and improve user experience."
keywords: PDF optimization, browser rendering, PDF linearization, web PDF, fast PDF loading, PDF viewer, document rendering
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---
This optimization allows a browser to display the first pages of a PDF file when you open the document, instead of waiting for the entire file to download.

The following code snippet shows how to optimize a PDF file for browser:
{{< tabs "Example1">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions, PdfOptimizationOptions

def optimize_pdf_for_web():
    # Load document
    with Viewer("sample.docx") as viewer:
        viewOptions = PdfViewOptions("optimize_pdf_for_web/optimized_spreadsheet.pdf")
        viewOptions.pdf_optimization_options = PdfOptimizationOptions()
        viewOptions.pdf_optimization_options.lineriaze = True

        viewer.view(viewOptions)

if __name__ == "__main__":
    optimize_pdf_for_web()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/optimization-pdf-for-web/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}
