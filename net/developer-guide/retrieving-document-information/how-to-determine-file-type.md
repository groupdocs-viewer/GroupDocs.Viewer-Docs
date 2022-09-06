---
id: how-to-determine-file-type
url: viewer/net/how-to-determine-file-type
title: How to determine file type
weight: 4
description: "This article explains how to get a type of a file with GroupDocs.Viewer for .NET using .NET / C#."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
**File type** or **file format** is the way to classify and differentiate one kind of file from another. For example, Microsoft Excel and Adobe PDF are two different **file types**. The common way to determine the file type is by its extension, so when you have a file e.g. sample.docx you expect that this file will be opened by some text processing application like Microsoft Word. But there are the cases when you don't know the file type e.g. when the file came from the Internet but you don't know its name or filename doesn't have an extension.

## Determine file-type

**GroupDocs.Viewer** enables you to determine the file type by file extension, media-type, or raw bytes.

{{< alert style="info" >}}

The code snippets provided in this article can be found in [our public examples at GitHub.](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/HowTo/HowToDetermineFileType.cs)

{{< /alert >}}

### Determine file-type by the file extension

To determine file type from the file extension use [FromExtension()](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/filetype/methods/fromextension) method of [FileType](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/filetype) class.

```csharp
string extension = ".docx";
FileType fileType = FileType.FromExtension(extension);
Console.WriteLine($"\nExtension {extension}; File type: {fileType}.");
```

As you can see from the screenshot below the file type detected correctly.

![](/viewer/net/images/how-to-determine-file-type.png)

### Determine file-type by media-type

In case you receive a file from the Internet and you have only its media-type use [FromMediaType()](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/filetype/methods/frommediatype) method of [FileType](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/filetype) class.

```csharp
string mediaType = "application/pdf";
FileType fileType = FileType.FromMediaType(mediaType);
Console.WriteLine($"\nMedia-type {mediaType}; File type: {fileType}.");
```

The media-type will be mapped to the file type as shown on the screenshot below.

![](/viewer/net/images/how-to-determine-file-type_1.png)

### Determine file type by stream or bytes

When you don't know the name of a file or media-type you can try determining file type by passing stream to [FromStream()](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/filetype/methods/fromstream) method of [FileType](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/filetype). GroupDocs.Viewer will try reading the file signature and map it to the file type.

```csharp
using (Stream stream = File.OpenRead("sample.docx"))
{
    FileType fileType = FileType.FromStream(stream);

    Console.WriteLine($"\nFile path {TestFiles.SAMPLE_DOCX}; File type: {fileType}.");
}
```

A similar output would be printed in case of GroupDocs.Viewer detected the file type successfully.

![](/viewer/net/images/how-to-determine-file-type_2.png)
