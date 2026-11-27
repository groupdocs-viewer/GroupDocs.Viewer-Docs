---
id: specify-file-type-when-loading-a-document
url: viewer/net/specify-file-type-when-loading-a-document
title: Specify file type when loading a document
keywords: set file type
weight: 3
description: "This article explains how to specify the file type when loading a document with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

When loading a document by specifying a path to a file or using [FileStream](https://docs.microsoft.com/en-us/dotnet/api/system.io.filestream), GroupDocs.Viewer determines file type by extension. Otherwise, GroupDocs.Viewer tries to determine file type by its signature or content. It takes time and may affect performance. 

You can specify the file type using [LoadOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/loadoptions). If you do this, GroupDocs.Viewer skips file type detection and use the specified type.

The following code snippet shows how to specify the file type when loading a document:

{{< tabs "specify-file-type-when-loading">}}
{{< tab "C#" >}}
```csharp
using System.IO;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

Stream stream = File.OpenRead("sample.docx");

// Specify the file type.
LoadOptions loadOptions = new LoadOptions(FileType.DOCX);

//Render a file.
using (Viewer viewer = new Viewer(stream, loadOptions))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports System.IO
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Dim stream As Stream = File.OpenRead("sample.docx")
    
        ' Specify the file type.
        Dim loadOptions As LoadOptions = New LoadOptions(FileType.DOCX)
    
        'Render a file.
        Using viewer As Viewer = New Viewer(stream, loadOptions)
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources()
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/loading-documents/specify-file-type-when-loading-a-document/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "specify-file-type-when-loading.zip" >}}  
```text
p_1.html (253 KB)
p_2.html (110 KB)
p_3.html (148 KB)
p_4.html (1001 KB)
p_5.html (86 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/loading-documents/specify-file-type-when-loading-a-document/SpecifyFileTypeWhenLoading/specify-file-type-when-loading.zip)
{{< /tab >}}
{{< /tabs >}}
