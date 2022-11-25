---
id: image-viewer-adjust-image-size
url: viewer/net/image-viewer-adjust-image-size
title: Adjust the image size
weight: 2
description: "Check this guide to learn how to adjust PNG and JPG images size when rendering documents with Image Viewer by GroupDocs for .NET."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Image Viewer allows you to set custom output image size in pixels through [Width](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions/properties/width) and [Height](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions/properties/height) properties in [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions) and [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions) classes.

{{< alert style="info" >}}

Keep in mind that aspect ratio is automatically applied when you set [Width](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions/properties/width) or [Height](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions/properties/height) only.

{{< /alert >}}

This example demonstrates how to set output image size

```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    JpgViewOptions viewOptions = new JpgViewOptions();
    viewOptions.Width = 600;
    viewOptions.Height = 800;
    
    viewer.View(viewOptions);
}
```
