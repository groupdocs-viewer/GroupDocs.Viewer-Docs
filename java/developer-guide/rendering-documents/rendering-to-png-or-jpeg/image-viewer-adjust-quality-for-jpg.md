---
id: image-viewer-adjust-quality-for-jpg
url: viewer/java/image-viewer-adjust-quality-for-jpg
title: Adjust the JPEG image quality
weight: 3
description: "Following this guide you will learn how to adjust JPG images quality when rendering documents with Image Viewer by GroupDocs."
productName: GroupDocs.Viewer for Java
hideChildren: False
---
Decreasing the JPG images quality reduces the size of the output file.

To adjust images quality, call the [setQuality()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/#setQuality-byte-) property of the [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/) class. The value must be between 1 (minimum quality) and 100. The default value is 90.

To set the image quality, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class. Specify the source document path as a constructor parameter.
1. Instantiate the [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/) object.
2. Call the [setQuality()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/#setQuality-byte-) method.
3. Call the [View.view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#view-com.groupdocs.viewer.options.ViewOptions-) method of the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object. Specify the [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/) object as the parameter.

The following code snippet shows how to adjust quality of the output JPG image:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.JpgViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.docx")) {
    JpgViewOptions viewOptions = new JpgViewOptions();
    viewOptions.setQuality((byte) 50);

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}