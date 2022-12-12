---
id: how-to-get-file-type-and-pages-count
url: viewer/net/how-to-get-file-type-and-pages-count
title: Get the document type and the page count
weight: 4
description: "This article explains how to get the document type and the page count using .NET / C# with GroupDocs.Viewer for .NET."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
A document type is a group of several file types for which an application provides additional information. For example, archive files (.7z, .rar, .zip, etc.) or Outlook files (.ost, .pst) are document types.

You can get the document type and the page count using the [GetViewInfo](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/getviewinfo) method that returns a [ViewInfo](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.results/viewinfo) object.

GroupDocs.Viewer provides additional information for the following document types:

* Archive files - a collection of folders in the archive (see [Obtain information about folders in an archive file]({{< ref "/viewer/net/rendering-basics/render-archive-files.md" >}}));
* CAD drawings - a collection of layouts and layers (see [Obtain information about existing layouts and layers]({{< ref "/viewer/net/rendering-basics/render-cad-documents/render-cad-documents.md" >}}));
* Outlook data files - a collection of folders (see [Obtain information about folders in an Outlook data file]({{< ref "/viewer/net/rendering-basics/render-outlook-data-files.md" >}}));
* PDF documents - a flag that indicates whether document printing is allowed (see [Obtain information about a PDF file]({{< ref "/viewer/net/rendering-basics/render-pdf-documents.md" >}}));
* Microsoft Project files - the project's start and end dates (see [Obtain information about a Project file]({{< ref "/viewer/net/rendering-basics/render-ms-project-files.md" >}})).

## Get file type and pages count from file

{{< tabs "example1">}}
{{< tab "C#" >}}
```cs
using (Viewer viewer = new Viewer("sample.pdf"))
{
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForHtmlView();
    ViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions);
 
    Console.WriteLine("Document type is: " + viewInfo.FileType);
    Console.WriteLine("Pages count: " + viewInfo.Pages.Count);
}
```
{{< /tab >}}
{{< /tabs >}}

## Get file type and pages count from stream

{{< tabs "example2">}}
{{< tab "C#" >}}
```cs
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