---
id: render-layers
url: viewer/java/render-layers
title: How to render layers
weight: 11
description: "This article explains how to view CAD drawing layers with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer renders all layers of the CAD drawing by default. To render specific layers you can set the layers that you want to render by adding them into the [setLayers()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/CadOptions#setLayers(java.util.List)) property of [CadOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/CadOptions) (method [getCadOptions()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/BaseViewOptions#getCadOptions()) of [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions), [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions), [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) or [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) class). 

The following code sample shows how to render a specific layer of a CAD drawing.

```java
    try (Viewer viewer = new Viewer("sample.dwg")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.getCadOptions().setLayers(Arrays.asList(new Layer("TRIANGLE"), new Layer("QUADRANT")));
        viewer.view(viewOptions);
    }
```
