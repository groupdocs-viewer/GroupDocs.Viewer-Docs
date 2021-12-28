---
id: how-to-get-outlook-data-file-folders
url: viewer/net/how-to-get-outlook-data-file-folders
title: Retrieve folders
weight: 2
description: "This article explains how to retrieve information about Outlook Data File with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
GroupDocs.Viewer provides additional information for Outlook Data Files when calling [GetViewInfo](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getviewinfo) method. To retrieve view information for Outlook Data File call [GetViewInfo](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getviewinfo) method and cast output result to [OutlookViewInfo](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.results/outlookviewinfo) type.

Following example demonstrates how to retrieve view information for Outlook Data File.

```csharp
using (Viewer viewer = new Viewer("sample.ost"))
{
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForHtmlView();
    OutlookViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions) as OutlookViewInfo;

    Console.WriteLine("File type is: " + viewInfo.FileType);
    Console.WriteLine("Pages count: " + viewInfo.Pages.Count);

    foreach (string folder in viewInfo.Folders)
        Console.WriteLine(folder);
}
```
