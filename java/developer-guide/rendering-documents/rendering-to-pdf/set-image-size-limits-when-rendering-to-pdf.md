---
id: set-image-size-limits-when-rendering-to-pdf
url: viewer/java/set-image-size-limits-when-rendering-to-pdf
title: Set image size limits
weight: 4
description: "Set image size limits when rendering image to PDF"
productName: GroupDocs.Viewer for Java
hideChildren: False
---
The [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/) class has the following methods to set or get the image width or/and height:

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
/**
 * Max width of an output image in pixels. (When converting single image to HTML only)
 */
public int getImageMaxWidth();

/**
 * Max width of an output image in pixels. (When converting single image to HTML only)
 */
public void setImageMaxWidth(int imageMaxWidth);

/**
 * Max height of an output image in pixels. (When converting single image to HTML only)
 */
public int getImageMaxHeight();

/**
 * Max height of an output image in pixels. (When converting single image to HTML only)
 */
public void setImageMaxHeight(int imageMaxHeight);

/**
 * The width of the output image in pixels. (When converting single image to HTML only)
 */
public int getImageWidth();

/**
 * The width of the output image in pixels. (When converting single image to HTML only)
 */
public void setImageWidth(int imageWidth);

/**
 * The height of an output image in pixels. (When converting single image to HTML only)
 */
public int getImageHeight();

/**
 * The height of an output image in pixels. (When converting single image to HTML only)
 */
public void setImageHeight(int imageHeight);
```
{{< /tab >}}
{{< /tabs >}}

You can set the width and/or height of the output images. Use one of the following methods: 

* To render a single image, call setImageWidth/setImageHeight methods.
* To render multiple images, call setImageMaxWidth/setImageMaxHeight options. If an image exceeds these limits, it is resized proportionally.

{{< alert style="warning" >}}
If you set the ImageWidth/ImageHeight options, calls of setImageMaxWidth/setImageMaxHeight methods are ignored.
{{< /alert >}}

To call the setImageMaxWidth/setImageMaxHeight methods, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object.
2. Instantiate the [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/) object.
3. Call the setImageMaxWidth and/or setImageMaxHeight methods;
4. Call the [View.view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#view-com.groupdocs.viewer.options.ViewOptions-) method.

The following code snippet shows how to set the output image size limits:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.jpg")) {
    PdfViewOptions viewOptions = new PdfViewOptions("result.pdf");
    viewOptions.setImageMaxWidth(800);
    viewOptions.setImageMaxHeight(600);

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}