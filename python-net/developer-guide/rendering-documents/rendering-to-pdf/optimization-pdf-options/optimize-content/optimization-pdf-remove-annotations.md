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
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions, PdfOptimizationOptions

def remove_annotations():
    # Load document
    with Viewer("sample.docx") as viewer:
        viewOptions = PdfViewOptions("remove_annotations/without_annotations.pdf")
        viewOptions.pdf_optimization_options = PdfOptimizationOptions()
        viewOptions.pdf_optimization_options.remove_annotations = True

        viewer.view(viewOptions)

if __name__ == "__main__":
    remove_annotations()
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/optimize-content/optimization-pdf-remove-annotations/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Remove annotations](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-remove-annotations.png)
