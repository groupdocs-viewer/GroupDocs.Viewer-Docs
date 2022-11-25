---
id: enable-layered-rendering
url: viewer/java/enable-layered-rendering
title: Enable layered rendering
weight: 4
description: "This article explains how to enable layered rendering when viewing PDF Documents with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
When rendering into HTML GroupDocs.Viewer renders text and graphics as a single layer that improves performance and reduces HTML document size. To improve content positioning when rendering multi-layered PDF document GroupDocs.Viewer for Java provides [setEnableLayeredRendering()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfOptions#setEnableLayeredRendering(boolean)) option that enables rendering of text and graphics according to z-order in original PDF document when rendering into HTML.

{{< alert style="info" >}}This option is supported when rendering to HTML only.{{< /alert >}}

Following code sample demonstrates how to enable layered rendering.

```java
    try (Viewer viewer = new Viewer("sample.pdf")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.getPdfOptions().setEnableLayeredRendering(true);
    
        viewer.view(viewOptions);
    }
```
