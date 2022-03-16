---
id: configure-count-of-characters-per-row-and-rows-per-page-to-render
url: viewer/java/configure-count-of-characters-per-row-and-rows-per-page-to-render
title: Configure count of characters per row and rows per page to render
weight: 4
description: "This article explains how to configure count of characters per row and rows per page to be rendered when processing text files with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
When processing text files you can adjust page parameters like max characters per line and max lines per page with `MaxCharsPerRow` and `MaxRowsPerPage` options that have been added in v21.11.

```java
    try (Viewer viewer = new Viewer("sample.txt")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.getTextOptions().setMaxCharsPerRow(50); // Default value is 85
        viewOptions.getTextOptions().setMaxRowsPerPage(30); // Default value is 55

        viewer.view(viewOptions);
    }
```

The following screenshot shows the difference when setting `setMaxRowsPerPage(30)`.

![Comparing output of default and adjusted value of MaxRowsPerPage parameter](viewer/java/images/configure-count-of-characters-per-row-and-rows-per-page-to-render/max_row_per_page.png)

