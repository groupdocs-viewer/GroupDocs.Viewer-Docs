---
id: render-archive-folder
url: viewer/net/render-archive-folder
title: Render archive folder
weight: 2
description: "This article explains how to view an archive file folder with GroupDocs.Viewer within your .NET applications."
keywords: renders items from the root, archive file folder
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
GroupDocs.Viewer renders items from the root of the archive by default.

When rendering of a specified folder is required, it can be achieved as shown in the examples below.

```csharp
using (Viewer viewer = new Viewer("sample.zip"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.ArchiveOptions.Folder = "ThirdFolderWithItems";
    viewer.View(viewOptions);
}
```


