---
id: groupdocs-viewer-for-net-22-5-release-notes
url: viewer/net/groupdocs-viewer-for-net-22-5-release-notes
title: GroupDocs.Viewer for .NET 22.5 Release Notes
weight: 100
description: "Bugs-fixes that are shipped in GroupDocs.Viewer for .NET 22.5"
keywords: release notes, groupdocs.viewer, .net, 22.5
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
{{< alert style="info" >}}This page contains release notes for GroupDocs.Viewer for .NET 22.5{{< /alert >}}

## Major Features

There are 9 features, improvements, and bug-fixes in this release, most notable are:

* Implement support for multi-paged Dicom files
* Dwfx to Pdf produce empty result
* Viewer font issue when rendering DOCX to PDF
* Viewer converting Excel to HTML with problems (cell overlay bug)

## Full List of Issues Covering all Changes in this Release

| Key | Summary | Category |
| --- | --- | --- |
|VIEWERNET-3416|"Could not load file. File is corrupted or damaged." exception when rendering DCM file|Bug|
|VIEWERNET-3671|Specific DWF file rendered incorrectly.|Bug|
|VIEWERNET-3748|Implement support for multi-paged Dicom files|Feature|
|VIEWERNET-3849|"Object reference not set to an instance of an object." exception when rendering ODS file|Bug|
|VIEWERNET-3876|"Could not load file. File is corrupted or damaged." exception when rendering PLT file|Bug|
|VIEWERNET-3911|Viewer converting Excel to HTML with problems (cell overlay bug)|Bug|
|VIEWERNET-3950|Exception when converting particular file dwg file to PNG|Bug|
|VIEWERNET-3951|Dwfx to Pdf produce empty result|Bug|
|VIEWERNET-3952|Viewer font issue when rendering DOCX to PDF|Bug|

## Public API Changes

### GroupDocs.Viewer.Options.WordProcessingOptions class

Added new `EnableOpenTypeFeatures` boolean property. Setting this property to `true` enables kerning and other OpenType Features when rendering Arabic, Hebrew, Indian scripts, Latin-based or Cyrillic-based scripts

```csharp
/// <summary>
/// This option enables kerning and other OpenType Features when rendering Arabic, Hebrew, Indian scripts, Latin-based or Cyrillic-based scripts.
/// </summary>
public bool EnableOpenTypeFeatures { get; set; }
```

