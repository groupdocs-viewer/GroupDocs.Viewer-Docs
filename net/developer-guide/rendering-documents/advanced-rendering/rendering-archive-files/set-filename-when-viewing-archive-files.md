---
id: set-filename-when-rendering-archive-files
url: viewer/net/set-filename-when-rendering-archive-files
title: Set archive file name
weight: 3
description: "This article explains how to specify a filename when rendering archive files GroupDocs.Viewer within your .NET applications."
keywords: archive files, rendering archive files
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
![Set filename when rendering archive files](viewer/net/images/set-filename-when-rendering-archive-files.png)

When rendering the archive files GroupDocs.Viewer displays an archive filename in the header of each page, like it is shown on the screenshot above. By default, the name of the original file is used. The GroupDocs.Viewer enables you to change or hide filename by setting [FileName](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/archiveoptions/properties/filename) option of the [ArchiveOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/archiveoptions) class. The [FileName](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/archiveoptions/properties/filename) option can be set to:

* [FileName.Source](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/archiveoptions/properties/filename/source) - the default value, the name of the source file will be used;
* [FileName.Empty](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/archiveoptions/properties/filename/empty) - empty filename, use it when you want to hide filename;
* [new FileName("my filename")](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/archiveoptions/properties/filename/constructors/main) - custom filename.

The following code snippet shows how to set "my filename" instead of source filename when rendering an archive file.

```csharp
using (Viewer viewer = new Viewer("sample.zip"))
{
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.ArchiveOptions.FileName = new FileName("my filename");

    viewer.View(viewOptions);
}
```

