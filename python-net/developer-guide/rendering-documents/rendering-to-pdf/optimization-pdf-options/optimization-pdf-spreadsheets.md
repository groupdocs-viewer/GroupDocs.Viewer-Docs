---
id: optimization-pdf-spreadsheets
url: viewer/python-net/optimization-pdf-spreadsheets
title: Optimize spreadsheets in a PDF file
linkTitle: Optimize spreadsheets in a PDF file
weight: 3
description: "Optimize spreadsheets in PDFs. Reduces file size by enabling border lines and removing specific characters."
keywords: pdf optimization, spreadsheet optimization, PDF file size, gv, gvo, Python, border lines
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---
This optimization allows to reduce the output file size by setting up border lines. Besides that, it removes the Arial and Times New Roman characters of 32-127 codes.

The default value is `False`.


The following code snippet shows how to optimize spreadsheets in a PDF file:

{{< tabs "Example1">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions, PdfOptimizationOptions

def optimize_spreadsheets():
    # Load spreadsheet
    with Viewer("invoice.xlsx") as viewer:
        viewOptions = PdfViewOptions("optimize_spreadsheets/optimized_spreadsheet.pdf")
        viewOptions.pdf_optimization_options = PdfOptimizationOptions()
        viewOptions.pdf_optimization_options.optimize_spreadsheets = True

        viewer.view(viewOptions)

if __name__ == "__main__":
    optimize_spreadsheets()
```
{{< /tab >}}
{{< tab "invoice.xlsx" >}}
{{< tab-text >}}
`invoice.xlsx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/optimization-pdf-spreadsheets/invoice.xlsx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}
