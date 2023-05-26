---
id: optimization-pdf-subset-fonts
url: viewer/net/optimization-pdf-subset-fonts
title: Subset fonts
linkTitle: Subset fonts
weight: 2
description: "This topic describes how to subset fonts in PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size, subset fonts
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
Optimization resources. SubsetFonts optimization option
Fonts will be converted into subsets if set to true

If the file uses embedded fonts, it contains all font data. GroupDocs.Viewer can subset embedded fonts to reduce the file size.

To subset fonts in a PDF file, set the `SubsetFonts` property to `true`.

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
         viewOptions.PdfOptimizer = new OptimizePdfResources()
         {
           SubsetFonts = true
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

