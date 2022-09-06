---
id: navigation-in-archive-files
url: viewer/net/navigation-in-archive-files
title: Navigation in archive files
weight: 2
description: "This article describes folder navigation in the archive with GroupDocs.Viewer within your .NET applications."
keywords: folder, windows explorer navigation, archive to single-page HTML, Windows Explorer style
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
When rendering contents of the archive to single-page HTML, Windows Explorer style like navigation is implemented, to use this you should set RenderToSinglePage option to true:

```csharp
using (Viewer viewer = new Viewer("sample.zip"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.RenderToSinglePage = true;

    viewer.View(viewOptions);
}
```

To see the contents of a particular folder, just click on it. To get back in-depth, click on the required folder in the header near the archive name.

![Windows explorer navigation style](/viewer/net/images/navigation-in-archive-files/navigation.gif)
