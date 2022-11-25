---
id: load-document-from-local-disk
url: viewer/net/load-document-from-local-disk
title: Load from local disk
weight: 1
description: "This article explains how to load a document from local disk with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
When document is located on the local disk GroupDocs.Viewer enables you to render the by passing path to the file [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class constructor. Viewer will open file for reading only when any method of [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) will be called.

Following code snippet shows how to load document from local disk.

```csharp
string filePath = "sample.docx";
using (Viewer viewer = new Viewer(filePath)) 
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}         
```
