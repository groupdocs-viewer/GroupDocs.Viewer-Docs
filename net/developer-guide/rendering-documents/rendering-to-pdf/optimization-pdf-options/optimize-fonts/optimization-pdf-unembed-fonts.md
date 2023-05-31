---
id: optimization-pdf-unembed-fonts
url: viewer/net/optimization-pdf-unembed-fonts
title: Optimize the output PDF file
linkTitle: Optimize the output PDF file
weight: 1
description: "This topic describes how to unembed fonts from a PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size, unembed fonts
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
If the document uses embedded fonts, the file contains all font data. The advantage is that the document is viewable regardless of whether the font is installed on the user’s machine or not. But embedding fonts makes the document bigger. GroupDocs.Viewer can remove all embedded fonts. This decreases the document size, but the file may become unreadable if the correct font is not installed.

To unembed fonts from a PDF file, set the `UnembedFonts` property to `true`.

The following code snippet shows how to unembed fonts from a PDF file:

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

