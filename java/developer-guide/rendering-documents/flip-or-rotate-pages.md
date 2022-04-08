---
id: flip-or-rotate-pages
url: viewer/java/flip-or-rotate-pages
title: Flip or rotate pages
weight: 6
description: "This article explains how to flip or rotate PDF, HTML or Image pages when rendering documents with GroupDocs.Viewer within your Java applications."
keywords: rotate pdf, rotate pages
productName: GroupDocs.Viewer for Java
hideChildren: False
---
![](viewer/java/images/flip-or-rotate-pages.png)

The GroupDocs.Viewer enables you to rotate individual pages when viewing documents in HTML/PDF/JPG/PNG formats. To flip/rotate pages use the [rotatePage()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ViewOptions#rotatePage(int,%20int)) method of [ViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ViewOptions) class.  The method accepts page number as the first parameter and rotation angle as the second parameter. There are three options that you can pass as the second parameter into [rotatePage()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ViewOptions#rotatePage(int,%20int)) method:

* [Rotation.ON_90_DEGREE](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/Rotation#ON_90_DEGREE) - instructs to rotate page on 90-degree clockwise;
* [Rotation.ON_180_DEGREE](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/Rotation#ON_180_DEGREE) - instructs to rotate page on 180-degree clockwise;
* [Rotation.ON_270_DEGREE](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/Rotation#ON_270_DEGREE) - instructs to rotate page on 270-degree clockwise;

The following code snippet shows how to rotate output pages when viewing a document as PDF ([this example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java/blob/master/Examples/src/main/java/com/groupdocs/viewer/examples/advanced_usage/rendering/common_rendering_options/RotatePages.java) can be also found in our public [GitHub repository](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java).)

```java
    try (Viewer viewer = new Viewer("sample.docx")) {
        PdfViewOptions viewOptions = new PdfViewOptions();
        viewOptions.rotatePage(1, Rotation.ON_90_DEGREE);
    
        viewer.view(viewOptions);
    }
```
