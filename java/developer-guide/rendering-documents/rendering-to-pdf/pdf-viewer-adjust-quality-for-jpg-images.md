---
id: pdf-viewer-adjust-quality-for-jpg-images
url: viewer/java/pdf-viewer-adjust-quality-for-jpg-images
title: Set Jpeg images quality
weight: 1
description: "Check this guide and learn how to adjust JPG images quality and size when displaying documents with PDF Viewer by GroupDocs."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
When rendering documents to PDF format that contains JPG images it may be reasonable to reduce size of the output file by adjusting quality of the JPG images. GroupDocs.Viewer enables you to adjust quality of images in the output PDF document with [setJpgQuality()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions#setJpgQuality(byte)) setting of [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) class. The supported values range of [setJpgQuality()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions#setJpgQuality(byte)) is from 1 to 100. Default value is 90.

The following steps are to be followed in order to set image quality.

* Initialize the object of [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions);
* Set [setJpgQuality()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions#setJpgQuality(byte)) value;
* Pass [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) object to [view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method.

The following code sample shows how to adjust JPG image quality in the output PDF document.

```java
try (Viewer viewer = new Viewer("sample.docx")) {
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.setJpgQuality((byte) 50);
    viewer.view(viewOptions);
}
```
