---
id: optimization-pdf-remove-annotations
url: viewer/python-net/optimization-pdf-remove-annotations
title: Remove annotations
linkTitle: Remove annotations
weight: 1
description: "Remove annotations from PDF files to reduce file size using the GroupDocs.Viewer Python API."
keywords: pdf optimization, remove annotations, pdf size reduction, groupdocs viewer, pdf rendering, annotation removal, pdf compression
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---
If the output PDF file contains annotations, you can remove them to reduce the file size.

To remove annotations, set the [remove_annotations](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/#properties) property to `True`.

The following code snippet shows how to remove annotations from the file:

{{< tabs "Example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer("sample.docx") as viewer:

    viewOptions = gvo.PdfViewOptions()
    viewOptions.pdf_optimization_options = gvo.PdfOptimizationOptions()
    viewOptions.pdf_optimization_options.remove_annotations = True

    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Remove annotations](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-remove-annotations.png)
