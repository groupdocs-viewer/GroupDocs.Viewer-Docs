---
id: adjust-text-overflow-in-cells
url: viewer/java/adjust-text-overflow-in-cells
title: Adjust text overflow in cells
weight: 1
description: "This article explains how to adjust text-overflow in cells when viewing Spreadsheets with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
This article explains how to adjust text-overflow in cells when viewing Spreadsheets with GroupDocs.Viewer within your Java applications.

## Introduction

![](/viewer/java/images/adjust-text-overflow-in-cells.png)

When Spreadsheet is rendered overflowed text inside the cell overlays subsequent cells until it meets non-empty cell. GroupDocs.Viewer provides a setting to configure the mode which will be used for rendering overflowed text:

1.  To set the overflowed text to be hidden, set [setTextOverflowMode()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions#setTextOverflowMode(int)) of [SpreadsheetOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions)  class to [TextOverflowMode.HIDE_TEXT](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/TextOverflowMode#HIDE_TEXT) as shown in the example below.
2.  To set the overflowed text to overlay subsequent cells until it meets non empty cell, set [setTextOverflowMode()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions#setTextOverflowMode(int)) of [SpreadsheetOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions) object to [TextOverflowMode.OVERLAY_IF_NEXT_IS_EMPTY](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/TextOverflowMode#OVERLAY_IF_NEXT_IS_EMPTY). This is a default value.
3.  To set the overflowed text to overlay subsequent cells even they are not empty, set [setTextOverflowMode()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions#setTextOverflowMode(int)) of [SpreadsheetOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions) object to [TextOverflowMode.OVERLAY](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/TextOverflowMode#OVERLAY).
4.  To expand the cell width to fit overflowed text, set [setTextOverflowMode()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions#setTextOverflowMode(int)) of [SpreadsheetOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions) object to [TextOverflowMode.AUTO_FIT_COLUMN](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/TextOverflowMode#AUTO_FIT_COLUMN). 

NOTE: The same workflow is applicable for [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions), [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions), and [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) classes;

## How to adjust text overflow in cells 

The following steps are required to manage text-overflow:

* Instantiate the [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions), [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions), [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) or [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) object;
* Set [setTextOverflowMode()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions#setTextOverflowMode(int)) of [SpreadsheetOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions) to [TextOverflowMode.HIDE_TEXT](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/TextOverflowMode#HIDE_TEXT)
* Call [view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method.

The following code sample shows how to hide text in case it overflows cell.

```java
    try (Viewer viewer = new Viewer("sample.xlsx")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.getSpreadsheetOptions().setTextOverflowMode(TextOverflowMode.HIDE_TEXT);
        viewer.view(viewOptions);
    }
```
