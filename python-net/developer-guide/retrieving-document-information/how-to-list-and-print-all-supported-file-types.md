---
id: how-to-list-and-print-all-supported-file-types
url: viewer/python-net/how-to-list-and-print-all-supported-file-types
title: List and print all supported file types
weight: 4
description: "This article explains how to list and print file types supported by GroupDocs.Viewer for Python via .NET"
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---

The [Supported file formats]({{< ref "viewer/python-net/getting-started/supported-document-formats.md" >}}) page lists all file formats supported by GroupDocs.Viewer.

To list or print out all the supported file formats within your application, follow these steps:

1. Call the [GetSupportedFileTypes](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/filetype/methods/getsupportedfiletypes) method of the [FileType](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/filetype) class.
2. Enumerate the collection of the [FileType](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/filetype) objects.

The following code snippet shows how to list supported file formats in the console:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
#  Get list of file types.
supportedFileTypes = gv.FileType.get_supported_file_types()
#  Display list of file types
for fileType in supportedFileTypes:
    print(fileType);
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/python-net/images/how-to-list-and-print-all-supported-file-types.png)
