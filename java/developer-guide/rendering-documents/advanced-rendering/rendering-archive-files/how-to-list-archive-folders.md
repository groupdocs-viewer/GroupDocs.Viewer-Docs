---
id: how-to-list-archive-folders
url: viewer/java/how-to-list-archive-folders
title: List archive folders
weight: 1
description: "This article explains how to get information about an archive with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer provides additional information such as list of folders when calling [getViewInfo()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#getViewInfo(com.groupdocs.viewer.options.ViewInfoOptions)) method. To retrieve view information for Archive File call [getViewInfo()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#getViewInfo(com.groupdocs.viewer.options.ViewInfoOptions)) method and cast output result to [ArchiveViewInfo](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/ArchiveViewInfo) type.

Following example demonstrates how to print out archive contents.

```java
    public void printViewInfo() {
        try (Viewer viewer = new Viewer("sample.zip")) {
            ViewInfoOptions viewInfoOptions = ViewInfoOptions.forHtmlView();
            ViewInfo viewInfo = viewer.getViewInfo(viewInfoOptions);
    
            System.out.println("File type: " + viewInfo.getFileType());
            System.out.println("Pages count: " + viewInfo.getPages().size());
            System.out.println("Folders: ");
            System.out.println(" - /");
    
            String rootFolder = StringExtensions.Empty;
            printFolders(viewer, rootFolder);
        }
    }


    private void printFolders(Viewer viewer, String folder) {
        ViewInfoOptions viewInfoOptions = ViewInfoOptions.forHtmlView();
        viewInfoOptions.getArchiveOptions().setFolder(folder);

        ArchiveViewInfo viewInfo = (ArchiveViewInfo) viewer.getViewInfo(viewInfoOptions);

        for (String subFolder : viewInfo.getFolders()) {
            System.out.println(" - " + subFolder);
            printFolders(viewer, subFolder);
        }
    }
```
