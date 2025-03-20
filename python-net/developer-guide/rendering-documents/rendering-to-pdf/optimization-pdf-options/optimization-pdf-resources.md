---
id: optimization-pdf-resources
url: viewer/python-net/optimization-pdf-resources
title: Optimize the PDF file resources
linkTitle: Optimize the PDF file resources
weight: 2
description: "Reduce PDF file size with GroupDocs.Viewer. Optimize images, remove data, and more for smaller output files."
keywords: pdf optimization, pdf size reduction, resource optimization, GroupDocs.Viewer, PDF compression, image optimization, PDF quality
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---
Resource optimization allows you to reduce the size of the output PDF file. While optimizing, GroupDocs.Viewer may reduce the image size or quality, remove notes or form fields, remove objects, fonts, or personal information from a document, and so on.

The following code snippet shows how to optimize the PDF file by default:

{{< tabs "Example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.docx") as viewer:

    viewOptions = gvo.PdfViewOptions()
    viewOptions.pdf_optimization_options = gvo.PdfOptimizationOptions()

    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}
