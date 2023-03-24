---
id: load-document-from-url
url: viewer/java/load-document-from-url
title: Load from URL
weight: 3
description: "This article explains how to load a document from a URL with GroupDocs.Viewer within your Java applications."
productName: GroupDocs.Viewer for Java
hideChildren: False
---
The following code snippet shows how to load a document from a URL:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

URL url = new URL("https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java/blob/master/Examples/Resources/SampleFiles/sample.docx?raw=true");
try (Viewer viewer = new Viewer(url)) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    viewer.view(viewOptions);
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
{{< /tab >}}
{{< /tabs >}}
