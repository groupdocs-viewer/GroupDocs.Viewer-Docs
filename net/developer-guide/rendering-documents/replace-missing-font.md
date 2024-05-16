---
id: replace-missing-font
url: viewer/net/replace-missing-font
title: Replace missing font
weight: 7
description: "This article explains how to replace missing font when rendering documents with GroupDocs.Viewer within your .NET applications."
keywords: missing font,rendering documents
productName: GroupDocs.Viewer for .NET
hideChildren: False
aliases:
    - /viewer/net/how-to-substitute-missing-font-when-converting-presentations/
---
You can specify the default font name for a document. GroupDocs.Viewer uses this font during rendering instead of any not installed fonts. For example, if the document includes a font containing non-English characters, specify the default font name to ensure that GroupDocs.Viewer replaces any missing font with one which has the same character set. 

The following code snippet shows how to set the default font name:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (Viewer viewer = new Viewer("sample.pptx"))
{
    // Create an HTML file.
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
   
    // Specify a default font.
    viewOptions.DefaultFontName = "Courier New";
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
        Using viewer As Viewer = New Viewer("sample.pptx")
            ' Create an HTML file.
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources   ()
        
            ' Specify a default font.
            viewOptions.DefaultFontName = "Courier New"
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}