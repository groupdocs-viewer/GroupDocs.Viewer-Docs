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
GroupDocs.Viewer provides the feature to add custom font sources.

The following code snippet shows how to set a custom font source.

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
