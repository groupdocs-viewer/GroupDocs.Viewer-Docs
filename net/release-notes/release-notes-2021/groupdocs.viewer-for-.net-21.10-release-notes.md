---
id: groupdocs-viewer-for-net-21-10-release-notes
url: viewer/net/groupdocs-viewer-for-net-21-10-release-notes
title: GroupDocs.Viewer for .NET 21.10 Release Notes
weight: 110
description: "Features, improvements, and bugs-fixes that are shipped in GroupDocs.Viewer for .NET 21.10"
keywords: release notes, groupdocs.viewer, .net, 21.10
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
{{< alert style="info" >}}This page contains release notes for GroupDocs.Viewer for .NET 21.10{{< /alert >}}

## Major Features

There are 28 features, improvements, and bug-fixes in this release, most notable are:

* Open files with HTML table inside as XLS files
* Change language in Angular UI
* InMemory Cache for GroupDocs.Viewer.UI
* Render all archive folders content for multi-page archives
* Prevent loading resources if the host is unavailable

## Full List of Issues Covering all Changes in this Release

| Key|Summary| Category |
| --- | --- | --- |
|VIEWERNET-3570|Open files with HTML table inside as XLS files|Feature|
|VIEWERNET-3582|Change language in Angular UI|Feature|
|VIEWERNET-3592|InMemory Cache for GroupDocs.Viewer.UI|Feature|
|VIEWERNET-2126|Convert PSD to PDF with selectable text|Improvement
|VIEWERNET-3136|Improve rendering archive files to PDF|Improvement
|VIEWERNET-3457|Render all archive folders content for multi-page archives|Improvement
|VIEWERNET-3598|Prevent loading resources if the host is unavailable|Improvement
|VIEWERNET-3183|"Arithmetic operation resulted in an overflow." exception when rendering CDR file"|Bug|
|VIEWERNET-3186|"Could not load file. File is corrupted or damaged." exception when rendering CDR file"|Bug|
|VIEWERNET-3189|"Could not load file. File is corrupted or damaged." exception when rendering IFC file"|Bug|
|VIEWERNET-3194|"Could not load file. File is corrupted or damaged." exception when rendering DGN file"|Bug|
|VIEWERNET-3221|"There was an issue with detecting page size. Please contact support." exception when rendering DWF file"|Bug|
|VIEWERNET-3228|"Could not load file. File is corrupted or damaged" when viewing IFC|Bug|
|VIEWERNET-3274|"Could not load file. File is corrupted or damaged." exception when rendering DWG file"|Bug|
|VIEWERNET-3451|"Could not load file. File is corrupted or damaged." exception when rendering VSD file"|Bug|
|VIEWERNET-3512|Failed to render specific PLT file|Bug|
|VIEWERNET-3513|Unable to load an ODT file when targeting .NET framework 2.0|Bug|
|VIEWERNET-3521|Specific VDW, VSS, VST files rendering blank to IMAGE/HTML|Bug|
|VIEWERNET-3538|Radio buttons are blurry when converting XLSM to HTML in .NET|Bug|
|VIEWERNET-3580|"Unable to read beyond the end of the stream." exception when rendering ODS file|Bug|
|VIEWERNET-3583|Junk email listed twice when converting PST to HTML|Bug|
|VIEWERNET-3599|Image shifted in specific XLS files when rendering to HTML|Bug|
|VIEWERNET-3600|Image not visible when converting specific XLSX file to HTML|Bug|
|VIEWERNET-3607|"Input string was not in a correct format." exception when rendering XLSX file|Bug|
|VIEWERNET-3615|"Value was either too large or too small for a Decimal." exception when rendering MPP file|Bug|
|VIEWERNET-3627|"Object reference not set to an instance of an object." exception when rendering NUMBERS file|Bug|
|VIEWERNET-3637|Specific numbers document should be exported correctly.|Bug|
|VIEWERNET-3638|Enormous conversion time and output file size while converting specific worksheet of XLSX to HTML|Bug|

### Behaviour changes

Since GroupDocs.Viewer 21.10 version when rendering archive to multiple HTML pages, all contents of the archive are rendered recursively, in previous versions only root folder was rendered.
