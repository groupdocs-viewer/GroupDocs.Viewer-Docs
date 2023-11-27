---
id: optimization-pdf-unembed-fonts
url: viewer/net/optimization-pdf-unembed-fonts
title: Unembed fonts
linkTitle: Unembed fonts
weight: 2
description: "This topic describes how to unembed fonts in PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size, unembed fonts
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
If a document uses embedded fonts, it means all font data is included in the document, allowing it to be viewed even if the user does not have the font installed. However, embedding fonts increases the document size.

The GroupDocs.Viewer allows you to unembed all embedded fonts. This decreases the document size but the document may become unreadable if the correct font is not installed.

To unembed fonts in a PDF file, set the [UnembedFonts](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/unembedfonts) property to `true`.

The following code snippet shows how to unembed fonts in a PDF file:

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
        UnembedFonts = true
    };
     
    viewer.View(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}

The following image demonstrates the result. There is no difference in appearance:

![No difference in appearance](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-unembed-fonts-appearance.png)

But there is the significant difference in size:

![Significant difference in size](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-unembed-fonts-size.png)
