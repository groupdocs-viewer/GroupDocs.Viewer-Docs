---
id: load-document-from-amazon-s3-storage
url: viewer/net/load-document-from-amazon-s3-storage
title: Load from Amazon S3 Storage
weight: 5
description: "This article explains how to load a document from Amazon S3 Storage with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
The following code snippet shows how to load a document from Amazon S3 Storage.

{{< alert style="info" >}}

Runnig this code requires installing [AWSSDK.S3](https://nuget.org/packages/AWSSDK.S3) NuGet package.

{{< /alert >}}

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using System.IO;
using System.Threading.Tasks;
using Amazon.S3;
using Amazon.S3.Model;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

string key = "sample.docx";
Stream stream = await DownloadFileAsync(key);

using (Viewer viewer = new Viewer(stream))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}

static async Task<Stream> DownloadFileAsync(string key)
{
    AmazonS3Client client = new AmazonS3Client();
    string bucketName = "my-bucket";
    GetObjectRequest request = new GetObjectRequest
    {
        Key = key,
        BucketName = bucketName
    };

    using (GetObjectResponse response = await client.GetObjectAsync(request))
    {
        MemoryStream stream = new MemoryStream();
        response.ResponseStream.CopyTo(stream);
        stream.Position = 0;
        return stream;
    }
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports System.IO
Imports System.Threading.Tasks
Imports Amazon.S3
Imports Amazon.S3.Model
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Dim key As String = "sample.docx"
        Dim stream As Stream = DownloadFileAsync(key).GetAwaiter().GetResult()

        Using viewer As New Viewer(stream)
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources()
            viewer.View(viewOptions)
        End Using
    End Sub

    Private Async Function DownloadFileAsync(ByVal key As String) As Task(Of Stream)
        Dim client As New AmazonS3Client()
        Dim bucketName As String = "my-bucket"
        Dim request As New GetObjectRequest With {
                .Key = key,
                .BucketName = bucketName
                }

        Using response As GetObjectResponse = Await client.GetObjectAsync(request)
            Dim stream As New MemoryStream()
            response.ResponseStream.CopyTo(stream)
            stream.Position = 0
            Return stream
        End Using
    End Function
End Module

```
{{< /tab >}}
{{< /tabs >}}

