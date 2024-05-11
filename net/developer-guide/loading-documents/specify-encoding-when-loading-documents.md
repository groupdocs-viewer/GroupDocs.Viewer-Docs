---
id: specify-encoding-when-loading-documents
url: viewer/net/specify-encoding-when-loading-documents
title: Specify encoding when loading documents
weight: 4
description: "This article explains how to specify encoding when loading documents with GroupDocs.Viewer within your .NET applications."
keywords: set encoding
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
You can specify the encoding using [LoadOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/loadoptions).

This feature is supported for the following documents:

* [Plain-text (.txt) files](https://docs.fileformat.com/word-processing/txt/)
* [Comma-separated values (.csv)](https://docs.fileformat.com/spreadsheet/csv/)
* [Tab-separated values (.tsv)](https://docs.fileformat.com/spreadsheet/tsv/)
* [E-Mail Message (.eml)](https://docs.fileformat.com/email/eml/)

The following code snippet shows how to specify the document encoding:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using System.Text;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

// Specify an encoding.
LoadOptions loadOptions = new LoadOptions();
loadOptions.Encoding = Encoding.GetEncoding("shift_jis");
// Render a file.
using (Viewer viewer = new Viewer("sample.txt", loadOptions))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports System.Text
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        ' Specify an encoding.
        Dim loadOptions As LoadOptions = New LoadOptions()
        loadOptions.Encoding = Encoding.GetEncoding("shift_jis")
        ' Render a file.
        Using viewer As Viewer = New Viewer("sample.txt", loadOptions)
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources()
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}
