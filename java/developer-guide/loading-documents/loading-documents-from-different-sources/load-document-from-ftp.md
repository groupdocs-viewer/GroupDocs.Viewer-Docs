---
id: load-document-from-ftp
url: viewer/java/load-document-from-ftp
title: Load document from FTP
weight: 3
description: "This article explains how to load a document from FTP storage with GroupDocs.Viewer using Java"
keywords: "groupdocs viewer java, loading, ftp"
productName: GroupDocs.Viewer for Java
hideChildren: False
---
Following example demonstrates how to render a document from FTP.

```java
    public void loadDocumentFromFtp() {
        try (Viewer viewer = new Viewer(getFileFromFtp("sample.docx"))) {
            HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
            viewer.view(viewOptions);
        }
    }

    private InputStream getFileFromFtp(String filePath) {
        URI uri = new URI(filePath);
        FtpWebRequest request = createRequest(uri);
        WebResponse response = request.getResponse()
        return getFileStream(response);
    }

    private FtpWebRequest createRequest(URI uri) {
        FtpWebRequest request = (FtpWebRequest) WebRequest.create(uri);
        request.setMethod(WebRequestMethods.Ftp.DOWNLOAD_FILE);
        return request;
    }

    private InputStream getFileStream(WebResponse response) {
        return response.getResponseStream();
    }
```
