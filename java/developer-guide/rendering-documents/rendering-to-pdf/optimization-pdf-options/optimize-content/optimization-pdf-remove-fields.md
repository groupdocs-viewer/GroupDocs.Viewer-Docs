---
id: optimization-pdf-remove-fields
url: viewer/java/optimization-pdf-remove-fields
title: Remove form fields
linkTitle: Remove form fields
weight: 2
description: "This topic describes how to remove form fields from PDF file using the GroupDocs.Viewer Java API."
keywords: convert to pdf, optimize size, pdf reduce size, remove fields
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
If the output PDF file contains form fields, you can flatten them to reduce the file size.

To remove form fields, set the `setRemoveFormFields()` property to `true` in [PdfOptimizationOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptimizationoptions/).

The following code snippet shows how to flatten form fields in the file:

{{< tabs "Example1">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("sample.docx")) {
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.setPdfOptimizationOptions(new PdfOptimizationOptions());
    viewOptions.getPdfOptimizationOptions().setRemoveFormFields(true);
     
    viewer.view(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}

The following image demonstrates the result:

![Remove fields](/viewer/java/images/pdf-rendering/optimization/optimization-pdf-remove-fields.png)