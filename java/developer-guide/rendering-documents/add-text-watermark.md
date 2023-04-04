---
id: add-text-watermark
url: viewer/java/add-text-watermark
title: Add text watermarks
weight: 9
description: "This article explains how to add text watermark when rendering documents with GroupDocs.Viewer within your Java applications."
keywords: add text watermark, rendering documents
productName: GroupDocs.Viewer for Java
hideChildren: False
---
To add a watermark to the HTML/JPG/PNG/PDF output, follow these steps:

1. Create an instance of the [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/) class (or [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/), or [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/), or [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/));
2. Create a [Watermark](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/Watermark) object and populate its properties;
3. Call the [setWatermark](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/viewoptions/#setWatermark-com.groupdocs.viewer.options.Watermark-) method of the [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions) (or [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions), or [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions), or [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions)) class and specify the object created on step 2;
4. Call the [Viewer.view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#view-com.groupdocs.viewer.options.ViewOptions-) method.

The following code snippet shows how to apply the watermark to the output pages.

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
import com.groupdocs.viewer.options.Watermark;
// ...

try (Viewer viewer = new Viewer("sample.docx")) {
    // Create an HTML file.
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    // Add watermark.
    viewOptions.setWatermark(new Watermark("This is a watermark"));

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}