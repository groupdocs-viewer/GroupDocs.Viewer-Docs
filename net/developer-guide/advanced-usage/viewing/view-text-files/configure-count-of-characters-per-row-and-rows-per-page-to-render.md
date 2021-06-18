---
id: configure-count-of-characters-per-row-and-rows-per-page-to-render
url: viewer/net/configure-count-of-characters-per-row-and-rows-per-page-to-render
title: Configure count of characters per row and rows per page to render
weight: 4
description: "This article explains how to configure count of characters per row and rows per page to be rendered when processing text files with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
When processing text files you can adjust page parameters like max characters per line and max lines per page with *MaxCharsPerRow* and *MaxRowsPerPage* options that have been added in v21.6.

```csharp
using (Viewer viewer = new Viewer("sample.txt"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.TextOptions.MaxCharsPerRow = 50; // Default value is 85
    viewOptions.TextOptions.MaxRowsPerPage = 30; // Default value is 55

    viewer.View(viewOptions);
}
```

The following screenshot shows the difference when setting *MaxRowsPerPage=30*.

![Comparing output of default and adjusted value of MaxRowsPerPage parameter](viewer/net/images/configure-count-of-characters-per-row-and-rows-per-page-to-render/max_row_per_page.png)

## More resources

### View Text Files Online

Along with full-featured .NET library we provide simple but powerful free online Apps.
View Text and other files online with **[GroupDocs Viewer App](https://products.groupdocs.app/viewer/total)**.

### GitHub Examples

You may easily run the code above and see the feature in action in our GitHub examples:

* [GroupDocs.Viewer for .NET examples, plugins, and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET)
* [GroupDocs.Viewer for Java examples, plugins, and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java)
* [Document Viewer for .NET MVC UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-MVC)
* [Document Viewer for .NET App WebForms UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-WebForms)
* [Document Viewer for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Dropwizard)
* [Document Viewer for Java Spring UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Spring)