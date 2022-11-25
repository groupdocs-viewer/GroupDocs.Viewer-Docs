---
id: document-viewer-image-viewer
url: viewer/java/rendering-to-png-or-jpeg
title: Rendering to PNG or JPEG
weight: 102
description: "Image Viewer component by GroupDocs allows you to display 100+ file formats as PNG or JPG images in your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: True
toc: True
---
Document viewer can operate in different rendering modes, HTML, Image and PDF (see [Features Overview]({{< ref "viewer/java/getting-started/features-overview.md" >}}) for more information). This article will describe on how to view documents in Image mode with Image Viewer.

Image Viewer provides [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) and [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions) classes to set specific options for rendering the document into desired image format.

Here are the steps for rendering into image with GroupDocs.Viewer API:

* Create new instance of [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class and pass source document path as a constructor parameter.
* Instantiate the [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) or [JpgViewOptions ](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions) object according to your requirements and specify saving path format for rendered document pages.
* Call [view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method of [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class instance and pass [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) or [JpgViewOptions ](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions) to it.

## Rendering to PNG

This example shows how to render each document page into PNG image.

```java
    try (Viewer viewer = new Viewer("sample.docx")) {
        PngViewOptions viewOptions = new PngViewOptions();
        viewer.view(viewOptions);
    }
```

## Rendering to JPEG

This example shows how to render each document page into JPG image.

```java
    try (Viewer viewer = new Viewer("sample.docx")) {
        JpgViewOptions viewOptions= new JpgViewOptions();                  
        viewer.view(viewOptions);
    }
```

{{< alert style="info" >}}GroupDocs.Viewer also provides an ability to customize rendering to image by setting additional options. To learn more about caching customization please refer to the following guides: [Image Viewer - Add text overlay over images]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-png-or-jpeg/image-viewer-add-text-overlay-over-images.md" >}}), [Image Viewer - Adjust image size]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-png-or-jpeg/image-viewer-adjust-image-size.md" >}}), [Image Viewer - Adjust quality for JPG]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-png-or-jpeg/image-viewer-adjust-quality-for-jpg.md" >}}) and [Image Viewer - Get text coordinates]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-png-or-jpeg/image-viewer-get-text-coordinates.md" >}}){{< /alert >}}
