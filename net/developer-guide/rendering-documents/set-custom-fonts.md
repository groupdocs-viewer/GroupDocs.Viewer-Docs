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
FolderFontSource fontSource = 
    new FolderFontSource(@"C:\custom_fonts", Fonts.SearchOption.TopFolderOnly);
    
FontSettings.SetFontSources(fontSource);                       
 
using (Viewer viewer = new Viewer("sample.docx"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}