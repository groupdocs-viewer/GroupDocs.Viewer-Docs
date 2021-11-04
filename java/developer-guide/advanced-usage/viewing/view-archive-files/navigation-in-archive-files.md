---
id: navigation-in-archive-files
url: viewer/java/navigation-in-archive-files
title: Folder navigation in archive files
weight: 2
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

![Windows explorer navigation style](viewer/java/images/navigation-in-archive-files/navigation.gif)

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