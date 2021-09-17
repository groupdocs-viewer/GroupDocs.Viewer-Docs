---
id: groupdocs-viewer-for-net-21-9-release-notes
url: viewer/net/groupdocs-viewer-for-net-21-9-release-notes
title: GroupDocs.Viewer for .NET 21.9 Release Notes
weight: 111
description: "Features, improvements, and bugs-fixes that are shipped in GroupDocs.Viewer for .NET 21.9"
keywords: release notes, groupdocs.viewer, .net, 21.9
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
{{< alert style="info" >}}This page contains release notes for GroupDocs.Viewer for .NET 21.9{{< /alert >}}

## Major Features

There are 39 features, improvements, and bug-fixes in this release, most notable are:

* Add syntax highlight to programming language formats
* Support cancellation: Improvement for Visio documents loading cancellation
* Add Power shell script (.PS1) file-format support
* Add Power shell script module (.PSM1) file-format support
* Add Power shell script module manifest (.PSD1) file-format support
* [Convert PSD with custom fonts]({{< ref "viewer/net/developer-guide/advanced-usage/viewing/view-image-files/how-to-convert-and-view-psd-with-custom-fonts.md">}})
* Preserve original image format when converting JPEG to HTML with embedded resources

## Full List of Issues Covering all Changes in this Release

| Key|Summary| Category |
| --- | --- | --- |
|VIEWERNET-1988|Add syntax highlight to programming language formats|Feature|
|VIEWERNET-2432|Support cancellation|Feature|
|VIEWERNET-3491|Save external resources for text files rendered to HTML.|Feature|
|VIEWERNET-3492|Add Power shell script (.PS1) file-format support|Feature|
|VIEWERNET-3493|Add Power shell script module (.PSM1) file-format support|Feature|
|VIEWERNET-3496|Add Power shell script module manifest (.PSD1) file-format support|Feature|
|VIEWERNET-1972|Convert PSD with custom fonts|Improvement|
|VIEWERNET-3494|Preserve original image format when converting JPEG to HTML with embedded resources|Improvement|
|VIEWERNET-2252|Some Chinese fonts cannot be displayed properly|Bug|
|VIEWERNET-2462|"File is corrupted or damaged" exception when rendring DWF file"|Bug|
|VIEWERNET-2479|Exception is thrown when loading VSDX file|Bug|
|VIEWERNET-2694|When watermark is added output HTML doesn't ends properly|Bug|
|VIEWERNET-2957|Visio to PDF rendering issue|Bug|
|VIEWERNET-2992|"Could not load file. File is corrupted or damaged." exception when rendering IFC file"|Bug|
|VIEWERNET-3133|"Could not load file. File is corrupted or damaged." exception when rendering CDR file"|Bug|
|VIEWERNET-3138|Specific IFC files failed to open|Bug|
|VIEWERNET-3231|"Parameter is not valid." exception when rendering VSD file"|Bug|
|VIEWERNET-3275|"Parameter is not valid." exception when rendering VSDX file"|Bug|
|VIEWERNET-3287|"Could not load file. File is corrupted or damaged." exception when rendering TGA file to HTML"|Bug|
|VIEWERNET-3325|NotImplementedException when viewing certain ZIP file|Bug|
|VIEWERNET-3401|"Parameter is not valid." exception when rendering VSDX file"|Bug|
|VIEWERNET-3404|"The given key '1680' was not present in the dictionary." exception when rendering MPP file"|Bug|
|VIEWERNET-3411|"The given key '188744169' was not present in the dictionary." exception when rendering MPP file"|Bug|
|VIEWERNET-3442|A generic error occurred in GDI+ when converting PDF to HTML|Bug|
|VIEWERNET-3495|[Angular UI] Duplicate loadDocumentPage requests when opening a file|Bug|
|VIEWERNET-3497|[Angular UI] Methods loadThumbnails and loadDocumentPage return the same data|Bug|
|VIEWERNET-3506|Wrong call for Resize on specific DWG file|Bug|
|VIEWERNET-3511|Image loading failed exception thrown for specific DXF file|Bug|
|VIEWERNET-3514|Exception when converting Excel with hidden worksheets to HTML in .NET|Bug|
|VIEWERNET-3517|ImageSaveException on an attempt to convert specific PSD to PNG|Bug|
|VIEWERNET-3518|Exception when trying to convert particular Psd file to png|Bug|
|VIEWERNET-3529|Bad representation after conversion|Bug|
|VIEWERNET-3531|Git to HTML -> Out of Memory exception|Bug|
|VIEWERNET-3534|Error when rendering specific DICOM file.|Bug|
|VIEWERNET-3559|Cannot load specific Xps file|Bug|
|VIEWERNET-3560|Cannot load specific Xps file.|Bug|
|VIEWERNET-3571|Document viewer API only Renders the Deleted Folder of a PST File in .NET|Bug|
|VIEWERNET-3581|Could not load file or assembly exception when targeting .NET 6|Bug|
|VIEWERNET-3489|Invalid column index when rendering XLSM to PDF|Bug|

### Public API Changes

#### GroupDocs.Viewer.FileType

Fields were added to [GroupDocs.Viewer.FileType](<https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/filetype>) class that reflects new file formats that we're supporting starting from v21.9.

```csharp
/// <summary>
/// PowerShell script module (.psm1) a file format for PowerShell module scripts.
/// Learn more about this file format <a href="https://fileinfo.com/extension/psm1">here</a>. 
/// </summary>
public static readonly FileType PSM1 = new FileType("Windows PowerShell script module", ".psm1");

/// <summary>
/// PowerShell script file (.ps1) a file format for Windows PowerShell Cmdlet files.
/// Learn more about this file format <a href="https://fileinfo.com/extension/ps1">here</a>. 
/// </summary>
public static readonly FileType PS1 = new FileType("Windows PowerShell Cmdlet File ", ".ps1");

/// <summary>
/// PowerShell script module manifest (.psd1) a file format for PowerShell module manifest scripts.
/// Learn more about this file format <a href="https://fileinfo.com/extension/psd1">here</a>. 
/// </summary>
public static readonly FileType PSD1 = new FileType("Windows PowerShell script module manifest", ".psd1");
```

### Behaviour changes

Now when rendering source code files, they will be colorized. This feature is supported for following files:
C++, CSS, HTML, JAVA, Javascript, JSON, PHP, SQL, XML, PSM1, PS1, PSD1

C# colorizing example: \
![C# coloring](viewer/net/images/code-coloring/cs-document-coloring.png)

SQL colorizing example: \
![SQL coloring](viewer/net/images/code-coloring/sql-document-coloring.png)
