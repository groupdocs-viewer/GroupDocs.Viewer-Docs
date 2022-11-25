---
id: how-to-convert-and-view-psd-with-custom-fonts
url: viewer/java/how-to-convert-and-view-psd-with-custom-fonts
title: Render PSD with custom fonts
weight: 9
description: "This article explains render PSD with custom fonts with GroupDocs.Viewer within your Java applications."
keywords: psd photoshop view convert custom fonts
productName: GroupDocs.Viewer for Java
hideChildren: False
---
## Introduction

When you rendering PSD file format, you can set the default font. If it is not found you need to set a directory (font source) to load it.

### How to set directories for fonts

To specify directories with your custom fonts, follow the below steps:

* Instantiate the [FolderFontSource](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/FolderFontSource) object - set folder path, and [SearchOption](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/SearchOption):
  * [ALL_FOLDERS](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/SearchOption#ALL_FOLDERS) - to search for fonts recursively, 
  * [TOP_FOLDER_ONLY](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/SearchOption#TOP_FOLDER_ONLY) - to search for fonts only in the current folder;
* Call [setFontSources(...)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/FontSettings#setFontSources(com.groupdocs.viewer.fonts.FontSource...)) method of [FontsSettings](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/FontSettings) class.

```java
FolderFontSource folderFontSource = new FolderFontSource("C:\\custom_fonts_folder", SearchOption.TOP_FOLDER_ONLY);
FontSettings.setFontSources(folderFontSource);
```

Your fonts will be loaded before open your document.

### Convert PSD with custom fonts

To convert PSD files with custom fonts using GroupDocs.Viewer for Java follow the below steps:

* Instantiate the [FolderFontSource](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/FolderFontSource) object - set folder path, and [SearchOption](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/SearchOption):
  * [ALL_FOLDERS](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/SearchOption#ALL_FOLDERS) - to search for fonts recursively, 
  * [TOP_FOLDER_ONLY](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/SearchOption#TOP_FOLDER_ONLY) - to search for fonts only in the current folder;
* Call [setFontSources(...)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/FontSettings#setFontSources(com.groupdocs.viewer.fonts.FontSource...)) method of [FontsSettings](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/FontSettings) class and supply font sources as arguments.
* Instantiate the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object;
* Instantiate [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions) (or [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions), or [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions), or [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions)) object;
* Set [setDefaultFontName(...)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/BaseViewOptions#setDefaultFontName(java.lang.String)) property in options - set your font name;
* Call [view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method.
* The following code sample shows how to set the output image size limits when rendering the document.

```java
// Create font sources.
// Add custom fonts folder to look for fonts recursively. (look into subfolders too).
FolderFontSource folderFontSource = new FolderFontSource("C:\\custom_fonts_folder", SearchOption.ALL_FOLDERS);
// Add custom fonts folder to look for fonts only in this folder (wihout subfolders).
FolderFontSource additionalFontSource = new FolderFontSource("C:\\custom_additional_fonts_folder", SearchOption.TOP_FOLDER_ONLY)
// Call SetFontSources method and supply font sources as arguments.
FontSettings.setFontSources(folderFontSource, additionalFontSource);

try (Viewer viewer = new Viewer("sample.psd")) {
    JpgViewOptions options = new JpgViewOptions("result.jpg");
    options.setDefaultFontName("Arial");

    viewer.view(options);
}
```

