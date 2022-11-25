---
id: skip-rendering-of-empty-columns
url: viewer/java/skip-rendering-of-empty-columns
title: Skip rendering of empty columns
weight: 6
description: "This article explains how to hide empty columns when viewing Spreadsheets with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
Sometimes Excel document contains information at the beginning of the worksheet and after that, it contains some count of empty (blank) columns. In case, if the number of empty columns is considerably huge, the rendering time increases and hence, it affects the performance.

## The Solution

To skip rendering of empty columns GroupDocs.Viewer for Java provides [setSkipEmptyColumns()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions#setSkipEmptyColumns(boolean)) property of [SpreadsheetOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions) class, which allow omitting to render empty columns as shown in the sample below.

```java
    try (Viewer viewer = new Viewer("sample.xlsx")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.getSpreadsheetOptions().setSkipEmptyColumns(true);
        viewer.view(viewOptions);
    }
```
