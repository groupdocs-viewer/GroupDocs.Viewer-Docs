---
id: how-to-determine-file-type
url: viewer/python-net/how-to-determine-file-type
title: Determine the file type
weight: 1
description: "This article explains how to get a type of a file with GroupDocs.Viewer for Python via .NET using Python"
keywords: 
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---
A file type is a standard way that information is encoded for storage in a computer file. For example, Microsoft Word (.docx) and Adobe PDF (.pdf) are two different file types.

Using GroupDocs.Viewer, you can determine the file type in one of the following ways:
* [File extension](#determine-file-type-by-the-file-extension);
* [Media type](#determine-file-type-by-media-type);
* [File signature](#determine-file-type-by-stream).

## Determine the file type by the file extension

To determine the file type from the file extension, use the [from_extension()](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/filetype/fromextension/#fromextension) method of [FileType](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/filetype/).

The following code snippet shows how to determine a file type using the file extension:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
#  Specify a file extension.
extension = ".docx";
#  Set a file type using the extension.
file_type = gv.FileType.from_extension(extension)
#  Display the extension and the file type.
print(f"Extension {extension}; File type: {file_type}.")
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/python-net/images/how-to-determine-file-type.png)

## Determine file type by media type

If you receive a file via the Internet, you can check its media type header using the [from_media_type()](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/filetype/methods/frommediatype) method of the [FileType](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/filetype) class.

The following code snippet shows how to determine a file type using the media header:

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
mediaType = "application/pdf";
fileType = gv.FileType.from_media_type(mediaType);
print(f"Media-type {mediaType}; File type: {fileType}.");
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/python-net/images/how-to-determine-file-type_1.png)

## Determine file type by the stream

When you do not know a file extension or media type header, you can try determining file type by using the [from_stream()](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/filetype/methods/fromstream) method of the [FileType](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/filetype) class. GroupDocs.Viewer will try reading the signature and mapping it to the file type.

The following code snippet shows how to determine a file type using the file signature:

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
def get_file_stream():
    file_path = test_files.sample_docx
    return open(file_path, "rb")

stream = get_file_stream()
fileType = gv.FileType.from_stream(stream);
print(f"File type: {fileType}.");
}
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/python-net/images/how-to-determine-file-type_2.png)
