---
id: render-project-time-interval
url: viewer/java/render-project-time-interval
title: Set project period to render
weight: 4
description: "This article explains how to view the specific time interval of MS Project Document with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
There is the possibility that you are required to render a part of the MS Project within the specified time interval. In that case, GroupDocs.Viewer allows rendering part of MS Project document according to specified [setStartDate()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ProjectManagementOptions#setStartDate(java.util.Date)) and [setEndDate()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ProjectManagementOptions#setEndDate(java.util.Date)) properties of [ProjectManagementOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ProjectManagementOptions) class as shown in code samples below. When only one of these properties is set, rendering starts from the project's start date or ends on the project's end date correspondingly.

The following code samples show how to render MS Project document using [setStartDate()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ProjectManagementOptions#setStartDate(java.util.Date)) and [setEndDate()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ProjectManagementOptions#setEndDate(java.util.Date)).

```java
    try (Viewer viewer = new Viewer("sample.mpp")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    
        viewOptions.getProjectManagementOptions().setStartDate(new Date(2008, Calendar.JUNE, 1));
        viewOptions.getProjectManagementOptions().setEndDate(new Date(2008, Calendar.JULY, 1));
    
        viewer.view(viewOptions);
    }
```
