---
id: adjust-image-quality
url: viewer/java/adjust-image-quality
title: Adjust image quality
weight: 1
description: "This article explains how to adjust image quality when viewing PDF Documents with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer enables you to adjust quality of output images contained by the source PDF document. To adjust image quality use [setImageQuality()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfOptions#setImageQuality(int)) option of [PdfOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfOptions) class ([getPdfOptions()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/BaseViewOptions#getPdfOptions()) of [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions) class).

[setImageQuality()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfOptions#setImageQuality(int)) can be set to:

* [ImageQuality.LOW](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ImageQuality#Low) - Best quality but slow performance.
* [ImageQuality.MEDIUM](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ImageQuality#Medium) - Better quality and slower performance.
* [ImageQuality.HIGH](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ImageQuality#High) - The acceptable quality, best performance and least size of the output image.

NOTE: this option is supported when rendering to HTML only.

Following code snippet shows how to adjust image quality when rendering to HTML.

```java
    try (Viewer viewer = new Viewer("sample.docx")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.getPdfOptions().setImageQuality(ImageQuality.MEDIUM);
    
        viewer.view(viewOptions);
    }
```
