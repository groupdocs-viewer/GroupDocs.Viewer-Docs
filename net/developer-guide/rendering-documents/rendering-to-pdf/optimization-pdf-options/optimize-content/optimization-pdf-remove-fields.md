---
id: optimization-pdf-remove-fields
url: viewer/net/optimization-pdf-remove-fields
title: Remove form fields
linkTitle: Remove form fields
weight: 2
description: "This topic describes how to remove form fields from PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size, remove fields
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
If the output PDF file contains form fields, you can flatten them to reduce the file size.

To remove form fields, set the `RemoveFormFields` property to `true`.

The following code snippet shows how to flatten form fields in the file:

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
         viewOptions.PdfOptimizer = new OptimizePdfResources()
         {
           RemoveFormFields = true
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

