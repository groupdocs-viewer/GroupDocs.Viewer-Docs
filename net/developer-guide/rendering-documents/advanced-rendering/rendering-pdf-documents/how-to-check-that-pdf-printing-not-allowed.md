---
id: how-to-check-that-pdf-printing-not-allowed
url: viewer/net/how-to-check-that-pdf-printing-not-allowed
title: PDF printing permissions
weight: 5
description: "This article explains how to retrieve information about PDF Documents with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
GroupDocs.Viewer provides additional information for PDF documents when calling [GetViewInfo](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getviewinfo) method. To retrieve view information for PDF document call [GetViewInfo](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getviewinfo) method and cast output result to [PdfViewInfo](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.results/pdfviewinfo) type.

Following example demonstrates how to retrieve view information for PDF document.

```csharp
using (Viewer viewer = new Viewer("sample.pdf"))
{
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForHtmlView();
    PdfViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions) as PdfViewInfo;

    Console.WriteLine("Document type is: " + viewInfo.FileType);
    Console.WriteLine("Pages count: " + viewInfo.Pages.Count);
    Console.WriteLine("Printing allowed: " + viewInfo.PrintingAllowed);
}
```
