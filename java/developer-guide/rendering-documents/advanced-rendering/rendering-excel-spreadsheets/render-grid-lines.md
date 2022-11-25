---
id: render-grid-lines
url: viewer/java/render-grid-lines
title: Rendering grid lines
weight: 3
description: "This article explains how to show gridlines when viewing Spreadsheets with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer does not render grid lines of Spreadsheets by default. To enable rendering of grid lines you just need to set [setRenderGridLines()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions#setRenderGridLines(boolean)) property of [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions), [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions), [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) or [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) object to `true` in order to render the grid lines. 

The following code sample shows how to enable rendering of grid lines.

```java
    try (Viewer viewer = new Viewer("sample.xlsx")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.getSpreadsheetOptions().setRenderGridLines(true);
        viewer.view(viewOptions);
    }
```

