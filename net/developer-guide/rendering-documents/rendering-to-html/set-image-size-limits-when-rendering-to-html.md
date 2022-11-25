---
id: set-image-size-limits-when-rendering-to-html
url: viewer/net/set-image-size-limits-when-rendering-to-html
title: Set image size limits
weight: 5
description: "This article shows how to set output image size limits when rendering image to HTML"
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
GroupDocs.Viewer also provides the feature to set limits for width/height for the output image. Follow the below steps to achieve this functionality.
If you want to render single image to HTML you can set width/height for the output image.
If you set ImageMaxWidth/ImageMaxHeight options, if the image exceeds one of these limits - it will be resized proportionally.

* Instantiate the[Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object;
* Instantiate the [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions);
* Set ImageMaxWidth and/or ImageMaxHeight values;
* Call [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method.
* The following code sample shows how to set the output image size limits when rendering the document.

```csharp
using (Viewer viewer = new Viewer("sample.jpg"))
{
    HtmlViewOptions viewOptions = new HtmlViewOptions.ForEmbeddedResources("result_{0}.html");
    //HtmlViewOptions viewOptions = new HtmlViewOptions.ForExternalResources("page_{0}.html", "page_{0}_{1}", "page_{0}_{1}");
    
    viewOptions.ImageMaxWidth = 800;
    viewOptions.ImageMaxHeight = 600;

    viewer.View(viewOptions);
}
```

[HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions)class
has the following properties to set the image width/height.

```csharp
 /// <summary>
/// Max width of an output image in pixels.
/// </summary>
public int ImageMaxWidth { get; set; }

/// <summary>
/// Max height of an output image in pixels.
/// </summary>
public int ImageMaxHeight { get; set; }

/// <summary>
/// The width of the output image in pixels.
/// </summary>
public int ImageWidth { get; set; }

/// <summary>
/// The height of an output image in pixels.
/// </summary>
public int ImageHeight { get; set; }
```

{{< alert style="info" >}}

If you set Width/Height in options, MaxWidth/MaxHeight options will be ignored.

{{< /alert >}}
