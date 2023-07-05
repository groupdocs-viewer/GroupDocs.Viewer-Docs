---
id: optimization-pdf-convert-grayscale
url: viewer/net/optimization-pdf-convert-grayscale
title: Convert to grayscale
linkTitle: Convert to grayscale
weight: 3
description: "This topic describes how to convert PDF file to grayscale using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size, convert to grayscale
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
To speed up the printing of a PDF file and reduce its size, you can convert it from RGB color space to grayscale.

To convert a PDF file to grayscale, set the [ConvertToGrayScale](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/converttograyscale) property to `true`.

The following code snippet shows how to convert a PDF file to grayscale:

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
        ConvertToGrayScale = true
    };
     
    viewer.View(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}

The following image demonstrates the result:

![Convert to grayscale](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-convert-grayscale.png)
