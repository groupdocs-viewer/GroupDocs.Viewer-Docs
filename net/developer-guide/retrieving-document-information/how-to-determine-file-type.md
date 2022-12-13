---
id: how-to-determine-file-type
url: viewer/net/how-to-determine-file-type
title: Determine the file type
weight: 4
description: "This article explains how to get a type of a file with GroupDocs.Viewer for .NET using .NET / C#."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
A file type is a standard way that information is encoded for storage in a computer file. For example, Microsoft Word (.docx) and Adobe PDF (.pdf) are two different file types.

Using GroupDocs.Viewer, you can determine the file type in one of the following ways:
* [File extension](#determine-file-type-by-the-file-extension);
* [Media type](#determine-file-type-by-media-type);
* [File signature](#determine-file-type-by-stream).

## Determine the file type by the file extension

To determine the file type from the file extension, use the [FromExtension()](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/filetype/fromextension/#fromextension) method of the [FileType](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/filetype/) class.

The following code snippet shows how to determine a file type using the file extension:

{{< tabs "example1">}}
{{< tab "C#" >}}
```cs
string extension = ".docx";
FileType fileType = FileType.FromExtension(extension);
Console.WriteLine($"Extension {extension}; File type: {fileType}.");
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates a sample console output:

![](/viewer/net/images/how-to-determine-file-type.png)

## Determine file type by media type

If you receive a file via the Internet, you can check its media type header using the [FromMediaType()](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/filetype/methods/frommediatype) method of the [FileType](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/filetype) class.

The following code snippet shows how to determine a file type using the media header:

{{< tabs "example2">}}
{{< tab "C#" >}}
```cs
string mediaType = "application/pdf";
FileType fileType = FileType.FromMediaType(mediaType);
Console.WriteLine($"Media-type {mediaType}; File type: {fileType}.");
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates a sample console output:

![](/viewer/net/images/how-to-determine-file-type_1.png)

## Determine file type by the stream

When you do not know a file extension or media type header, you can try determining file type by using the [FromStream()](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/filetype/methods/fromstream) method of the [FileType](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/filetype) class. GroupDocs.Viewer will try reading the signature and mapping it to the file type.

The following code snippet shows how to determine a file type using the file signature:

{{< tabs "example3">}}
{{< tab "C#" >}}
```cs
using (Stream stream = File.OpenRead("sample.docx"))
{
    FileType fileType = FileType.FromStream(stream);
    Console.WriteLine($"File type: {fileType}.");
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates a sample console output:

![](/viewer/net/images/how-to-determine-file-type_2.png)
