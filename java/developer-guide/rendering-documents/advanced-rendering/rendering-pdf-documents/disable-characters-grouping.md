---
id: disable-characters-grouping
url: viewer/java/disable-characters-grouping
title: Disable characters grouping
weight: 2
description: "This article explains how to disable characters grouping when viewing PDF Documents with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
To improve content positioning when rendering into PDF GroupDocs.Viewer provides [setDisableCharsGrouping()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfOptions#setDisableCharsGrouping(boolean)) as shown below:

```java
    try (Viewer viewer = new Viewer("sample.pdf")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.getPdfOptions().setDisableCharsGrouping(true);
    
        viewer.view(viewOptions);
    }
```
