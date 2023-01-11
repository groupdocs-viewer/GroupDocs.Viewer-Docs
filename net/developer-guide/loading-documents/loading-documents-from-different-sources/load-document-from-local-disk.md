---
id: load-document-from-local-disk
url: viewer/net/load-document-from-local-disk
title: Load document using the local path string
weight: 1
description: "This article explains how to load a document using the local path string with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
You can load a document from a local disk using a path to a file. GroupDocs.Viewer opens the file in the read-only mode.

The following code snippet shows how to load a document using the local path string:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
// Specify a path to a file.
string filePath = "sample.docx";
// Render the file.
using (Viewer viewer = new Viewer(filePath)) 
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}         
```
{{< /tab >}}
{{< /tabs >}}
