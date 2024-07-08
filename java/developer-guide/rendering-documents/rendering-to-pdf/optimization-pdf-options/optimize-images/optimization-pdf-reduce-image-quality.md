---
id: optimization-pdf-reduce-image-quality
url: viewer/java/optimization-pdf-reduce-image-quality
title: Reduce image quality
linkTitle: Reduce image quality
weight: 1
description: "This topic describes how to compress images in PDF file using the GroupDocs.Viewer Java API."
keywords: convert to pdf, optimize size, pdf reduce size, compress images
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---

If the output PDF file contains images, you can reduce its size using image compression.

To enable image compression, set the [setCompressImages()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptimizationoptions/#setCompressImages-boolean-) method to `true`. The GroupDocs.Viewer compresses all images in the file.

The [setImageQuality()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptimizationoptions/#setImageQuality-int-) method determines the compression ratio. It is a quality value in percent. 100% means original quality.

The following code snippet shows how to compress images in the file:

{{< tabs "Example1">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("sample.docx")) {
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.setPdfOptimizationOptions(new PdfOptimizationOptions());
    viewOptions.getPdfOptimizationOptions().setCompressImages(true);
    viewOptions.getPdfOptimizationOptions().setImageQuality(50);
     
    viewer.view(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}

The following image demonstrates the result:

![Reduce image quality](/viewer/java/images/pdf-rendering/optimization/optimization-pdf-reduce-image-quality.png)
