---
id: adjust-jpeg-images-quality
url: viewer/java/adjust-jpeg-images-quality
title: Specify the JPEG image quality
weight: 3
description: "Adjust JPEG images quality when rendering documents to PDF with GroupDocs.Viewer for Java"
productName: GroupDocs.Viewer for Java
hideChildren: False
---
Decreasing the JPG images quality reduces the size of the output file.

To adjust images quality, call the [setJpgQuality()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/#setJpgQuality-int-) method of the [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/) class. The value must be between 1 (minimum quality) and 100. The default value is 90.

To set the image quality, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class. Specify the source document path as a constructor parameter.
1. Instantiate the [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/) object.
2. Call the [setJpgQuality()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/#setJpgQuality-int-) method.
3. Call the [View.view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#view-com.groupdocs.viewer.options.ViewOptions-) method of the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object. Specify the [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/) object as the parameter.

The following code snippet shows how to adjust JPG image quality in the output PDF document:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.docx")) {
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.setJpgQuality((byte) 50);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
