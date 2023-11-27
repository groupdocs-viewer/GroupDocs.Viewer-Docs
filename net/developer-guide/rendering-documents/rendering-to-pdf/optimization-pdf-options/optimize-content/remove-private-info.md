---
id: remove-private-info
url: viewer/net/remove-private-info
title: Remove private information
linkTitle: Remove private information
weight: 5
description: "This topic describes how to remove private information from a PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
A PDF file often contains private information. GroupDocs.Viewer allows you to remove this information to protect sensitive data, enable secure document exchange and minimize the risks of data leakage.

To remove fonts in a PDF file, set the [RemovePrivateInfo](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/removeprivateinfo/) property to `true`.

The following code snippet shows how to remove private information from a PDF file:

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
        RemovePrivateInfo = true
    };
     
    viewer.View(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}


