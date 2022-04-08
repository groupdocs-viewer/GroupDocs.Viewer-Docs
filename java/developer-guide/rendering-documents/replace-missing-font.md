---
id: replace-missing-font
url: viewer/java/replace-missing-font
title: Replace missing font
weight: 8
description: "This article explains how to replace missing font when viewing documents with GroupDocs.Viewer within your Java applications."
keywords: missing font,rendering documents
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer enables you to set default font name which may be useful in following cases:

1. You want to generally specify the default font to fall back on if a particular font in a document cannot be found during rendering;
2. The document uses a font that contains non-English characters and you want to make sure that any missing font is replaced with one which has the same character set available.

Following code snippet shows how to set default font name.

```java
    try (Viewer viewer = new Viewer("sample.pptx")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.setDefaultFontName("Courier New");
        viewer.view(viewOptions);
    }
```
