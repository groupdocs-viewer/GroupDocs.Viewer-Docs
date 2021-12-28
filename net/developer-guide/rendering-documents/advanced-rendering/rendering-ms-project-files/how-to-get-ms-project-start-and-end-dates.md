---
id: how-to-get-ms-project-start-and-end-dates
url: viewer/net/how-to-get-ms-project-start-and-end-dates
title: Retrieve project start and end dates
weight: 3
description: "This article explains how to retrieve information about MS Project Documents into tiles with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
## Retrieving project start/end dates

GroupDocs.Viewer provides additional information such as project start and end dates for MS Project documents when calling [GetViewInfo](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getviewinfo) method. To retrieve view information for MS Project document call [GetViewInfo](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getviewinfo) method and cast output result to [ProjectManagementViewInfo](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.results/projectmanagementviewinfo) type.

Following example demonstrates how to retrieve view information for MS Project document.

```csharp
using (Viewer viewer = new Viewer("sample.mpp"))
{
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForHtmlView();
    ProjectManagementViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions) as ProjectManagementViewInfo;
 
    Console.WriteLine("Document type is: " + viewInfo.FileType);
    Console.WriteLine("Pages count: " + viewInfo.Pages.Count);
    Console.WriteLine("Project start date: {0}", viewInfo.StartDate);
    Console.WriteLine("Project end date: {0}", viewInfo.EndDate); 
}   
```
