---
id: load-document-from-ftp
url: viewer/net/load-document-from-ftp
title: Load from FTP
weight: 4
description: "This article explains how to load a document from FTP storage with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
The following code snippet shows how to load a document from FTP:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using System;
using System.IO;
using System.Net;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

Stream stream = GetFileFromFtp("sample.docx");
using (Viewer viewer = new Viewer(stream))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}

static Stream GetFileFromFtp(string filePath)
{
    Uri uri = new Uri(filePath);
    FtpWebRequest request = CreateRequest(uri);
    using (WebResponse response = request.GetResponse())
        return GetFileStream(response);
}

static FtpWebRequest CreateRequest(Uri uri)
{
    FtpWebRequest request = (FtpWebRequest)WebRequest.Create(uri);
    request.Method = WebRequestMethods.Ftp.DownloadFile;
    return request;
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
Imports System
Imports System.IO
Imports System.Net
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Dim stream As Stream = GetFileFromFtp("sample.docx")
        Using viewer As New Viewer(stream)
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources()
            viewer.View(viewOptions)
        End Using
    End Sub

    Private Function GetFileFromFtp(ByVal filePath As String) As Stream
        Dim uri As New Uri(filePath)
        Dim request As FtpWebRequest = CreateRequest(uri)
        Using response As WebResponse = request.GetResponse()
            Return GetFileStream(response)
        End Using
    End Function

    Private Function CreateRequest(ByVal uri As Uri) As FtpWebRequest
        Dim request As FtpWebRequest = DirectCast(WebRequest.Create(uri), FtpWebRequest)
        request.Method = WebRequestMethods.Ftp.DownloadFile
        Return request
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
