---
id: enable-font-hinting
url: viewer/java/enable-font-hinting
title: Enable font hinting
weight: 3
description: "This article explains how to enable font hinting when viewing PDF Documents with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
To adjust the display of an outline font ([learn more about font hinting](https://en.wikipedia.org/wiki/Font_hinting)) when rendering PDF documents into image GroupDocs.Viewer provides [setEnableFontHinting()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfOptions#setEnableFontHinting(boolean)) setting as shown below:

NOTE: this option is supported when rendering into PNG and JPG.

```java
    try (Viewer viewer = new Viewer("sample.pdf")) {
        PngViewOptions viewOptions = new PngViewOptions();
        viewOptions.getPdfOptions().setEnableFontHinting(true);
    
        viewer.view(viewOptions);
    }
```
