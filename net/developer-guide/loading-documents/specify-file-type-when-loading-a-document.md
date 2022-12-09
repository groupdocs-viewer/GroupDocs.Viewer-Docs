---
id: specify-file-type-when-loading-a-document
url: viewer/net/specify-file-type-when-loading-a-document
title: Specify file type when loading a document
keywords: set file type
weight: 3
description: "This article explains how to specify the file type when loading a document with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

When loading a document by specifying a path to a file or using [FileStream](https://docs.microsoft.com/en-us/dotnet/api/system.io.filestream), GroupDocs.Viewer determines file type by extension. Otherwise, GroupDocs.Viewer tries to determine file type by its signature or content. It takes time and may affect performance. 

You can specify the file type using the [LoadOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/loadoptions). If you do this, GroupDocs.Viewer skips file type detection and use the specified type.

The following code snippet shows how to specify the file type when loading a document:

```csharp
Stream stream = GetFileStream("sample.docx");
LoadOptions loadOptions = new LoadOptions(FileType.DOCX);

using (Viewer viewer = new Viewer(stream, loadOptions)
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}
```
