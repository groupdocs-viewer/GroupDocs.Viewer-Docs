---
id: set-image-size-limits-when-rendering-to-pdf
url: viewer/python-net/set-image-size-limits-when-rendering-to-pdf
title: Set image size limits
weight: 4
description: "Set image size limits when rendering image to PDF"
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
The [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) class has the following properties to set the image width or/and height:

{{< tabs "example2">}}
{{< tab "C#" >}}
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
{{< /tab >}}
{{< /tabs >}}

You can set the width and/or height of the output images. Use one of the following methods: 

* To render a single image, set ImageWidth/ImageHeight options.
* To render multiple images, set ImageMaxWidth/ImageMaxHeight options. If an image exceeds these limits, it is resized proportionally.

{{< alert style="warning" >}}
If you set the ImageWidth/ImageHeight options, the ImageMaxWidth/ImageMaxHeight options are ignored.
{{< /alert >}}

To set the ImageMaxWidth/ImageMaxHeight options, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object.
2. Instantiate the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) object.
3. Set the ImageMaxWidth and/or ImageMaxHeight values;
4. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method.

The following code snippet shows how to set the output image size limits:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer(test_files.sample_jpg) as viewer:
	# Create an HTML file.
	viewOptions = gvo.PdfViewOptions()
	# Specify the maximum width and height.
	viewOptions.image_max_width = 800
	viewOptions.image_max_height = 600
	viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}