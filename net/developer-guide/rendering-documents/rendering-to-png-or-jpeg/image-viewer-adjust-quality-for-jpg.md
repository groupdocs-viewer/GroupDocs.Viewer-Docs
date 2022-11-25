---
id: image-viewer-adjust-quality-for-jpg
url: viewer/net/image-viewer-adjust-quality-for-jpg
title: Adjust the JPEG image quality
weight: 3
description: "Following this guide you will learn how to adjust JPG images quality when rendering documents with Image Viewer by GroupDocs."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
When rendering documents and files to JPG with GroupDocs.Viewer you can adjust quality of the output images by setting [Quality](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions/properties/quality) property of [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions) class. The supported values range of [Quality](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions/properties/quality) is from 1 to 100. Default value is 90.

This example demonstrates how to adjust quality of the output JPG image.

```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    JpgViewOptions viewOptions = new JpgViewOptions();
    viewOptions.Quality = 50;
    
    viewer.View(viewOptions);
}
```
