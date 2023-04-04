---
id: set-image-size-limits-when-rendering-to-png-jpg
url: viewer/java/set-image-size-limits-when-rendering-to-png-jpg
title: Set image size limits
weight: 10
description: "This article shows how to set image size limits when rendering image to PNG or JPEG"
keywords: limit max size width height
productName: GroupDocs.Viewer for Java
hideChildren: False
---
The [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/) and [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/) classes implement the [IMaxSizeOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/imaxsizeoptions/) interface that contains properties for size limits:

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
/**
 * Limits of image size options interface.
 */
public interface IMaxSizeOptions {
    /**
     * Max width of an output image in pixels.
     */
    int getMaxWidth();
    /**
     * Max width of an output image in pixels.
     */
    int setMaxWidth();
    /**
     * Max height of an output image in pixels.
     */
    int getMaxHeight();
    /**
     * Max height of an output image in pixels.
     */
    int setMaxHeight();
}
```
{{< /tab >}}
{{< /tabs >}}

{{< alert style="warning" >}}
If you call the setImageWidth/setImageHeight options, calls of the setImageMaxWidth/setImageMaxHeight methods are ignored.
{{< /alert >}}

To set the ImageMaxWidth/ImageMaxHeight options, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object.
2. Instantiate the [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/) or [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/) object.
3. Call the setMaxWidth and/or setMaxHeight methods.
4. Call the [View.view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#view-com.groupdocs.viewer.options.ViewOptions-) method.

The following code snippet shows how to set the output image size limits:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.JpgViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.jpg")) {
    JpgViewOptions viewOptions = new JpgViewOptions("result_{0}.jpg");
    // PngViewOptions viewOptions = new PngViewOptions("result_{0}.png");
    // Specify the maximum width and height.
    viewOptions.setMaxWidth(800);
    viewOptions.setMaxHeight(600);

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}