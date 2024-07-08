---
id: optimization-pdf-convert-grayscale
url: viewer/java/optimization-pdf-convert-grayscale
title: Convert to grayscale
linkTitle: Convert to grayscale
weight: 3
description: "This topic describes how to convert PDF file to grayscale using the GroupDocs.Viewer Java API."
keywords: convert to pdf, optimize size, pdf reduce size, convert to grayscale
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
To speed up the printing of a PDF file and reduce its size, you can convert it from RGB color space to grayscale.

To convert a PDF file to grayscale, set the [setConvertToGrayScale()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/Pdfoptimizationoptions/#setConvertToGrayScale-boolean-) method to `true`.

The following code snippet shows how to convert a PDF file to grayscale:

{{< tabs "Example1">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("sample.docx")) {
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.setPdfOptimizationOptions(new PdfOptimizationOptions());
    viewOptions.getPdfOptimizationOptions().setConvertToGrayScale(true);
     
    viewer.view(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}

The following image demonstrates the result:

![Convert to grayscale](/viewer/java/images/pdf-rendering/optimization/optimization-pdf-convert-grayscale.png)
