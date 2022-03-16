---
id: load-document-from-azure-blob-storage
url: viewer/java/load-document-from-azure-blob-storage
title: Load document from Azure Blob Storage
weight: 2
description: "This article explains how to load a document from Azure Blob Storage with GroupDocs.Viewer using Java."
keywords: "groupdocs viewer java, loading, azure, blob"
productName: GroupDocs.Viewer for Java
hideChildren: False
---
Following example demonstrates how to render document from Azure Blob Storage.

```java
    String blobName = "sample.docx";

    try (Viewer viewer = new Viewer(downloadFile(blobName))) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    
        viewer.view(viewOptions);
    }
```

```java
    public InputStream downloadFile(String blobName) {
        CloudBlobContainer container = getContainer();
        CloudBlob blob = container.getBlobReference(blobName);
        ByteArrayOutputStream memoryStream = new ByteArrayOutputStream();
        blob.downloadToStream(memoryStream);
        return new ByteArrayInputStream(memoryStream.toByteArray());
    }

    private CloudBlobContainer getContainer() {
        String accountName = "***";
        String accountKey = "***";
        String endpoint = "https://{accountName}.blob.core.windows.java/";
        String containerName = "***";
        StorageCredentials storageCredentials = new StorageCredentials(accountName, accountKey);
        CloudStorageAccount cloudStorageAccount = new CloudStorageAccount(storageCredentials, new URI(endpoint), null, null, null);
        CloudBlobClient cloudBlobClient = cloudStorageAccount.createCloudBlobClient();
        CloudBlobContainer container = cloudBlobClient.getContainerReference(containerName);
        container.createIfNotExists();
        return container;
    }
```
