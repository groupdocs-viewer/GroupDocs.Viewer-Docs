---
id: render-outlook-data-file-folder
url: viewer/java/render-outlook-data-file-folder
title: Render folder
weight: 3
description: "This article explains how to view a specific folder of Outlook Data File with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer renders messages from all folders (including nested folders) by default. When you need to render items from a specific folder, use [setFolder()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/OutlookOptions#setFolder(java.lang.String)) property of the [OutlookOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/OutlookOptions) class as shown in the example below. Please note that you should use the following convention for naming folders and subfolders to specify it in [setFolder()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/OutlookOptions#setFolder(java.lang.String)) option: `{Parent folder name}\\{Sub folder name}`. Thus, if you need to render items from Inbox folder just specify `setFolder("Inbox");` when you need to render subfolder named `Orion` that resides in a folder named `Urgent` that in turn resides in Inbox, set: `setFolder("Inbox\\Urgent\\Orion")` 

The following code samples show how to use this option for rendering:

```java
    try (Viewer viewer = new Viewer("sample.ost")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.getOutlookOptions().setFolder("Inbox\\SubFolder\\SubFolder2");
        viewer.view(viewOptions);
    }
```
