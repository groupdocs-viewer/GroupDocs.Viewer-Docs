---
id: add-text-watermark
url: viewer/java/add-text-watermark
title: Add text watermark
weight: 10
description: "This article explains how to add text watermark when viewing documents with GroupDocs.Viewer within your Java applications."
keywords: add text watermark, rendering documents
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer enables you to apply a watermark on the output pages (HTML / Image / PDF).

Here is the recipe:

* Create instance of [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions) class (or [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions), or [JpgViewOption](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions), or [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions));
* Create a [Watermark](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/Watermark) object and populate its properties;
* Assign [Watermark](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/Watermark) object to [setWatermark()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ViewOptions#setWatermark(com.groupdocs.viewer.options.Watermark)) property of class [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions), [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions), [JpgViewOption](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions) or [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions);
* Call [view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method.

The following code sample shows how to apply the watermark to the output pages.

```java
    try (Viewer viewer = new Viewer("sample.docx")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.setWatermark(new Watermark("This is a watermark"));
    
        viewer.view(viewOptions);
    }
```
