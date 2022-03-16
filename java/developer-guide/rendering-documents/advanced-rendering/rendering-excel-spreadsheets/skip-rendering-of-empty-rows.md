---
id: skip-rendering-of-empty-rows
url: viewer/java/skip-rendering-of-empty-rows
title: Skip rendering of empty rows
weight: 7
description: "This article explains how to hide empty rows when viewing Spreadsheets with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
Sometimes Excel document contains information at the beginning of the worksheet and after that, it contains some count of empty (blank) rows. In case, if the number of empty rows is considerably huge, the rendering time increases and hence, it affects the performance.

## The Solution

To skip rendering of empty rows GroupDocs.Viewer for Java provides [setSkipEmptyRows()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions#setSkipEmptyRows(boolean)) property of [SpreadsheetOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions) class, which allow omitting to render empty rows as shown in the sample below:

```java
    try (Viewer viewer = new Viewer("sample.xlsx")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.getSpreadsheetOptions().setSkipEmptyRows(true);
        viewer.view(viewOptions);
    }
```
