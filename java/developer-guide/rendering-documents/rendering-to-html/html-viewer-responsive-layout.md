---
id: html-viewer-responsive-layout
url: viewer/java/html-viewer-responsive-layout
title: Rendering to responsive layout
weight: 3
description: "Learn how to render and display your document with responsive HTML layout that looks great on mobile and desktop devices."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---

![](/viewer/java/images/html-viewer-responsive-layout.jpg)

GroupDocs.Viewer also enables you to make your rendering into HTML look well across all types of devices. To achieve this, the API provides [setRenderResponsive()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions#setRenderResponsive(boolean)) property of [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions) class as shown in below sample code.

```java
    try (Viewer viewer = new Viewer("sample.docx")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.setRenderResponsive(true);
        viewer.view(viewOptions);
    }
```
