---
id: optimization-pdf-remove-annotations
url: viewer/python-net/optimization-pdf-remove-annotations
title: Remove annotations
linkTitle: Remove annotations
weight: 1
description: "This topic describes how to remove annotations from PDF file using the GroupDocs.Viewer .NET API ."
keywords: convert to pdf, optimize size, pdf reduce size, remove annotations
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---
If the output PDF file contains annotations, you can remove them to reduce the file size.

To remove annotations, set the [RemoveAnnotations](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfoptimizationoptions/removeannotations/) property to `true`.

The following code snippet shows how to remove annotations from the file:

{{< tabs "Example1">}}
{{< tab "Python" >}}
<!-- TODO using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization; import -->
```python
import aspose.groupdocsviewer as gv
import aspose.groupdocsviewer.options as gvo
import test_files
# ...
    # Create a PDF file.
    with gv.Viewer(test_files.sample_docx) as viewer:
        viewOptions = gvo.PdfViewOptions()
        viewOptions.pdf_optimization_options = gvo.PdfOptimizationOptions(remove_annotations=True)
        viewer.view(viewOptions)
```
{{</ tab >}}
{{</ tabs >}}

The following image demonstrates the result:

![Remove annotations](/viewer/python-net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-remove-annotations.png)
