---
id: image-viewer-adjust-image-size
url: viewer/java/image-viewer-adjust-image-size
title: Adjust the image size
weight: 2
description: "Check this guide to learn how to adjust PNG and JPG images size when rendering documents with Image Viewer by GroupDocs for Java."
productName: GroupDocs.Viewer for Java
hideChildren: False
---
To specify the output image size, call the [setWidth()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/#setWidth-int-) and [setHeight()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/#setHeight-int-) methods of the [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/) or [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/) classes. Specify the value in pixels.

{{< alert style="info" >}}
GroupDocs.Viewer applies the aspect ratio automatically applied when you set the [setWidth()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/#setWidth-int-) or [setHeight()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/#setHeight-int-) value.
{{< /alert >}}

The following code snippet shows how to set the image width or height.

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.JpgViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.docx")) {
    JpgViewOptions viewOptions = new JpgViewOptions();
    // Specify width and height.
    viewOptions.setWidth(600);
    viewOptions.setHeight(800);

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
