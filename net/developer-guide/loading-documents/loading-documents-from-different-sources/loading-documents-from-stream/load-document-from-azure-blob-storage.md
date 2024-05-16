---
id: load-document-from-azure-blob-storage
url: viewer/net/load-document-from-azure-blob-storage
title: Load from Azure Blob Storage
weight: 6
description: "This article explains how to load a document from Azure Blob Storage with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

The following code snippet shows how to load a document from Azure Blob Storage.

{{< alert style="info" >}}

Runnig this code requires installing [Azure.Storage.Blobs](https://nuget.org/packages/Azure.Storage.Blobs) NuGet package.

{{< /alert >}}

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using System.IO;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer;
using Azure.Storage.Blobs;
// ...

string blobName = "sample.docx";
Stream stream = DownloadFile(blobName);
LoadOptions loadOptions = new LoadOptions(FileType.DOCX);

using (Viewer viewer = new Viewer(stream, loadOptions))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}

static Stream DownloadFile(string blobName)
{
    BlobContainerClient containerClient = GetContainerClient();

    // Get a reference to a blob
    BlobClient blobClient = containerClient.GetBlobClient(blobName);
    MemoryStream memoryStream = new MemoryStream();
    blobClient.DownloadTo(memoryStream);
    memoryStream.Position = 0;
    return memoryStream;
}

static BlobContainerClient GetContainerClient()
{
    string accountName = "***";
    string accountKey = "***";
    string endpointSuffix = "core.windows.net";
    string containerName = "***";

    string connectionString = $"DefaultEndpointsProtocol=https;AccountName={accountName};AccountKey={accountKey};EndpointSuffix={endpointSuffix}";

    // Create a BlobContainerClient object which will be used to create a container client
    BlobContainerClient blobContainerClient = new BlobContainerClient(connectionString, containerName);

    return blobContainerClient;
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports System.IO
Imports GroupDocs.Viewer.Options
Imports GroupDocs.Viewer
Imports Azure.Storage.Blobs
' ...

Module Program
    Sub Main(args As String())
        Dim blobName As String = "sample.docx"
        Dim stream As Stream = DownloadFile(blobName)
        Dim loadOptions As New LoadOptions(FileType.DOCX)

        Using viewer As New Viewer(stream, loadOptions)
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources()
            viewer.View(viewOptions)
        End Using
    End Sub

    Private Function DownloadFile(ByVal blobName As String) As Stream
        Dim containerClient As BlobContainerClient = GetContainerClient()

        ' Get a reference to a blob
        Dim blobClient As BlobClient = containerClient.GetBlobClient(blobName)
        Dim memoryStream As New MemoryStream()
        blobClient.DownloadTo(memoryStream)
        memoryStream.Position = 0
        Return memoryStream
    End Function

    Private Function GetContainerClient() As BlobContainerClient
        Dim accountName As String = "***"
        Dim accountKey As String = "***"
        Dim endpointSuffix As String = "core.windows.net"
        Dim containerName As String = "***"

        Dim connectionString As String =
                $"DefaultEndpointsProtocol=https;AccountName={accountName};AccountKey={accountKey};EndpointSuffix={ _
                endpointSuffix}"

        ' Create a BlobContainerClient object which will be used to create a container client
        Dim blobContainerClient As New BlobContainerClient(connectionString, containerName)

        Return blobContainerClient
    End Function
End Module

```
{{< /tab >}}
{{< /tabs >}}
