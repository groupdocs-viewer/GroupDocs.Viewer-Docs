---
id: add-text-watermark
url: viewer/net/add-text-watermark
title: Add text watermarks
weight: 9
description: "This article explains how to add text watermark when rendering documents with GroupDocs.Viewer within your .NET applications."
keywords: add text watermark, rendering documents
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
To add a watermark to the HTML/JPG/PNG/PDF output, follow these steps:

1. Create an instance of the [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) class (or [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions), or [JpgViewOption](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), or [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions));
2. Create a [Watermark](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/watermark) object and populate its properties;
3. Assign the [Watermark](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/watermark) object to [HtmlViewOptions.Watermark](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewoptions/properties/watermark) (or [PngViewOptions.Watermark](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewoptions/properties/watermark), or [JpgViewOptions.](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewoptions/properties/watermark)[Watermark](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), or [PdfViewOptions.Watermark](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewoptions/properties/watermark)) property;
4. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method.

The following code snippet shows how to apply the watermark to the output pages.

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    // Create an HTML file.
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    // Add watermark
    viewOptions.Watermark = new Watermark("This is a watermark");                
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}