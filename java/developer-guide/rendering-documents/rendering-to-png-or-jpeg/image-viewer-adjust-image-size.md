---
id: image-viewer-adjust-image-size
url: viewer/java/image-viewer-adjust-image-size
title: Adjust image size
weight: 2
description: "Check this guide to learn how to adjust PNG and JPG images size when viewing documents with Image Viewer by GroupDocs for Java."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
Image Viewer allows you to set custom output image size in pixels through [setWidth()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions#setWidth(int)) and [setHeight()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions#setHeight(int)) properties in [JpgViewOptions ](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions) and [PngViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) classes.

Keep in mind that aspect ratio is automatically applied when you set [setWidth()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions#setWidth(int)) or [setHeight()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions#setHeight(int)) only.

This example demonstrates how to set output image size

```java
    try (Viewer viewer = new Viewer("sample.docx")) {
        JpgViewOptions viewOptions = new JpgViewOptions();
        viewOptions.setWidth(600);
        viewOptions.setHeight(800);
    
        viewer.view(viewOptions);
    }
```
