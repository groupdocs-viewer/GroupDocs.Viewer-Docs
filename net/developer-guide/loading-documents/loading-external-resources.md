---
id: loading-external-resources
url: viewer/net/loading-external-resources
title: Loading of external resources containing by a document
weight: 5
keywords: set timeout, Groupdocs.Viewer
description: "This article explains how to manage loading of external resources contained by a document with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

If the document contains external resources, such as images, GroupDocs.Viewer loads them when rendering a document. This allows the document to display correctly, but is a potential security risk.

GroupDocs.Viewer allows you to manage loading of external resources contained by a document. These features are supported for the [Word Processing File Formats](https://docs.fileformat.com/word-processing/).

Use the [LoadOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/loadoptions) object to manage loading of external resources.

## Skip loading of external resources

The following code snippet shows how to deny loading of external resources:

{{< tabs "example3">}}
{{< tab "C#" >}}
```csharp
LoadOptions loadOptions = new LoadOptions();
loadOptions.SkipExternalResources = true; // Skip loading of external resources

using (Viewer viewer = new Viewer("business-flyer.docx", loadOptions))
{
    HtmlViewOptions viewOptions = 
        HtmlViewOptions.ForEmbeddedResources();

    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Manage a safelist for loading external resources

The following code snippet shows how to allow loading of external resources from specific URLs:

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
LoadOptions loadOptions = new LoadOptions();
loadOptions.SkipExternalResources = true; // Skip loading of all external resources
loadOptions.WhitelistedResources.Add("avatars.githubusercontent.com"); //Enable loading of external resources that has `avatars.githubusercontent.com` fragment in resource URL. 

using (Viewer viewer = new Viewer("business-flyer.docx", loadOptions))
{
    HtmlViewOptions viewOptions = 
        HtmlViewOptions.ForEmbeddedResources();

    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Set timeout for loading of external resources

The default timeout is 30 seconds. GroupDocs.Viewer allows you to change this value.

The following code snippet shows how to set a timeout to load external resources:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
// Specify a timeout.
LoadOptions loadOptions = new LoadOptions();
loadOptions.ResourceLoadingTimeout = TimeSpan.FromSeconds(5);
// Render a file.
using (Viewer viewer = new Viewer("sample.docx", loadOptions))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
