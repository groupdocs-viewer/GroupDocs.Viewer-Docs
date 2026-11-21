---
id: specify-encoding-when-loading-documents
url: viewer/net/specify-encoding-when-loading-documents
title: Specify encoding when loading documents
weight: 4
description: "This article explains how to specify encoding when loading documents with GroupDocs.Viewer within your .NET applications."
keywords: encoding, charset
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

This feature is supported for the following file types:

* [Plain-text (.txt) files](https://docs.fileformat.com/word-processing/txt/)
* [Comma-separated values (.csv)](https://docs.fileformat.com/spreadsheet/csv/)
* [Tab-separated values (.tsv)](https://docs.fileformat.com/spreadsheet/tsv/)
* [E-Mail Message (.eml)](https://docs.fileformat.com/email/eml/)

Different encodings use different byte sequences for characters, and opening a file in the wrong encoding leads to incorrect character rendering. To properly render a file, the correct encoding must be specified when opening the file. Another option is converting it to `UTF-8` beforehand. By default GroupDocs.Viewer using `UTF-8` encoding.

For example, if you open [sample-shift-jis.txt](/viewer/net/_sample_files/developer-guide/loading-documents/specify-encoding-when-loading-documents/sample-shift-jis.txt) in Notepad with the `ANSI` encoding, its Japanese text, which starts with `納品に関するご案内` ("Delivery information"), appears as strange symbols, because `ANSI` misinterprets the byte values that are specific to `Shift_JIS`.

![Shift_Jis text file opened in Notepad](/viewer/net/images/developer-guide/loading-documents/specify-encoding-when-loading-documents/shift-jis-in-notepad.png)

To render text file properly you can set encoding using `LoadOptions` class. In the following code snippet we'll set `Shift_JIS` encoding and render the text file to HTML:

{{< tabs "specify-encoding-when-loading">}}
{{< tab "C#" >}}
```csharp
using System.Text;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

// .NET 6 and later need this once to know code-page encodings such as Shift_JIS
// (.NET Framework knows them already).
Encoding.RegisterProvider(CodePagesEncodingProvider.Instance);

// Specify an encoding.
LoadOptions loadOptions = new LoadOptions();
loadOptions.Encoding = Encoding.GetEncoding("shift_jis");
// Render a file.
using (Viewer viewer = new Viewer("sample-shift-jis.txt", loadOptions))
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
        ' .NET 6 and later need this once to know code-page encodings such as Shift_JIS
        ' (.NET Framework knows them already).
        Encoding.RegisterProvider(CodePagesEncodingProvider.Instance)

        ' Specify an encoding.
        Dim loadOptions As LoadOptions = New LoadOptions()
        loadOptions.Encoding = Encoding.GetEncoding("shift_jis")
        ' Render a file.
        Using viewer As Viewer = New Viewer("sample-shift-jis.txt", loadOptions)
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources()
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample-shift-jis.txt" >}}
{{< tab-text >}}
`sample-shift-jis.txt` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/loading-documents/specify-encoding-when-loading-documents/sample-shift-jis.txt) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "p_1.html" >}}  
```text
HTML file (1 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/loading-documents/specify-encoding-when-loading-documents/SpecifyEncodingWhenLoading/p_1.html)
{{< /tab >}}
{{< /tabs >}}
