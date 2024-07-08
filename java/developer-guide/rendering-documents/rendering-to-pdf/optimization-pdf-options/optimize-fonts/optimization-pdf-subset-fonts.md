---
id: optimization-pdf-subset-fonts
url: viewer/java/optimization-pdf-subset-fonts
title: Subset fonts
linkTitle: Subset fonts
weight: 2
description: "This topic describes how to subset fonts in PDF file using the GroupDocs.Viewer Java API."
keywords: convert to pdf, optimize size, pdf reduce size, subset fonts
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
Optimization resources. SubsetFonts optimization option
Fonts will be converted into subsets if set to true

If the file uses embedded fonts, it contains all font data. GroupDocs.Viewer can subset embedded fonts to reduce the file size.

To subset fonts in a PDF file, use the [setSubsetFonts](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptimizationoptions/#setSubsetFonts-boolean-) method and set it to `true`.

The following code snippet shows how to subset fonts in a PDF file:

{{< tabs "Example1">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("sample.docx")) {
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.setPdfOptimizationOptions(new PdfOptimizationOptions());
    viewOptions.getPdfOptimizationOptions().setSubsetFonts(true);
     
    viewer.view(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}

The following image demonstrates the result. There is no difference in appearance:

![No difference in appearance](/viewer/java/images/pdf-rendering/optimization/optimization-pdf-subset-fonts-appearance.png)

But there is the significant difference in size:

![Significant difference in size](/viewer/java/images/pdf-rendering/optimization/optimization-pdf-subset-fonts-size.png)
