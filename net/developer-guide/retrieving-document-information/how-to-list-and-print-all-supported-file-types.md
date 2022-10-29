---
id: how-to-list-and-print-all-supported-file-types
url: viewer/net/how-to-list-and-print-all-supported-file-types
title: List and print all supported file types
weight: 5
description: "This article explains how to list and print file types supported by GroupDocs.Viewer for .NET"
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

Here is the full list of [supported file formats]({{< ref "viewer/net/getting-started/supported-document-formats.md" >}}). In case you need to list or print out all of the supported file formats in your application you can do the following:

* Call [GetSupportedFileTypes](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/filetype/methods/getsupportedfiletypes) method of [FileType](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/filetype) class;
* Enumerate through the collection of [FileType](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/filetype) objects.

The following code sample demonstrates how to print all supported file formats list to the console.

```csharp
IEnumerable<FileType> supportedFileTypes = FileType.GetSupportedFileTypes();

foreach (FileType fileType in supportedFileTypes)
{
    Console.WriteLine(fileType);
}
```
