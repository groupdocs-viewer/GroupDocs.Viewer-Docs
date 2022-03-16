---
id: load-document-from-url
url: viewer/java/load-document-from-url
title: Load document from URL
weight: 6
description: "This article explains how to load a document from URL with GroupDocs.Viewer using Java."
keywords: "groupdocs viewer java, loading, url"
productName: GroupDocs.Viewer for Java
hideChildren: False
---
Following example demonstrates how to render document from URL.

```java
    public void loadDocumentFromUrl() {
        String url = "https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java/blob/master/Examples/Resources/SampleFiles/sample.docx?raw=true";

        try (Viewer viewer = new Viewer(getRemoteFile(url))) {
            HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
            viewer.view(viewOptions);
        }
    }

    private InputStream getRemoteFile(String url) {
        WebRequest request = WebRequest.create(url);
        WebResponse response = request.getResponse();
        return getFileStream(response);
    }

    private InputStream getFileStream(WebResponse response) {
        return response.getResponseStream();
    }
```
