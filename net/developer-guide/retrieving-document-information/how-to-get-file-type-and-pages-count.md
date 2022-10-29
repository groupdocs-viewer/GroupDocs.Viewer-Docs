---
id: how-to-get-file-type-and-pages-count
url: viewer/net/how-to-get-file-type-and-pages-count
title: Get the file type and the number of pages
weight: 4
description: "This article explains how to get file type and pages count using .NET / C# with GroupDocs.Viewer for .NET."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
GroupDocs.Viewer for .NET API enables you to get file type and pages count with [GetViewInfo](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/getviewinfo) method that returns a [ViewInfo](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.results/viewinfo) object.

For the following document types GroupDocs.Viewer provides additional information:

* Archive files - a collection of folders in the archive (see [Obtain information about folders in an archive file]({{< ref "/viewer/net/rendering-basics/render-archive-files.md" >}}));
* CAD drawings - a collection of layouts and layers (see [Obtain information about existing layouts and layers]({{< ref "/viewer/net/rendering-basics/render-cad-documents/render-cad-documents.md" >}}));
* Outlook data files - a collection of the file's folders (see [Obtain information about folders in an Outlook data file]({{< ref "/viewer/net/rendering-basics/render-outlook-data-files.md" >}}));
* PDF documents - a flag that indicates whether document printing is allowed (see [Obtain information about a PDF file]({{< ref "/viewer/net/rendering-basics/render-pdf-documents.md" >}}));
* Microsoft Project files - the project's start and end dates (see [Obtain information about a Project file]({{< ref "/viewer/net/rendering-basics/render-ms-project-files.md" >}})).

## Get file type and pages count from file

```csharp
using (Viewer viewer = new Viewer("sample.pdf"))
{
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForHtmlView();
    ViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions);
 
    Console.WriteLine("Document type is: " + viewInfo.FileType);
    Console.WriteLine("Pages count: " + viewInfo.Pages.Count);
}
```

## Get file type and pages count from stream

```csharp
using (Viewer viewer = new Viewer(File.OpenRead("sample.pdf")))
{
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForHtmlView();
    ViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions);
 
    Console.WriteLine("Document type is: " + viewInfo.FileType);
    Console.WriteLine("Pages count: " + viewInfo.Pages.Count);
}
```