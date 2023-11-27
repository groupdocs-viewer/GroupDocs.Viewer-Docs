---
id: optimization-pdf-subset-fonts
url: viewer/net/optimization-pdf-subset-fonts
title: Subset fonts
linkTitle: Subset fonts
weight: 1
description: "This topic describes how to subset fonts in PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size, subset fonts
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
If the file uses embedded fonts, it contains all font data. GroupDocs.Viewer can subset embedded fonts to reduce the file size.

To subset fonts in a PDF file, set the [SubsetFonts](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/subsetfonts) property to `true`.

The following code snippet shows how to subset fonts in a PDF file:

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
        SubsetFonts = true
    };
     
    viewer.View(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}

The following image demonstrates the result. There is no difference in appearance:

![No difference in appearance](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-subset-fonts-appearance.png)

But there is the significant difference in size:

![Significant difference in size](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-subset-fonts-size.png)
