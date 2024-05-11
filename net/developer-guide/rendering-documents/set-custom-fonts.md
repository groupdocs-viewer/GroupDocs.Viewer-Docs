---
id: set-custom-fonts
url: viewer/net/set-custom-fonts
title: Set custom fonts
weight: 6
description: "This article explains how to set custom fonts when rendering documents with GroupDocs.Viewer within your .NET applications."
keywords: Setting custom fonts with GroupDocs.Viewer for .NET API
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
You can add custom font sources.

The following code snippet shows how to add a custom font source:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Fonts;
// ...

// Specify the font source.
FolderFontSource fontSource = 
    new FolderFontSource(@"C:\custom_fonts", SearchOption.TopFolderOnly);
FontSettings.SetFontSources(fontSource);

using (Viewer viewer = new Viewer("sample.docx"))
{
    // Create an HTML file.
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
Imports GroupDocs.Viewer.Fonts
' ...

Module Program
    Sub Main(args As String())
        ' Specify the font source.
        Dim fontSource As FolderFontSource = New FolderFontSource("C:\custom_fonts", SearchOption.TopFolderOnly)
        FontSettings.SetFontSources(fontSource)
    
        Using viewer As Viewer = New Viewer("sample.docx")
            ' Create an HTML file.
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources()
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}