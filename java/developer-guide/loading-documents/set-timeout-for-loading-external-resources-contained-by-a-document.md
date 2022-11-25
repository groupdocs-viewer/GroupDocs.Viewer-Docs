---
id: set-timeout-for-loading-external-resources-contained-by-a-document
url: viewer/java/set-timeout-for-loading-external-resources-contained-by-a-document
title: Set timeout for loading external resources
weight: 4
description: "This article explains how to set timeout for loading external resources contained by a document with GroupDocs.Viewer within your Java applications."
keywords: "groupdocs viewer java, loading external resources, timeout"
productName: GroupDocs.Viewer for Java
hideChildren: False
---
The documents may contain external resources such as graphics that should be loaded during document rendering.

Before v19.12 default timeout was 100 seconds which may slow down rendering in case a service that provides external resources is down.

In v19.12 we've set default timeout to 30 seconds and enabled users to specify the desired timeout in [LoadOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/LoadOptions) class.

This feature is supported for:

* [Word Processing File Formats](https://docs.fileformat.com/word-processing/)

The following code snippet shows how to set a timeout for loading each external resource to 500 milliseconds.

```java
    LoadOptions loadOptions = new LoadOptions();
    loadOptions.setResourceLoadingTimeout(500);

    try (Viewer viewer = new Viewer("sample.doc", loadOptions)) {

        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewer.view(viewOptions);
    }
```
