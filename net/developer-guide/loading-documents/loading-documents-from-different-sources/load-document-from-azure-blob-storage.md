---
id: load-document-from-azure-blob-storage
url: viewer/net/load-document-from-azure-blob-storage
title: Load from Azure Blob Storage
weight: 6
description: "This article explains how to load a document from Azure Blob Storage with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Following example demonstrates how to render document from Azure Blob Storage.

```csharp
string blobName = "sample.docx";
Stream stream = DownloadFile(blobName);

using (Viewer viewer = new Viewer())
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();

    viewer.View(viewOptions);
}

public static Stream DownloadFile(string blobName)
{
    BlobContainerClient containerClient = GetContainerClient();

    // Get a reference to a blob
    BlobClient blobClient = containerClient.GetBlobClient(blobName);

    MemoryStream memoryStream = new MemoryStream();
    blobClient.DownloadTo(memoryStream);
    memoryStream.Position = 0;
    return memoryStream;
}

private static BlobContainerClient GetContainerClient()
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
