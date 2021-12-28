---
id: specify-encoding-when-loading-documents
url: viewer/net/specify-encoding-when-loading-documents
title: Set encoding when loading documents
weight: 3
description: "This article explains how to set encoding when loading documents with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
GroupDocs.Viewer enables users to pass encoding when rendering text documents or email messages.

This feature is supported for:

* [Plain-text (.txt) files](https://wiki.fileformat.com/word-processing/txt/)
* [Comma-separated values (.csv)](https://wiki.fileformat.com/spreadsheet/csv/)
* [Tab-separated values (.tsv)](https://wiki.fileformat.com/spreadsheet/tsv/)
* [E-Mail Message (.eml)](https://wiki.fileformat.com/email/eml/)

Following code snippet sets the document encoding.

```csharp
LoadOptions loadOptions = new LoadOptions();
loadOptions.Encoding = Encoding.GetEncoding("shift_jis");

using (Viewer viewer = new Viewer("sample.txt", loadOptions))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}
```
