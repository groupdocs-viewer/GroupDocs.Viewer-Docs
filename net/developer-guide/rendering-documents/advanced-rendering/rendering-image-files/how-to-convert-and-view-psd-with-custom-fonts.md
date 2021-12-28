---
id: how-to-convert-and-view-psd-with-custom-fonts
url: viewer/net/how-to-convert-and-view-psd-with-custom-fonts
title: Render PSD with custom fonts
weight: 9
description: "This article explains render PSD with custom fonts with GroupDocs.Viewer within your .NET applications."
keywords: psd photoshop view convert custom fonts
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
## Introduction

When you rendering PSD file format, you can set the default font. If it is not found you need to set a directory (font source) to load it.

### How to set directories for fonts

To specify directories with your custom fonts, follow the below steps:

* Instantiate the [FolderFontSource](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/folderfontsource) object - set folder path, and [SearchOption](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/folderfontsource/properties/searchoption) - AllFolders - to search for fonts recursively, TopFolderOnly - to search for fonts only in the current folder;
* Call [SetFontSources](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/fontsettings/methods/setfontsources) method of [FontsSettings](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/fontsettings) class.

```csharp
FolderFontSource folderFontSource = new FolderFontSource(@"C:\custom_fonts_folder", SearchOption.TopFolderOnly);
FontSettings.SetFontSources(folderFontSource);
```

Your fonts will be loaded before open your document.

### Convert PSD with custom fonts

To convert PSD files with custom fonts with GroupDocs.Viewer for .NET follow the below steps:

* Instantiate the [FolderFontSource](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/folderfontsource) object - set folder path, and [SearchOption](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/folderfontsource/properties/searchoption) - AllFolders - to search for fonts recursively, TopFolderOnly - to search for fonts only in the current folder;
* Call [SetFontSources](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/fontsettings/methods/setfontsources) method of [FontsSettings](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/fontsettings) class and supply font sources as arguments.
* Instantiate the [Viewer](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object;
* Instantiate [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) (or [JpgViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), or [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions), or [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)) object;
* Set [DefaultFontName](https://apireference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/defaultfontname) property in options - set your font name;
* Call [View](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method.
* The following code sample shows how to set the output image size limits when rendering the document.

```csharp

// Create font sources.
// Add custom fonts folder to look for fonts recursively. (look into subfolders too).
FolderFontSource folderFontSource = new FolderFontSource(@"C:\custom_fonts_folder", SearchOption.AllFolders);
// Add custom fonts folder to look for fonts only in this folder (wihout subfolders).
FolderFontSource additionalFontSource = new FolderFontSource(@"C:\custom_additional_fonts_folder", SearchOption.TopFolderOnly);
// Call SetFontSources method and supply font sources as arguments.
FontSettings.SetFontSources(folderFontSource, additionalFontSource);

using (Viewer viewer = new Viewer("sample.psd"))
{
       JpgViewOptions options = new JpgViewOptions("result.jpg");
       options.DefaultFontName = "Arial";

       viewer.View(options); 
}
```

