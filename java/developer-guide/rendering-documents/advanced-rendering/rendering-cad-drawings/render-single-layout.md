---
id: render-single-layout
url: viewer/java/render-single-layout
title: How to render single layout
weight: 12
description: "This article explains how to view a single layout of CAD drawing with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer renders **Model** layout of CAD drawing by default. To render specific layout from a CAD drawing the API provides [setLayoutName()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/CadOptions#setLayoutName(java.lang.String)) property of [CadOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/CadOptions) class (method [getCadOptions()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/BaseViewOptions#getCadOptions()) of [HtmlViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions), [JpgViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions), [PngViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) or [PdfViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) class). When this property is set, [setRenderLayouts()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/CadOptions#setRenderLayouts(boolean)) property will be ignored.

Following are the steps to render specific layout in CAD drawing.

* Create [HtmlViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions) object.
* Set [setLayoutName()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/CadOptions#setLayoutName(java.lang.String)) of [CadOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/CadOptions). 
* Call [view()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method.

The following code sample shows how to render a specific layout.

```java
    try (Viewer viewer = new Viewer("sample.dwg")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.getCadOptions().setLayoutName("Model");
        viewer.view(viewOptions);
    }
```
