---
id: load-document-from-stream
url: viewer/net/load-document-from-stream
title: Load from stream
weight: 2
description: "This article explains how to load a document from a Stream with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
You can load a document from a stream without saving it as a file on a disk. You can use this feature to load a document from different sources like a URL, FTP, and so on.

To load a document from a stream, follow these steps:

1. Implement a method to get the document stream.
2. Call the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class constructor. Specify the method implemented in the previous step.

The following code snippet shows how to load a document from a stream:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
// Implement a method that returns a stream with document data.
Stream stream = GetStream("sample.docx");

// Render a document from the stream.
using (Viewer viewer = new Viewer(stream))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

Please refer to the following pages for examples: