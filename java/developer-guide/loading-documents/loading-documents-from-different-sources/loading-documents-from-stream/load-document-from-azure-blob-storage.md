---
id: load-document-from-azure-blob-storage
url: viewer/java/load-document-from-azure-blob-storage
title: Load from Azure Blob Storage
weight: 6
description: "This article explains how to load a document from Azure Blob Storage with GroupDocs.Viewer within your Java applications."
productName: GroupDocs.Viewer for Java
hideChildren: False
---

{{< alert style="info" >}}

Install the [Microsoft Azure Client Library For Blob Storage](https://mvnrepository.com/artifact/com.azure/azure-storage-blob/12.21.1) and the [Microsoft Azure Client Library For Identity](https://mvnrepository.com/artifact/com.azure/azure-identity/1.8.1) to use the Blob clients.

{{< /alert >}}

The following code snippet shows how to load a document from Azure Blob Storage:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.azure.identity.DefaultAzureCredential;
import com.azure.identity.DefaultAzureCredentialBuilder;
import com.azure.storage.blob.BlobClient;
import com.azure.storage.blob.BlobContainerClient;
import com.azure.storage.blob.BlobServiceClient;
import com.azure.storage.blob.BlobServiceClientBuilder;
import com.azure.storage.blob.specialized.BlobInputStream;
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

DefaultAzureCredential defaultCredential = new DefaultAzureCredentialBuilder()
        .build();

BlobServiceClient blobServiceClient = new BlobServiceClientBuilder()
        .endpoint("https://{accountName}.blob.core.windows.java/")
        .credential(defaultCredential)
        .buildClient();

BlobContainerClient blobContainerClient = blobServiceClient.createBlobContainer("container-name");
BlobClient blobClient = blobContainerClient.getBlobClient("sample.docx");

try (final BlobInputStream blobInputStream = blobClient.openInputStream();
     Viewer viewer = new Viewer(blobInputStream)) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
