---
id: separator-detection
url: viewer/net/separator-detection
title: Separator detection
weight: 4
description: "This article explains how to use seperator detection for CSV/TSV files with GroupDocs.Viewer within your .NET applications."
keywords: csv tsv separator
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Since 21.7 version GroupDocs.Viewer enables you to auto-detect separator for TSV/CSV files:

When [DetectSeparator](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/spreadsheetoptions/properties/detectseparator) property is enabled (disabled by default) GroupDocs.Viewer examines your TSV/CSV files for the right separator. \
This feature testing two separators: \
, - by default \
; - alternative separator

The following code snippet shows how to set default font name.

```csharp
using (Viewer viewer = new Viewer(@"sample.csv"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.SpreadsheetOptions.DetectSeparator = true;
    viewer.View(viewOptions);
}          
```

## More resources

### GitHub Examples

You may easily run the code above and see the feature in action in our GitHub examples:

* [GroupDocs.Viewer for .NET examples, plugins, and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET)
* [GroupDocs.Viewer for Java examples, plugins, and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java)
* [Document Viewer for .NET MVC UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-MVC)
* [Document Viewer for .NET App WebForms UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-WebForms)
* [Document Viewer for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Dropwizard)
* [Document Viewer for Java Spring UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Spring)

### Free Online App

Along with full-featured .NET library we provide simple but powerful free Apps.
You are welcome to view Word, PDF, Excel, PowerPoint documents with free to use online **[GroupDocs Viewer App](https://products.groupdocs.app/viewer)**.
