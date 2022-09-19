---
id: navigation-in-archive-files
url: viewer/java/navigation-in-archive-files
title: Folder navigation in archive files
weight: 4
description: "This article describes folder navigation in the archive with GroupDocs.Viewer within your Java applications."
keywords: folder windows explorer navigation
productName: GroupDocs.Viewer for Java
hideChildren: False
---
When rendering contents of the archive to single-page HTML, Windows Explorer style like navigation is implemented, to use this you should set RenderToSinglePage option to true:

```java
    try (Viewer viewer = new Viewer("sample.zip")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.setRenderToSinglePage(true);

        viewer.view(viewOptions);
    }
```

To see the contents of a particular folder, just click on it. To get back in-depth, click on the required folder in the header near the archive name.

![Windows explorer navigation style](/viewer/java/images/navigation-in-archive-files/navigation.gif)
