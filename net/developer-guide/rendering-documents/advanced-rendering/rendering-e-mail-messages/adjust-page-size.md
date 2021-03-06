---
id: adjust-page-size
url: viewer/net/adjust-page-size
title: Adjust page size
weight: 1
description: "This article explains how to adjust page size when rendering E-Mail Messages with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
GroupDocs.Viewer allows setting output page size for rendering Email messages into HTML, PDF, and images. To enable this feature, the [PageSize](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/emailoptions/properties/pagesize) property of the [EmailOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/emailoptions) class is used. The following are the pages sizes that are supported and provided in [PageSize](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/emailoptions/properties/pagesize) enumeration:

* *Unspecified* - The default, unspecified page size
* *Letter* - The size of the Letter page in points is 792 × 612
* *Ledger* - The size of the Ledger page in points is 1224 × 792
* *A0* - The size of the A0 page in points is 3371 × 2384
* *A1* - The size of the A1 page in points is 2384 × 1685
* *A2* - The size of the A2 page in points is 1684 × 1190
* *A3* - The size of the A3 page in points is 1190 × 842
* *A4* - The size of the A4 page in points is 842 × 595

The following are the steps to set size for email message:

* Create [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) (or [JpgViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), or [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions), or [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)) object;
* Set [EmailOptions.PageSize](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/emailoptions/properties/pagesize) value;
* Call [View](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method.

```csharp
using (Viewer viewer = new Viewer("sample.msg"))
{
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.EmailOptions.PageSize = PageSize.A4;
    viewer.View(viewOptions);
}
```
