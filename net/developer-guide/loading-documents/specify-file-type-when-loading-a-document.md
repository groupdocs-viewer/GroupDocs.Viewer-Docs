---
id: specify-file-type-when-loading-a-document
url: viewer/net/specify-file-type-when-loading-a-document
title: Set file type when loading a document
weight: 1
description: "This article explains how to set the file type when loading a document with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

When passing file path or [FileStream](https://docs.microsoft.com/en-us/dotnet/api/system.io.filestream) into [Viewer](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class constructor the GroupDocs.Viewer determines file type by file extension but when file passed as a stream the GroupDocs.Viewer tries to detect file type by file signature or file content and this may affect application performance. The API enables you to specify the file type of the processing document by passing [LoadOptions](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/loadoptions) object as the second parameter of [Viewer](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class constructor. When you're passing file type it instructs GroupDocs.Viewer to skip file type detection feature and proceed with rendering.

The following code sample shows how to pass the file type when loading a document.

```csharp
Stream stream = GetFileStream("sample.docx");
LoadOptions loadOptions = new LoadOptions(FileType.DOCX);

using (Viewer viewer = new Viewer(stream, loadOptions)
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}
```
