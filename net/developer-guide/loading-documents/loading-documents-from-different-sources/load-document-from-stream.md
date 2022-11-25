---
id: load-document-from-stream
url: viewer/net/load-document-from-stream
title: Load from stream
weight: 2
description: "This article explains how to load a document from a Stream with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
There might be the case when your document is not physically located on the disk. Instead, you have the document in the form of a stream. In this case, to avoid the overhead of saving stream as a file on disk, GroupDocs.Viewer enables you to render the file streams directly.

The following are the steps to be followed:

* Specify the method to obtain document stream;
* Pass method's name to [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class constructor.

Following code snippet serves this purpose.

```csharp
static void LoadDocumentFromStream()
{
    Stream stream = File.OpenRead("sample.docx");

    using (Viewer viewer = new Viewer(stream))
    {
        HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
        viewer.View(viewOptions);
    }
}
```
