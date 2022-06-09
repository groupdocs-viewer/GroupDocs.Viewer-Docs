---
id: how-to-get-cad-layers-and-layouts
url: viewer/net/how-to-get-cad-layers-and-layouts
title: Retrieve CAD layers and layouts
weight: 6
description: "This article explains how to retrieve information about CAD drawings with GroupDocs.Viewer within your .NET applications when we are going to create a DWG Viewer."
keywords: how to retrieve view information for CAD drawing, DWG Viewer
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
GroupDocs.Viewer provides additional information about CAD drawings such as list of layouts and layers when calling [GetViewInfo](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getviewinfo) method. To retrieve view information for CAD drawing call [GetViewInfo](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getviewinfo) method and cast output result to [CadViewInfo](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.results/cadviewinfo) type.

Following example demonstrates how to retrieve view information for CAD drawing. 

```csharp
using (Viewer viewer = new Viewer("sample.dwg"))
{
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForHtmlView();
    CadViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions) as CadViewInfo;

    Console.WriteLine("File type: " + viewInfo.FileType);
    Console.WriteLine("Pages count: " + viewInfo.Pages.Count);

    foreach (Layout layout in viewInfo.Layouts)
        Console.WriteLine(layout);

    foreach (Layer layer in viewInfo.Layers)
        Console.WriteLine(layer);
}
```

