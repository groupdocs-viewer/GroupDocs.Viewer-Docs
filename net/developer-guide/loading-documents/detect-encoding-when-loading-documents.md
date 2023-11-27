---
id: detect-encoding-when-loading-documents
url: viewer/net/detect-encoding-when-loading-documents
title: Detect encoding when loading documents
weight: 5
description: "This article explains how to detect encoding when loading documents with GroupDocs.Viewer within your .NET applications."
keywords: get encoding, detect encoding
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
You can detect the file encoding using [LoadOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/loadoptions). If the encoding cannot be detected the default, GroupDocs.Viewer uses the default [encoding]({{< ref "viewer/net/developer-guide/loading-documents/specify-encoding-when-loading-documents.md" >}}).

This feature is supported for the following documents:

* [Plain-text (.txt) files](https://docs.fileformat.com/word-processing/txt/)
* [Comma-separated values (.csv)](https://docs.fileformat.com/spreadsheet/csv/)
* [Tab-separated values (.tsv)](https://docs.fileformat.com/spreadsheet/tsv/)

The following code snippet shows how to detect the document encoding:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
LoadOptions loadOptions = new LoadOptions();
loadOptions.DetectEncoding = true; // Enable encoding detection

using (Viewer viewer = new Viewer("employees.csv", loadOptions))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();

    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
