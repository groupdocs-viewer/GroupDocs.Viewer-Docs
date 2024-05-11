---
id: load-document-from-local-disk
url: viewer/net/load-document-from-local-disk
title: Load document using the local path string
weight: 1
description: "This article explains how to load a document using the local path string with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
You can load a document from a local disk using a path to a file. GroupDocs.Viewer opens the file in the read-only mode.

The following code snippet shows how to load a document using the local path string:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

// Specify a path to a file.
string filePath = "sample.docx";

// Render the file.
using (Viewer viewer = new Viewer(filePath))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
} 
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        ' Specify a path to a file.
        Dim filePath As String = "sample.docx"
    
        ' Render the file.
        Using viewer As Viewer = New Viewer(filePath)
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources()
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}
