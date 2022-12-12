---
id: set-timeout-for-loading-external-resources-contained-by-a-document
url: viewer/net/set-timeout-for-loading-external-resources-contained-by-a-document
title: Set timeout for loading external resources
weight: 5
keywords: set timeout, Groupdocs.Viewer
description: "This article explains how to set timeout for loading external resources contained by a document with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
If a document contains external resources like images, GroupDocs.Viewer loads them while rendering the document.

In the 19.12 version and earlier, the default timeout was 100 seconds. It may slow rendering when a service that provides external resources is down.

Since the 19.12 version, the default timeout is 30 seconds. Besides that, you can specify the desired timeout using the [LoadOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/loadoptions) object.

This feature is supported for the [Word Processing File Formats](https://docs.fileformat.com/word-processing/).

The following code snippet shows how to set a timeout to load external resources:

{{< tabs "example1">}}
{{< tab "C#" >}}
```cs
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
{{< /tab >}}
{{< /tabs >}}
