---
id: load-document-from-url
url: viewer/net/load-document-from-url
title: Load from URL
weight: 3
description: "This article explains how to load a document from a URL with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
The following code snippet shows how to load a document from a URL:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using System.IO;
using System.Net;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

string url = "https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/Resources/SampleFiles/sample.docx?raw=true";

Stream stream = DownloadFile(url);

using (Viewer viewer = new Viewer(stream, new LoadOptions(FileType.DOCX)))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}

static Stream DownloadFile(string url)
{
    WebRequest request = WebRequest.Create(url);
    using (WebResponse response = request.GetResponse())
        return GetFileStream(response);
}

static Stream GetFileStream(WebResponse response)
{
    MemoryStream fileStream = new MemoryStream();
    using (Stream responseStream = response.GetResponseStream())
        responseStream.CopyTo(fileStream);
    fileStream.Position = 0;
    return fileStream;
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports System.IO
Imports System.Net
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())

        Dim url As String = "https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/Resources/SampleFiles/sample.docx?raw=true"

        Dim stream As Stream = DownloadFile(url)

        Using viewer As New Viewer(stream, new LoadOptions(FileType.DOCX))
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources()
            viewer.View(viewOptions)
        End Using
    End Sub

    Private Function DownloadFile(ByVal url As String) As Stream
        Dim request As WebRequest = WebRequest.Create(url)
        Using response As WebResponse = request.GetResponse()
            Return GetFileStream(response)
        End Using
    End Function

    Private Function GetFileStream(ByVal response As WebResponse) As Stream
        Dim fileStream As New MemoryStream()
        Using responseStream As Stream = response.GetResponseStream()
            responseStream.CopyTo(fileStream)
        End Using
        fileStream.Position = 0
        Return fileStream
    End Function
End Module
```
{{< /tab >}}
{{< /tabs >}}
