---
id: specify-file-type-when-loading-a-document
url: viewer/python-net/specify-file-type-when-loading-a-document
title: Specify file type when loading a document
keywords: set file type
weight: 3
description: "This article explains how to specify the file type when loading a document with GroupDocs.Viewer within your Python applications."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---

When loading a document by specifying a path to a file or using [FileStream](https://docs.microsoft.com/en-us/dotnet/api/system.io.filestream), GroupDocs.Viewer determines file type by extension. Otherwise, GroupDocs.Viewer tries to determine file type by its signature or content. It takes time and may affect performance. 

You can specify the file type using [LoadOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/loadoptions). If you do this, GroupDocs.Viewer skips file type detection and use the specified type.

The following code snippet shows how to specify the file type when loading a document:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
# Implement a method that returns a stream with document data.
stream = get_file_stream("sample.docx");
# Specify the file type.
loadOptions = gvo.LoadOptions(gv.FileType.DOCX);

# Render a file.
with gv.Viewer(stream, load_options) as viewer:
    view_options = gvo.HtmlViewOptions.for_embedded_resources()
    viewer.view(view_options)
```
{{< /tab >}}
{{< /tabs >}}
