---
id: set-image-size-limits-when-rendering-to-png-jpg
url: viewer/net/set-image-size-limits-when-rendering-to-png-jpg
title: Set image size limits
weight: 10
description: "This article shows how to set image size limits when rendering image to PNG or JPEG"
keywords: limit max size width height
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
GroupDocs.Viewer also provides the feature to set limits for width/height for the output image. Follow the below steps to achieve this functionality.
If you set MaxWidth/MaxHeight options, if the image exceeds one of these limits - it will be resized proportionally.

* Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object;
* Instantiate the [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions) or [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions);
* Set MaxWidth and/or MaxHeight values;

* Call [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method.
* The following code sample shows how to set the output image size limits when rendering the document.

```csharp
using (Viewer viewer = new Viewer("sample.jpg"))
{
    JpgViewOptions viewOptions = new JpgViewOptions("result_{0}.jpg");
    //PngViewOptions viewOptions = new PngViewOptions("result_{0}.png");
    
    viewOptions.MaxWidth = 800;
    viewOptions.MaxHeight = 600;

    viewer.View(viewOptions);
}
```

[PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions) and [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions) implement special interface [IMaxSizeOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/imaxsizeoptions), which contain properties for size limits.

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

{{< alert style="info" >}}

If you set Width/Height in options, MaxWidth/MaxHeight options will be ignored.

{{< /alert >}}
