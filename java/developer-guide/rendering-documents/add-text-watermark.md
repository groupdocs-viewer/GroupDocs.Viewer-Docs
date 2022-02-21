---
id: add-text-watermark
url: viewer/java/add-text-watermark
title: Add text watermark
weight: 10
description: "This article explains how to add text watermark when viewing documents with GroupDocs.Viewer within your Java applications."
keywords: Add watermark with GroupDocs.Viewer for Java API
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer enables you to apply a watermark on the output pages (HTML / Image / PDF).

Here is the recipe:

* Create instance of [HtmlViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions) class (or [PngViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions), or [JpgViewOption](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions), or [PdfViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions));
* Create a [Watermark](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/Watermark) object and populate its properties;
* Assign [Watermark](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/Watermark) object to [setWatermark()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ViewOptions#setWatermark(com.groupdocs.viewer.options.Watermark)) property of class [HtmlViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions), [PngViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions), [JpgViewOption](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions) or [PdfViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions);
* Call [view()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method.

The following code sample shows how to apply the watermark to the output pages.

```java
    try (Viewer viewer = new Viewer("sample.docx")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.setWatermark(new Watermark("This is a watermark"));
    
        viewer.view(viewOptions);
    }
```
