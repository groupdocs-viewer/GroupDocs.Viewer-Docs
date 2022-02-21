---
id: how-to-check-that-pdf-printing-not-allowed
url: viewer/java/how-to-check-that-pdf-printing-not-allowed
title: Check if PDF printing not allowed
weight: 5
description: "This article explains how to retrieve information about PDF Documents with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---

GroupDocs.Viewer provides additional information for PDF documents when calling [getViewInfo()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#getViewInfo(com.groupdocs.viewer.options.ViewInfoOptions)) method. To retrieve view information for PDF document call [getViewInfo()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#getViewInfo(com.groupdocs.viewer.options.ViewInfoOptions)) method and cast output result to [PdfViewInfo](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/PdfViewInfo) type.

Following example demonstrates how to retrieve view information for PDF document.

```java
    try (Viewer viewer = new Viewer("sample.pdf")) {
        ViewInfoOptions viewInfoOptions = ViewInfoOptions.forHtmlView();
        PdfViewInfo viewInfo = (PdfViewInfo) viewer.getViewInfo(viewInfoOptions);
    
        System.out.println("Document type is: " + viewInfo.getFileType());
        System.out.println("Pages count: " + viewInfo.getPages().size());
        System.out.println("Printing allowed: " + viewInfo.isPrintingAllowed());
    }
```
