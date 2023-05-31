---
id: optimization-pdf-remove-unused-objects
url: viewer/net/optimization-pdf-remove-unused-objects
title: Remove unused objects
linkTitle: Remove unused objects
weight: 5
description: "This topic describes how to remove unused objects from PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size, remove unused objects
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
A PDF file can contain the PDF objects that are not referenced from any other object in the file. Such may happen if you remove a page from the file page tree but do not remove the page object.

GroupDocs.Viewer analyzes all objects. If it finds unused object, it removes this one.

To remove unused objects from a PDF file, set the `RemoveUnusedObjects` property to `true`.

The following code snippet shows how to remove unused objects from a PDF file:

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
           RemoveUnusedObjects = true
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

