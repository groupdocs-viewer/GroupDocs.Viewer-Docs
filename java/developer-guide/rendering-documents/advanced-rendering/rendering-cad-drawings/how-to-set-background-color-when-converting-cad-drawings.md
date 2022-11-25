---
id: how-to-set-background-color-when-converting-cad-drawings
url: viewer/java/how-to-set-background-color-when-converting-cad-drawings
title: Set drawing background color
weight: 7
description: "This article explains how to set background color when converting CAD Drawings with GroupDocs.Viewer within your Java applications"
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
When converting CAD drawings with GroupDocs.Viewer there is no background color set by default but we proved an option that enables you to set any background color.

## Setting background color when converting CAD Drawings

Let's check how does output looks when converting sample CAD drawing with GroupDocs.Viewer for Java.

And as you can see the background color of the output image below is white.

![](/viewer/java/images/how-to-set-background-color-when-converting-cad-drawings.png)

Now, lets set background color and convert CAD drawing one more time.

To set background color you need to specify the [setBackgroundColor()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/CadOptions#setBackgroundColor(java.awt.Color)) property value in the [CadOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/CadOptions) class. 

The following code snippet shows how to set background color.

```java
    try (Viewer viewer = new Viewer("input.dwg")) {
        PngViewOptions options = new PngViewOptions(pageFilePathFormat);
        options.getCadOptions().setBackgroundColor(Color.BLUE);
        viewer.view(options);
    }
```

And here is output image with blue background color:

![](/viewer/java/images/how-to-set-background-color-when-converting-cad-drawings_1.png)
