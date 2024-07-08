---
id: optimization-pdf-resources
url: viewer/java/optimization-pdf-resources
title: Optimize the PDF file resources
linkTitle: Optimize the PDF file resources
weight: 2
description: "This topic describes how to optimize PDF file using the GroupDocs.Viewer Java API to reduce size."
keywords: convert to pdf, optimize size, pdf reduce size
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
Resource optimization allows you to reduce the size of the output PDF file. While optimizing, GroupDocs.Viewer may reduce the image size or quality, remove notes or form fields, remove objects, fonts, or personal information from a document, and so on.

The following code snippet shows how to optimize the PDF file by default:

{{< tabs "Example1">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("sample.docx")) {
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.setPdfOptimizationOptions(new PdfOptimizationOptions());
     
    viewer.view(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}


