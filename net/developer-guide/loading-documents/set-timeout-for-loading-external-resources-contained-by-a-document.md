---
id: set-timeout-for-loading-external-resources-contained-by-a-document
url: viewer/net/set-timeout-for-loading-external-resources-contained-by-a-document
title: Set timeout for loading external resources
weight: 4
description: "This article explains how to set timeout for loading external resources contained by a document with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
The documents may contain external resources such as graphics that should be loaded during document rendering.

Before v19.12 default timeout was 100 seconds which may slow down rendering in case a service that provides external resources is down.

In v19.12 we've set default timeout to 30 seconds and enabled users to specify the desired timeout in [LoadOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/loadoptions) class.

This feature is supported for:

* [Word Processing File Formats](https://wiki.fileformat.com/word-processing/)

The following code snippet shows how to set a timeout for loading external resources:

```csharp
LoadOptions loadOptions = LoadOptions 
{
    ResourceLoadingTimeout = TimeSpan.FromSeconds(5)
};

using (Viewer viewer = new Viewer("sample.doc", loadOptions))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}
```
