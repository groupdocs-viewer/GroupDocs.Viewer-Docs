---
id: how-to-view-dwf-file-layers
url: viewer/java/how-to-view-dwf-file-layers
title: Rendering DWF file layers
weight: 8
description: "This article explains how to view a specific DWF file layers with GroupDocs.Viewer within your Java / C# applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
Design Web Format File (.dwf) consists of various user layers. Layers represent various parts of the entire drawing, for example, this drawing describes a plan of a building and it's parts like stairs, walls, doors located in different layers.

![](viewer/java/images/how-to-view-dwf-file-layers.png)

## Background

Let's take a sample DWF described above and then we'll process with GroupDocs.Viewer and compare results.

By default GroupDocs.Viewer renders all layers:

![](viewer/java/images/how-to-view-dwf-file-layers_1.png)

## How to view only specific layers

If you want to view only specific layers you can set [setLayers()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/CadOptions#setLayers(java.util.List)) property of [CadOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/CadOptions) ([getCadOptions()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/BaseViewOptions#getCadOptions()) method of [HtmlViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions), [PngViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions), [JpgViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions) or [PdfViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions)) class. 

Let's view only "Doors", "Stairs", "Walls" layers, to do that use following code, 

```java
    try (Viewer viewer = new Viewer("sample.dwf")) {
        PngViewOptions viewOptions = new PngViewOptions();
    
        viewOptions.getCadOptions().getLayers().add(new Layer("Stairs"));
        viewOptions.getCadOptions().getLayers().add(new Layer("Walls"));
        viewOptions.getCadOptions().getLayers().add(new Layer("Doors"));
    
        viewer.view(viewOptions);
    }
```

Now GroupDocs.Viewer will render only these layers:

![](viewer/java/images/how-to-view-dwf-file-layers_2.png)
