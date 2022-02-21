---
id: show-hidden-pages
url: viewer/java/show-hidden-pages
title: Render hidden pages
weight: 3
description: "This article explains how to show hidden pages when viewing documents with GroupDocs.Viewer within your Java applications."
keywords: Show hidden pages with GroupDocs.Viewer for Java
productName: GroupDocs.Viewer for Java
hideChildren: False
---

Hidden pages are not rendered by default. In order to include them into the rendering GroupDocs.Viewer provides [setRenderHiddenPages()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/BaseViewOptions#setRenderHiddenPages(boolean)) property of the [HtmlViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions), [JpgViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions), [PngViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) or [PdfViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) class to `true` as shown in the example below.

This feature is supported for:

* Diagrams with hidden pages
* Presentations with hidden slides
* Spreadsheets with hidden worksheets

The following code sample shows how to render hidden pages.

```java
    try (Viewer viewer = new Viewer("sample.pptx")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.setRenderHiddenPages(true);
        viewer.view(viewOptions);
    }
```
