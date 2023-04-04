---
id: set-timeout-for-loading-external-resources-contained-by-a-document
url: viewer/java/set-timeout-for-loading-external-resources-contained-by-a-document
title: Set timeout for loading external resources
weight: 5
keywords: set timeout, Groupdocs.Viewer
description: "This article explains how to set timeout for loading external resources contained by a document with GroupDocs.Viewer within your Java applications."
productName: GroupDocs.Viewer for Java
hideChildren: False
---
If a document contains external resources like images, GroupDocs.Viewer loads them while rendering the document.

In the 19.12 version and earlier, the default timeout was 100 seconds. It may slow rendering when a service that provides external resources is down.

Since the 19.12 version, the default timeout is 30 seconds. Besides that, you can specify the desired timeout using [LoadOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/LoadOptions).

This feature is supported for the [Word Processing File Formats](https://docs.fileformat.com/word-processing/).

The following code snippet shows how to set a timeout to load external resources:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
import com.groupdocs.viewer.options.LoadOptions;
// ...

LoadOptions loadOptions = new LoadOptions();
// Specify a timeout.
loadOptions.setResourceLoadingTimeout(500);

// Render a file.
try (Viewer viewer = new Viewer("sample.doc", loadOptions)) {

    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
