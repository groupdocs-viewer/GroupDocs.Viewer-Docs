---
id: load-document-from-amazon-s3-storage
url: viewer/java/load-document-from-amazon-s3-storage
title: Load document from Amazon S3 Storage
weight: 1
description: "This article explains how to load a document from Amazon S3 Storage with GroupDocs.Viewer using Java."
keywords: "groupdocs viewer java, loading, amazon, s3"
productName: GroupDocs.Viewer for Java
hideChildren: False
---
Following example demonstrates how to render a document from Amazon S3 Storage.

```java
    String key = "sample.docx";

    try (Viewer viewer = new Viewer(downloadFile(key))) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        
        viewer.view(viewOptions);
    }
```

```java
    public InputStream downloadFile(String key) {
        AmazonS3Client client = new AmazonS3Client();
        String bucketName = "my-bucket";
        GetObjectRequest request = new GetObjectRequest();
        request.setKey(key);
        request.setBucketName(bucketName);
        GetObjectResponse response = client.getObject(request);
        return response.getResponseStream();
    }
```
