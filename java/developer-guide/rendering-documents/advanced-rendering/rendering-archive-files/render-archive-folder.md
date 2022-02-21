---
id: render-archive-folder
url: viewer/java/render-archive-folder
title: Render Archive Folder
weight: 2
description: "This article explains how to view an archive file folder with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer renders items from the root of the archive by default.

When rendering of a specified folder is required, it can be achieved as shown in the examples below.

```java
    try (Viewer viewer = new Viewer("sample.zip")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.getArchiveOptions().setFolder("ThirdFolderWithItems");
        viewer.view(viewOptions);
    }
```