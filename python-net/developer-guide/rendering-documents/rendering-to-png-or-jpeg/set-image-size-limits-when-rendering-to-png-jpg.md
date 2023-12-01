---
id: set-image-size-limits-when-rendering-to-png-jpg
url: viewer/python-net/set-image-size-limits-when-rendering-to-png-jpg
title: Set image size limits
weight: 10
description: "This article shows how to set image size limits when rendering image to PNG or JPEG"
keywords: limit max size width height
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
The [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions) and [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions) classes implement the [IMaxSizeOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/imaxsizeoptions) interface that contains properties for size limits:

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
/// <summary>
/// Limits of image size options interface. 
/// </summary>
public interface IMaxSizeOptions
{
    /// <summary>
    /// Max width of an output image in pixels.
    /// </summary>
    int MaxWidth { get; set; }

    /// <summary>
    /// Max height of an output image in pixels.
    /// </summary>
    int MaxHeight { get; set; }
}
```
{{< /tab >}}
{{< /tabs >}}

{{< alert style="warning" >}}
If you set the ImageWidth/ImageHeight options, the ImageMaxWidth/ImageMaxHeight options are ignored.
{{< /alert >}}

To set the ImageMaxWidth/ImageMaxHeight options, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object.
2. Instantiate the [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions) or [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions) object.
3. Set MaxWidth and/or MaxHeight values.
4. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method.

The following code snippet shows how to set the output image size limits:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
# Create a JPG or PNG file.
with gv.Viewer(test_files.sample_docx) as viewer:
    jpg_options = gvo.JpgViewOptions("result_{0}.jpg")
    png_options = gvo.PngViewOptions("result_{0}.jpg")

    # Specify the maximum width and height.
    jpg_options.max_width = 600
    jpg_options.max_height = 800
    viewer.view(jpg_options)
```
{{< /tab >}}
{{< /tabs >}}