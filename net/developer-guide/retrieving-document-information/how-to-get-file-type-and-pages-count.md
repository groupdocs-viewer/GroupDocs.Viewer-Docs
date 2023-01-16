---
id: how-to-get-file-type-and-pages-count
url: viewer/net/how-to-get-file-type-and-pages-count
title: Get the format family and the additional information
weight: 4
description: "This article explains how to get the format family and the additional information using .NET / C# with GroupDocs.Viewer for .NET."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
A format family is a group of several file types for which an application provides additional information. For example, archive files (.7z, .rar, .zip, etc.) or Outlook files (.ost, .pst) are format families.

You can get the format family and the additional information using the [GetViewInfo](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/getviewinfo) method that returns a [ViewInfo](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.results/viewinfo) object.

GroupDocs.Viewer provides additional information for the following format families:

* Archive files - a collection of folders in the archive (see [Obtain information about folders in an archive file]({{< ref "/viewer/net/rendering-basics/render-archive-files.md" >}}));
* CAD drawings - a collection of layouts and layers (see [Obtain information about existing layouts and layers]({{< ref "/viewer/net/rendering-basics/render-cad-documents/render-cad-documents.md" >}}));
* Outlook data files - a collection of folders (see [Obtain information about folders in an Outlook data file]({{< ref "/viewer/net/rendering-basics/render-outlook-data-files.md" >}}));
* PDF documents - a flag that indicates whether document printing is allowed (see [Obtain information about a PDF file]({{< ref "/viewer/net/rendering-basics/render-pdf-documents.md" >}}));
* Microsoft Project files - the project's start and end dates (see [Obtain information about a Project file]({{< ref "/viewer/net/rendering-basics/render-ms-project-files.md" >}})).

## Get the file type and the pages count from a file

The following code snippet shows how to get the file type and the pages count from a file:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Viewer viewer = new Viewer("sample.pdf"))
{
    // Get file information.
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForHtmlView();
    ViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions);
    // Display file type and pages count.
    Console.WriteLine("Document type is: " + viewInfo.FileType);
    Console.WriteLine("Pages count: " + viewInfo.Pages.Count);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/net/images/how-to-get-file-type-and-pages-count.png)

## Get the file type and the pages count from a stream

The following code snippet shows how to get the file type and the pages count from a stream:

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using (Viewer viewer = new Viewer(File.OpenRead("sample.pdf")))
{
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForHtmlView();
    ViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions);
 
    Console.WriteLine("Document type is: " + viewInfo.FileType);
    Console.WriteLine("Pages count: " + viewInfo.Pages.Count);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/net/images/how-to-get-file-type-and-pages-count.png)