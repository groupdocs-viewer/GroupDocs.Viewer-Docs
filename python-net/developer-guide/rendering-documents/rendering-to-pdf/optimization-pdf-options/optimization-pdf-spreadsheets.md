---
id: optimization-pdf-spreadsheets
url: viewer/python-net/optimization-pdf-spreadsheets
title: Optimize spreadsheets in a PDF file
linkTitle: Optimize spreadsheets in a PDF file
weight: 3
description: "This topic describes how to optimize spreadsheets in a PDF file using the GroupDocs.Viewer Python API."
keywords: convert to pdf, optimize browser, optimize web
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
with gv.Viewer("invoice.xlsx") as viewer:

    viewOptions = gvo.PdfViewOptions()
    viewOptions.pdf_optimization_options = gvo.PdfOptimizationOptions()
    viewOptions.pdf_optimization_options.optimize_spreadsheets = True

    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}
