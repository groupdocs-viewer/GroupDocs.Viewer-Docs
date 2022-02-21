---
id: set-custom-fonts
url: viewer/java/set-custom-fonts
title: Set custom fonts
weight: 7
description: "This article explains how to set custom fonts when viewing documents with GroupDocs.Viewer within your Java applications."
keywords: Setting custom fonts with GroupDocs.Viewer for Java API
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer provides the feature to add custom font sources.

Following code snippet shows how to set a custom font source.

```java
    FolderFontSource fontSource = new FolderFontSource("C:\\custom_fonts", SearchOption.TOP_FOLDER_ONLY);
    FontSettings.setFontSources(fontSource);

    try (Viewer viewer = new Viewer("sample.docx")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewer.view(viewOptions);
    }
```
