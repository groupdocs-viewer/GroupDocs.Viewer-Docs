---
id: image-viewer-adjust-quality-for-jpg
url: viewer/net/image-viewer-adjust-quality-for-jpg
title: Adjust the JPEG image quality
weight: 3
description: "Following this guide you will learn how to adjust JPG images quality when rendering documents with Image Viewer by GroupDocs."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Decreasing the JPG images quality reduces the size of the output file.

To adjust images quality, set the [Quality](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions/properties/quality) property of the [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions) class. The value must be between 1 (minimum quality) and 100. The default value is 90.

To set the image quality, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class. Specify the source document path as a constructor parameter.
1. Instantiate the [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions) object.
2. Set the [Quality](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions/properties/quality) value.
3. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method of the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify the [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions) object as the parameter.

The following code snippet shows how to adjust quality of the output JPG image:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    // Create a JPG file.
    JpgViewOptions viewOptions = new JpgViewOptions();
    // Specify the JPG image quality.
    viewOptions.Quality = 50;    
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}