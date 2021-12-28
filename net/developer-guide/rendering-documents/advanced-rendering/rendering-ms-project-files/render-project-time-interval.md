---
id: render-project-time-interval
url: viewer/net/render-project-time-interval
title: Render project time interval
weight: 4
description: "This article explains how to view the specific time interval of MS Project Document with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
There is the possibility that you are required to render a part of the MS Project within the specified time interval. In that case, GroupDocs.Viewer allows rendering part of MS Project document according to specified [StartDate](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/projectmanagementoptions/properties/startdate) and [EndDate](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/projectmanagementoptions/properties/enddate) properties of [ProjectManagementOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/projectmanagementoptions) class as shown in code samples below. When only one of these properties is set, rendering starts from the project's start date or ends on the project's end date correspondingly.

The following code samples show how to render MS Project document using [StartDate](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/projectmanagementoptions/properties/startdate) and [EndDate](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/projectmanagementoptions/properties/enddate).

```csharp
using (Viewer viewer = new Viewer(@"sample.mpp"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.ProjectManagementOptions.StartDate = new DateTime(2008, 6, 1);
    viewOptions.ProjectManagementOptions.EndDate = new DateTime(2008, 7, 1);
    viewer.View(viewOptions);
}
```
