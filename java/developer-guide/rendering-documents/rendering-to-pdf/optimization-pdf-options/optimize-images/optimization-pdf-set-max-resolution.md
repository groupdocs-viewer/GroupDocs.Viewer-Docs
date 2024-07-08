---
id: optimization-pdf-set-max-resolution
url: viewer/java/optimization-pdf-set-max-resolution
title: Set image resolution
linkTitle: Set image resolution
weight: 2
description: "This topic describes how to set image resolution in PDF file using the GroupDocs.Viewer Java API."
keywords: convert to pdf, optimize size, pdf reduce size, set resolution
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
If the output PDF file contains images, you can reduce its resolution.

To allow changing the image resolution, set the [setCompressImages()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptimizationoptions/#setCompressImages-boolean-) and [setResizeImages()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptimizationoptions/#setResizeImages-boolean-) setters to `true` in the [PdfOptimizationOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptimizationoptions). The GroupDocs.Viewer compresses all images in the file. The [setMaxResolution()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptimizationoptions/#setMaxResolution-int-) property determines the maximum resolution. 

The following code snippet shows how to reduce image resolution in the file:

{{< tabs "Example1">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("sample.docx")) {
    PdfViewOptions viewOptions = new PdfViewOptions();
    PdfOptimizationOptions optimizationOptions = new PdfOptimizationOptions();
    
    optimizationOptions.setCompressImages(true);
    optimizationOptions.setImageQuality(50);
    optimizationOptions.setResizeImages(true);
    optimizationOptions.setMaxResolution(100);
     
    viewOptions.setPdfOptimizationOptions(optimizationOptions);
    viewer.view(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}

The following image demonstrates the result:

![Set max resolution](/viewer/java/images/pdf-rendering/optimization/optimization-pdf-set-max-resolution.png)
