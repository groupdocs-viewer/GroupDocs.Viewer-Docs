---
id: groupdocs-viewer-for-net-21-7-release-notes
url: viewer/net/groupdocs-viewer-for-net-21-7-release-notes
title: GroupDocs.Viewer for .NET 21.7 Release Notes
weight: 113
description: "Features, improvements, and bugs-fixes that are shipped in GroupDocs.Viewer for .NET 21.7"
keywords: release notes, groupdocs.viewer, .net, 21.7
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
{{< alert style="info" >}}This page contains release notes for GroupDocs.Viewer for .NET 21.7{{< /alert >}}

## Major Features

There are 20 features, improvements, and bug-fixes in this release, most notable are:

* [Cancel viewer document loading/rendering]({{< ref "viewer/net/developer-guide/rendering-documents/cancel-rendering.md">}})
* [GroupDocs.Viewer-CLI Dotnet Tool](https://www.nuget.org/packages/groupdocs.viewer-cli)
* Improved rendering Spreadsheet files
* Render Text files to responsive HTML
* Fixed exception when invalid or expired license provided
* [Separator detection for CSV/TSV files]({{< ref "separator-detection">}})

## Full List of Issues Covering all Changes in this Release

| Key|Summary| Category |
| --- | --- | --- |
|VIEWERNET-3358|Render Text files to responsive HTML|Feature|
|VIEWERNET-3354|Throw exception when invalid or expired license provided|Feature|
|VIEWERNET-3295|GroupDocs.Viewer-CLI Dotnet Tool|Feature|
|VIEWERNET-3102|GroupDocs.Viewer.UI NuGet Package|Feature|
|VIEWERNET-2431|Cancel viewer document loading/rendering|Feature|
|VIEWERNET-3370|Incorrect page count returned for Excel files in trial mode|Bug|
|VIEWERNET-3369|Excel to HTML conversion only renders first page in .NET|Bug|
|VIEWERNET-3368|Word to HTML conversion - Overlapping characters in .NET|Bug|
|VIEWERNET-3364|"Shape to image Error!" exception when rendering XLSX file"|Bug|
|VIEWERNET-3360|Headings are rendered incorrectly when converting XLSX to PNG|Bug|
|VIEWERNET-3318|Image and pie-chart incorrectly positioned when converting XLSX to HTML in .NET|Bug|
|VIEWERNET-3266|Exception when rendering CSV file|Bug|
|VIEWERNET-3233|"header doesn't correspond to vCard format""exception when rendering VCF file"|Bug|
|VIEWERNET-3196|"Object reference not set to an instance of an object." exception when rendering OST file|Bug|
|VIEWERNET-3141|Excel file with watermark is not properly rendered to HTML|Bug|
|VIEWERNET-3004|PDF to HTML conversion: Annotation transparency lost|Bug|
|VIEWERNET-2941|Parameter is not valid|Bug|
|VIEWERNET-2755|"PDF to HTML rendering wrong image colors in the output"|Bug|
|VIEWERNET-2743|A generic error occurred in GDI+.|Bug|
|VIEWERNET-2693|Incorrect page count for EPUB document|Bug|

## Public API Changes

### GroupDocs.Viewer.Options.SpreadsheetOptions class

Added new `DetectSeparator` property.

```cs
/// <summary>
/// Detect separator (for CSV/TSV files).
/// </summary>
public bool DetectSeparator { get; set; } = false;
```

See how to use new properties in [Separator detection for CSV/TSV files]({{< ref "viewer/net/developer-guide/rendering-documents/advanced-rendering/rendering-excel-spreadsheets/separator-detection.md">}})
