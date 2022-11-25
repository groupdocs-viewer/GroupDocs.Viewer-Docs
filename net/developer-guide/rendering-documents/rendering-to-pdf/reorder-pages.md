---
id: reorder-pages
url: viewer/net/reorder-pages
title: Reorder pages
weight: 1
description: "Reorder pages when rendering documents to PDF with GroupDocs.Viewer for .NET"
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
GroupDocs.Viewer allows you to reorder the document pages. The order of the pages in the source document is never changed, instead, the API applies reordering to the resultant PDF document.

To reorder the pages:

* Instantiate [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object;
* Create [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions);
* Call [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method specifying desired page numbers order.

The following code snippet shows how to reorder pages.

```csharp
using (Viewer viewer = new Viewer("sample.docx"))            
{     
    PdfViewOptions viewOptions = new PdfViewOptions();
 
    // Pass page numbers in the order you want to render them                                       
    viewer.View(viewOptions, 2, 1);
}
```
