---
id: adjust-image-quality
url: viewer/net/adjust-image-quality
title: Adjust image quality
weight: 1
description: "This article explains how to adjust image quality when rendering PDF Documents with GroupDocs.Viewer within your .NET applications."
keywords: rendering PDF Documents
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
GroupDocs.Viewer enables you to adjust quality of output images contained by the source PDF document. To adjust image quality use [PdfOptions.ImageQuality](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfoptions/properties/imagequality)option of [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) class.

[PdfOptions.ImageQuality](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfoptions/properties/imagequality) can be set to:

* *Low* - The acceptable quality, best performance and least size of the output image.
* *Medium* - Better quality and slower performance.
* *High* - Best quality but slow performance.

NOTE: this option is supported when rendering to HTML only.

Following code snippet shows how to adjust image quality when rendering to HTML.

```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.PdfOptions.ImageQuality = ImageQuality.Medium;

    viewer.View(viewOptions);
}
```
