---
id: optimization-pdf-spreadsheets
url: viewer/java/optimization-pdf-spreadsheets
title: Optimize spreadsheets in a PDF file
linkTitle: Optimize spreadsheets in a PDF file
weight: 3
description: "This topic describes how to optimize spreadsheets in a PDF file using the GroupDocs.Viewer Java API."
keywords: convert to pdf, optimize browser, optimize web
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
This optimization allows to reduce the output file size by setting up border lines. Besides that, it removes the Arial and Times New Roman characters of 32-127 codes.

The default value is `false`.


The following code snippet shows how to optimize spreadsheets in a PDF file:

{{< tabs "Example1">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("invoice.xlsx")) {
    PdfViewOptions viewOptions = new PdfViewOptions();
    PdfOptimizationOptions optimizationOptions = new PdfOptimizationOptions();
    optimizationOptions.setOptimizeSpreadsheets(true);
    viewOptions.setPdfOptimizationOptions(optimizationOptions);
    viewer.view(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}
