---
id: add-text-watermark
url: viewer/net/add-text-watermark
title: Add text watermark
weight: 9
description: "This article explains how to add text watermark when rendering documents with GroupDocs.Viewer within your .NET applications."
keywords: Add watermark with GroupDocs.Viewer for .NET API
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
GroupDocs.Viewer enables you to add a watermark the output HTML/JPG/PNG/PDF.

Here is the recipe:

* Create instance of [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) class (or [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions), or [JpgViewOption](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), or [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions));
* Create a [Watermark](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/watermark) object and populate its properties;
* Assign [Watermark](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/watermark) object to [HtmlViewOptions.Watermark](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewoptions/properties/watermark) (or [PngViewOptions.Watermark](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewoptions/properties/watermark), or [JpgViewOptions.](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewoptions/properties/watermark)[Watermark](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), or [PdfViewOptions.Watermark](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewoptions/properties/watermark)) property;
* Call [View](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method.

The following code sample shows how to apply the watermark to the output pages.

```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.Watermark = new Watermark("This is a watermark");
                
    viewer.View(viewOptions);
}
```
