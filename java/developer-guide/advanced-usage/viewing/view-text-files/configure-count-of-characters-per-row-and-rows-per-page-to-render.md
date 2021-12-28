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

## More resources

### GitHub Examples
You may easily run the code above and see the feature in action in our GitHub examples:
*   [GroupDocs.Viewer for Java examples, plugins, and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java)
*   [Document Viewer for .NET App WebForms UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-WebForms)
*   [Document Viewer for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Dropwizard)
*   [Document Viewer for Java Spring UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Spring)
*   [GroupDocs.Viewer for .NET samples, plugins and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET)
*   [Document Viewer for .NET MVC UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-MVC)

### Free Online App
Along with full-featured Java library we provide simple but powerful free Apps.
You are welcome to view Word, PDF, Excel, PowerPoint documents with free to use online **[GroupDocs Viewer App](https://products.groupdocs.app/viewer)**.