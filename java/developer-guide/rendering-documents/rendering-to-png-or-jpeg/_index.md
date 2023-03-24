---
id: rendering-to-png-or-jpeg
url: viewer/java/rendering-to-png-or-jpeg
title: Render to PNG or JPEG
weight: 12
description: "With GroupDocs.Viewer for Java you can render documents to PNG and JPEG formats."
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
When rendering to PNG/JPG, GroupDocs.Viewer renders each page of the source document as a separate PNG or JPG image.

To render files to PNG/JPG, follow these steps:

1. Create an instance of the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class. Specify the source document path as a constructor parameter.
2. Instantiate the [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/) or [JpgViewOptions ](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/) object. Specify a path to save the rendered  pages.
3. Call the [View.view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#view-com.groupdocs.viewer.options.ViewOptions-) method of the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object. Specify the [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/) or [JpgViewOptions ](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/) object as the parameter.

## Rendering to PNG

The following code snippet shows how to render a .docx document to PNG image:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PngViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.docx")) {
    PngViewOptions viewOptions = new PngViewOptions();
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Rendering to JPEG

The following code snippet shows how to render a .docx document to JPG image:

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.JpgViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.docx")) {
    JpgViewOptions viewOptions= new JpgViewOptions();
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

For details, please refer to the following pages: