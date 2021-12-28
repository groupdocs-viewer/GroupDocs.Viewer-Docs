---
id: how-to-list-archive-folders
url: viewer/net/how-to-list-archive-folders
title: List archive folders
weight: 1
description: "This article explains how to get information about an archive with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
GroupDocs.Viewer provides additional information such as list of folders when calling [GetViewInfo](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getviewinfo) method. To retrieve view information for Archive File call [GetViewInfo](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getviewinfo) method and cast output result to [ArchiveViewInfo](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.results/archiveviewinfo) type.

Following example demonstrates how to print out archive contents.

```csharp
public static void PrintViewInfo()
{
    using (Viewer viewer = new Viewer("sample.zip"))
    {
        ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForHtmlView();
        ViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions);

        Console.WriteLine("File type: " + viewInfo.FileType);
        Console.WriteLine("Pages count: " + viewInfo.Pages.Count);
        Console.WriteLine("Folders: ");
        Console.WriteLine(" - /");

        string rootFolder = string.Empty;
        PrintFolders(viewer, rootFolder);
    }
}

private static void PrintFolders(Viewer viewer, string folder)
{
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForHtmlView();
    viewInfoOptions.ArchiveOptions.Folder = folder;

    ArchiveViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions) as ArchiveViewInfo;

    foreach (string subFolder in viewInfo.Folders)
    {
        Console.WriteLine($" - {subFolder}");
        PrintFolders(viewer, subFolder);
    }
}
```
