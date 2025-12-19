---
id: set-image-size-limits-when-rendering-to-pdf
url: viewer/python-net/set-image-size-limits-when-rendering-to-pdf
title: Set image size limits
weight: 4
description: "Control image size in PDF output: set width, height, or maximum dimensions."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
keywords: PdfViewOptions, image width, image height, image resizing, GroupDocs.Viewer, Python, PDF viewer
---
The [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions) class has the following properties to set the image width or/and height:

* **image_max_width** (int) - Max width of an output image in pixels.
* **image_max_height** (int) - Max height of an output image in pixels.
* **image_width** (int) - The width of the output image in pixels.
* **image_height** (int) - The height of an output image in pixels.

You can set the width and/or height of the output images. Use one of the following methods: 

* To render a single image, set image_width/image_height options.
* To render multiple images, set image_max_width/image_max_height options. If an image exceeds these limits, it is resized proportionally.

{{< alert style="warning" >}}
If you set the image_width/image_height options, the image_max_width/image_max_height options are ignored.
{{< /alert >}}

To set the image_max_width/image_max_height options, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) object.
2. Instantiate the [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions) object.
3. Set the image_max_width and/or image_max_height values;
4. Call the [view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method.

The following code snippet shows how to set the output image size limits:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
from groupdocs.viewer import Viewer
from groupdocs.viewer.options import PdfViewOptions

def set_image_size_limits():
    # Load document
    with Viewer("sample.jpg") as viewer:
        # Create a PDF file.
        viewOptions = PdfViewOptions("set_image_size_limits/image_with_size_limits.pdf")

        # Specify the maximum width and height.
        viewOptions.image_max_width = 800
        viewOptions.image_max_height = 600
        viewer.view(viewOptions)

if __name__ == "__main__":
    set_image_size_limits()
```
{{< /tab >}}
{{< tab "sample.jpg" >}}
{{< tab-text >}}
`sample.jpg` is the sample file used in this example. Click [here](/viewer/python-net/_sample_files/developer-guide/rendering-documents/rendering-to-pdf/set-image-size-limits-when-rendering-to-pdf/sample.jpg) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}