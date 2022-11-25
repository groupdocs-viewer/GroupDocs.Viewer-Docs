---
id: image-viewer-adjust-quality-for-jpg
url: viewer/java/image-viewer-adjust-quality-for-jpg
title: Set Jpeg quality 
weight: 3
description: "Following this guide you will learn how to adjust JPG images quality when viewing documents with Image Viewer by GroupDocs."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
When rendering documents and files to JPG with GroupDocs.Viewer you can adjust quality of the output images by setting [setQuality()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions#setQuality(byte)) property of [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions) class. The supported values range of [setQuality()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions#setQuality(byte)) is from 1 to 100. Default value is 90.

This example demonstrates how to adjust quality of the output JPG image.

```java
try (Viewer viewer = new Viewer("sample.docx")) {
    JpgViewOptions viewOptions = new JpgViewOptions();
    viewOptions.setQuality((byte) 50);

    viewer.view(viewOptions);
}
```
