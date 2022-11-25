---
id: image-viewer-add-text-overlay-over-images
url: viewer/java/image-viewer-add-text-overlay-over-images
title: Add text overlay
weight: 1
description: "Implement selectable text and text search features by adding text overlay over document page images with GroupDocs.Viewer component."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer provides feature that allows to add text overlays over images. This feature is useful if you want to add selectable text over the image or implement a text search in image-based rendering.

**Please note** that due to Image Viewer's architecture rendering results with text extraction enabled and disabled are different.

The [setExtractText()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions#setExtractText(boolean)) property of [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) (or [setExtractText()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions#setExtractText(boolean)) property of [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions)) class enables you to render document to display with text.

This example demonstrates how to render document for display with text.

```java
    try (Viewer viewer = new Viewer("sample.docx")) {
        PngViewOptions viewOptions = new PngViewOptions();
        viewOptions.setExtractText(true);
        viewer.view(viewOptions);
    }
```
