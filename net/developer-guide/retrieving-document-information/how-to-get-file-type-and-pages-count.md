---
id: how-to-get-file-type-and-pages-count
url: viewer/net/how-to-get-file-type-and-pages-count
title: Get the format family and the additional information
weight: 2
description: "This article explains how to get the format family and the additional information using .NET / C# with GroupDocs.Viewer for .NET."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
A format family is a group of several file types for which an application provides additional information. For example, archive files (.7z, .rar, .zip, etc.) or Outlook files (.ost, .pst) are format families.

You can get the format family and the additional information using the [GetViewInfo](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/getviewinfo) method that returns a [ViewInfo](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.results/viewinfo) object.

GroupDocs.Viewer provides additional information for the following format families:

* Archive files - a collection of folders in the archive (see [Obtain information about folders in an archive file]({{< ref "/viewer/net/rendering-basics/render-archives/_index.md" >}}));
* CAD drawings - a collection of layouts and layers (see [Obtain information about existing layouts and layers]({{< ref "/viewer/net/rendering-basics/render-cad-documents/render-cad-documents.md" >}}));
* Outlook data files - a collection of folders (see [Obtain information about folders in an Outlook data file]({{< ref "/viewer/net/rendering-basics/render-outlook-data-files.md" >}}));
* PDF documents - a flag that indicates whether document printing is allowed (see [Obtain information about a PDF file]({{< ref "/viewer/net/rendering-basics/render-pdf-documents.md" >}}));
* Microsoft Project files - the project's start and end dates (see [Obtain information about a Project file]({{< ref "/viewer/net/rendering-basics/render-ms-project-files.md" >}})).

## Get the file type and the pages count from a file

The following code snippet shows how to get the file type and the pages count from a file:

{{< tabs "get-file-type-and-pages-count">}}
{{< tab "C#" >}}
```csharp
using System;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Results;
// ...

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
{{< tab "VB.NET">}}
```vb
Imports System
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
Imports GroupDocs.Viewer.Results
' ...

Module Program
    Sub Main(args As String())
        Using viewer As Viewer = New Viewer("sample.pdf")
            ' Get file information.
            Dim viewInfoOptions As ViewInfoOptions = ViewInfoOptions.ForHtmlView()
            Dim viewInfo As ViewInfo = viewer.GetViewInfo(viewInfoOptions)

            ' Display file type and pages count.
            Console.WriteLine("Document type is: " & viewInfo.FileType.ToString())
            Console.WriteLine("Pages count: " & viewInfo.Pages.Count.ToString())
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/retrieving-document-information/how-to-get-file-type-and-pages-count/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "get-file-type-and-pages-count.txt" >}}  
```text
Document type is: Portable Document Format File (.pdf)
Pages count: 4
```
[Download full output](/viewer/net/_output_files/developer-guide/retrieving-document-information/how-to-get-file-type-and-pages-count/GetFileTypeAndPagesCount/get-file-type-and-pages-count.txt)
{{< /tab >}}
{{< /tabs >}}

## Get the file type and the pages count from a stream

The following code snippet shows how to get the file type and the pages count from a stream:

{{< tabs "get-file-type-and-pages-count-from-stream">}}
{{< tab "C#" >}}
```csharp
using System;
using System.IO;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Results;
// ...

using (Viewer viewer = new Viewer(File.OpenRead("sample.pdf")))
{
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForHtmlView();
    ViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions);
 
    Console.WriteLine("Document type is: " + viewInfo.FileType);
    Console.WriteLine("Pages count: " + viewInfo.Pages.Count);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports System
Imports System.IO
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
Imports GroupDocs.Viewer.Results
' ...

Module Program
    Sub Main(args As String())
        Using viewer As Viewer = New Viewer(File.OpenRead("sample.pdf"))
            Dim viewInfoOptions As ViewInfoOptions = ViewInfoOptions.ForHtmlView()
            Dim viewInfo As ViewInfo = viewer.GetViewInfo(viewInfoOptions)

            Console.WriteLine("Document type is: " & viewInfo.FileType.ToString())
            Console.WriteLine("Pages count: " & viewInfo.Pages.Count.ToString())
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pdf" >}}
{{< tab-text >}}
`sample.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/retrieving-document-information/how-to-get-file-type-and-pages-count/sample.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "get-file-type-and-pages-count-from-stream.txt" >}}  
```text
Document type is: Portable Document Format File (.pdf)
Pages count: 4
```
[Download full output](/viewer/net/_output_files/developer-guide/retrieving-document-information/how-to-get-file-type-and-pages-count/GetFileTypeAndPagesCountFromStream/get-file-type-and-pages-count-from-stream.txt)
{{< /tab >}}
{{< /tabs >}}
