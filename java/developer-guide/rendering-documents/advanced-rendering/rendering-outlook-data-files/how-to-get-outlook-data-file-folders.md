---
id: how-to-get-outlook-data-file-folders
url: viewer/java/how-to-get-outlook-data-file-folders
title: List folders
weight: 2
description: "This article explains how to retrieve information about Outlook Data File with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer provides additional information for Outlook Data Files when calling [getViewInfo()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#getViewInfo(com.groupdocs.viewer.options.ViewInfoOptions)) method. To retrieve view information for Outlook Data File call [getViewInfo()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#getViewInfo(com.groupdocs.viewer.options.ViewInfoOptions)) method and cast output result to [OutlookViewInfo](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/OutlookViewInfo) type.

Following example demonstrates how to retrieve view information for Outlook Data File.

```java
    try (Viewer viewer = new Viewer("sample.ost")) {
        ViewInfoOptions viewInfoOptions = ViewInfoOptions.forHtmlView();
        OutlookViewInfo viewInfo = (OutlookViewInfo) viewer.getViewInfo(viewInfoOptions);
    
        System.out.println("File type is: " + viewInfo.getFileType());
        System.out.println("Pages count: " + viewInfo.getPages().size());
    
        for (String folder : viewInfo.getFolders()) {
            System.out.println(folder);
        }
    }
```
