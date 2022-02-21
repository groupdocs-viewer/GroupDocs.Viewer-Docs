---
id: set-output-image-size-limits-rendering-to-png-or-jpeg
url: viewer/java/set-output-image-size-limits-when-rendering-to-png-or-jpeg
title: Set image size limits
weight: 11
description: "This article explains how to set output image size limits for PDF/HTML output when rendering documents with GroupDocs.Viewer within your Java applications."
keywords: limit max size width height html
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer also provides the feature to set limits for width/height for the output image. Follow the below steps to achieve this functionality.
If you want to render single image in HTML you can set width/height for the output image.
If you set ImageMaxWidth/ImageMaxHeight options, if the image exceeds one of these limits - it will be resized proportionally.

* Instantiate the [Viewer](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object;
* Instantiate the  [HtmlViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions);
* Set ImageMaxWidth and/or ImageMaxHeight values;
* Call [view()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method.

The following code sample shows how to set the output image size limits when rendering the document.

```java
try (Viewer viewer = new Viewer("sample.jpg")) {
    HtmlViewOptions viewOptions = new HtmlViewOptions.forEmbeddedResources();
    viewOptions.setImageMaxWidth(800);
    viewOptions.setImageMaxHeight(600);

    viewer.view(viewOptions);
}
```

In [PdfViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions)
have following methods to set single image width/height in PDF.

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

**Note:** If you set Width/Height in options, MaxWidth/MaxHeight options **will be ignored**.
