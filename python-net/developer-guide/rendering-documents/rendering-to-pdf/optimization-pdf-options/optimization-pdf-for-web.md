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
with gv.Viewer("sample.docx") as viewer:

    viewOptions = gvo.PdfViewOptions()
    viewOptions.pdf_optimization_options = gvo.PdfOptimizationOptions()
    viewOptions.pdf_optimization_options.lineriaze = True

    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}
