---
id: optimization-pdf-remove-annotations
url: viewer/net/optimization-pdf-remove-annotations
title: Remove annotations
linkTitle: Remove annotations
weight: 1
description: "This topic describes how to remove annotations from PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size, remove annotations
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
If the output PDF file contains annotations, you can remove them to reduce the file size.

To remove annotations, set the [RemoveAnnotations](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/removeannotations/) property to `true`.

The following code snippet shows how to remove annotations from the file:

{{< tabs "Example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
{
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.PdfOptimizationOptions = new PdfOptimizationOptions()
    {
        RemoveAnnotations = true
    };
     
    viewer.View(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}

The following image demonstrates the result:

![Remove annotations](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-remove-annotations.png)
