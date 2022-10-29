---
id: rendering-to-pdf
url: viewer/net/rendering-to-pdf
title: Render to PDF
weight: 13
description: "Rendering files to PDF with GroupDocs.Viewer for .NET. It means that you can embed PDF in websites or applications by using this C# API"
keywords: embed pdf in website, rendering to pdf, c# api, rendering pdf
productName: GroupDocs.Viewer for .NET
hideChildren: True
---  
This article will describe on how to render documents to PDF using GroupDocs.Viewer.

When rendering to PDF all pages of source document saved as a single target PDF document.  

Here are the steps for rendering to PDF with GroupDocs.Viewer:

* Create new instance of [Viewer](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class and pass source document path as a constructor parameter.
* Instantiate the [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) object and specify saving path format for rendered document.
* Call [View](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method of [Viewer](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class instance and pass [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) to it.

The following code sample shows how to render **DOCX** document to **PDF**.

```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
   PdfViewOptions viewOptions = new PdfViewOptions();
   viewer.View(viewOptions);
}
```
