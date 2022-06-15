---
id: how-to-get-cad-layers-and-layouts
url: viewer/java/how-to-get-cad-layers-and-layouts
title: Rendering CAD layers and layouts
weight: 6
description: "This article explains how to retrieve information about CAD drawings with GroupDocs.Viewer within your Java applications when we are going to create a DWG Viewer."
keywords: how to retrieve view information for CAD drawing, DWG Viewer
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer provides additional information about CAD drawings such as list of layouts and layers when calling [getViewInfo()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#getViewInfo(com.groupdocs.viewer.options.ViewInfoOptions)) method. To retrieve view information for CAD drawing call [getViewInfo()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#getViewInfo(com.groupdocs.viewer.options.ViewInfoOptions)) method and cast output result to [CadViewInfo](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/CadViewInfo) type.

Following example demonstrates how to retrieve view information for CAD drawing.

```java
    try (Viewer viewer = new Viewer("sample.dwg")) {
        ViewInfoOptions viewInfoOptions = ViewInfoOptions.forHtmlView();
        CadViewInfo viewInfo = (CadViewInfo) viewer.getViewInfo(viewInfoOptions);
    
        System.out.println("File type: " + viewInfo.getFileType());
        System.out.println("Pages count: " + viewInfo.getPages().size());
    
        for (Layout layout : viewInfo.getLayouts()) {
            System.out.println(layout);
        }
    
        for (Layer layer : viewInfo.getLayers()) {
            System.out.println(layer);
        }
    }
```
