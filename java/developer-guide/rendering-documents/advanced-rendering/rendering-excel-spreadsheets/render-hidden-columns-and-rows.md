---
id: render-hidden-columns-and-rows
url: viewer/java/render-hidden-columns-and-rows
title: Rendering hidden columns and rows
weight: 4
description: "This article explains how to show hidden rows and cells when viewing Spreadsheets with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
Sometimes Excel document may contain hidden columns and rows (as shown in the image below). GroupDocs.Viewer doesn't render hidden columns and rows by default. However, there may be the case when you want to control the inclusion of hidden content in the rendering results. 

![](/viewer/java/images/render-hidden-columns-and-rows.png)

## The Solution

GroupDocs.Viewer provides [setRenderHiddenRows()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions#setRenderHiddenRows(boolean)) and [setRenderHiddenColumns()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions#setRenderHiddenColumns(boolean)) options in [SpreadsheetOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions) class which enables rendering hidden rows and columns as shown in the following code samples. 

```java
    try (Viewer viewer = new Viewer("sample.xlsx")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.getSpreadsheetOptions().setRenderHiddenColumns(true);
        viewOptions.getSpreadsheetOptions().setRenderHiddenRows(true);
        viewer.view(viewOptions);
    }
```
