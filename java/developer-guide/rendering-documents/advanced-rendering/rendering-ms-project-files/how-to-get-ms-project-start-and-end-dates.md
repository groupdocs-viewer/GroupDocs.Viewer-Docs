---
id: how-to-get-ms-project-start-and-end-dates
url: viewer/java/how-to-get-ms-project-start-and-end-dates
title: Retrieving project start and end dates
weight: 3
description: "This article explains how to retrieve information about MS Project Documents into tiles with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---

GroupDocs.Viewer provides additional information such as project start and end dates for MS Project documents when calling [getViewInfo()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#getViewInfo(com.groupdocs.viewer.options.ViewInfoOptions)) method. To retrieve view information for MS Project document call [getViewInfo()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#getViewInfo(com.groupdocs.viewer.options.ViewInfoOptions)) method and cast output result to [ProjectManagementViewInfo](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/ProjectManagementViewInfo) type.

Following example demonstrates how to retrieve view information for MS Project document.

```java
    try (Viewer viewer = new Viewer("sample.mpp")) {
        ViewInfoOptions viewInfoOptions = ViewInfoOptions.forHtmlView();
        ProjectManagementViewInfo viewInfo = (ProjectManagementViewInfo) viewer.getViewInfo(viewInfoOptions);
    
        System.out.println("Document type is: " + viewInfo.getFileType());
        System.out.println("Pages count: " + viewInfo.getPages().size());
        System.out.println("Project start date: " + viewInfo.getStartDate());
        System.out.println("Project end date: " + viewInfo.getEndDate());
    }
```
