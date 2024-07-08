---
id: optimization-pdf-remove-annotations
url: viewer/java/optimization-pdf-remove-annotations
title: Remove annotations
linkTitle: Remove annotations
weight: 1
description: "This topic describes how to remove annotations from PDF file using the GroupDocs.Viewer Java API."
keywords: convert to pdf, optimize size, pdf reduce size, remove annotations
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
If the output PDF file contains annotations, you can remove them to reduce the file size.

To remove annotations, set the [setRemoveAnnotations](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptimizationoptions/#setRemoveAnnotations-boolean-) to `true`.

The following code snippet shows how to remove annotations from the file:

{{< tabs "Example1">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("sample.docx")) {
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.setPdfOptimizationOptions(new PdfOptimizationOptions());
    viewOptions.getPdfOptimizationOptions().setRemoveAnnotations(true);

    viewer.view(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}

The following image demonstrates the result:

![Remove annotations](/viewer/java/images/pdf-rendering/optimization/optimization-pdf-remove-annotations.png)
