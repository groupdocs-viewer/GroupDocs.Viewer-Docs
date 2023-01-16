---
id: groupdocs-viewer-for-net-21-6-release-notes
url: viewer/net/groupdocs-viewer-for-net-21-6-release-notes
title: GroupDocs.Viewer for .NET 21.6 Release Notes
weight: 114
description: "Features, improvements, and bugs-fixes that are shipped in GroupDocs.Viewer for .NET 21.6"
keywords: release notes, groupdocs.viewer, .net, 21.6
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
{{< alert style="info" >}}This page contains release notes for GroupDocs.Viewer for .NET 21.6{{< /alert >}}

## Major Features

There are 23 features, improvements, and bug-fixes in this release, most notable are:

* [Define page size when rendering TXT to HTML]({{< ref "viewer/net/developer-guide/loading-documents/load-password-protected-document.md">}})
* Fixed rendering of large GIF files
* Improved rendering Spreadsheet files

## Full List of Issues Covering all Changes in this Release

| Key | Summary | Category |
| --- | --- | --- |
|VIEWERNET-3323|Define page size when rendering TXT to HTML|Feature|
|VIEWERNET-3296|Specify default document to open as a query string parameter in Angular UI|Feature|
|VIEWERNET-3227|Make special exception message if file protected by RMS|Improvement|
|VIEWERNET-3181|Change DGN V8 exception message|Improvement|
|VIEWERNET-3330|Conversion GIF to HTML - A generic error occurred in GDI+|Bug|
|VIEWERNET-3328|GetViewInfo returns hidden Excel worksheets in .NET|Bug|
|VIEWERNET-3326|Incorrect page size when rendering spreadsheets by rows|Bug|
|VIEWERNET-3322|Incorrect page size when rendering spreadsheets by page breaks|Bug|
|VIEWERNET-3316|Null reference exception when converting certain XLSM to HTML in .NET|Bug|
|VIEWERNET-3300|PNG image becomes a black square|Bug|
|VIEWERNET-3298|Preserve the page layout of the original document when rendering in png|Bug|
|VIEWERNET-3297|"Object reference not set to an instance of an object." exception when rendering VSSX file|Bug|
|VIEWERNET-3290|"Parameter is not valid." exception when rendering VSD file to HTML|Bug|
|VIEWERNET-3285|'Object reference not set to an instance of an object.' when getting view info for VSS-file|Bug|
|VIEWERNET-3284|Rendering table headings of XLSX as HTML not working for hidden columns in .NET|Bug|
|VIEWERNET-3282|Convert GIF to HTML - bad quality|Bug|
|VIEWERNET-3276|"Unexcepted eof." exception when rendering VSDX file|Bug|
|VIEWERNET-3270|"Value was either too large or too small for an Int32." exception when rendering DOCX file|Bug|
|VIEWERNET-3231|"Parameter is not valid." exception when rendering VSD file|Bug|
|VIEWERNET-3219|"The argument cannot be null or empty string. (Parameter 'name')" exception when rendering ODS file|Bug|
|VIEWERNET-3184|Invalid row index when rendering XLSM|Bug|
|VIEWERNET-2924|"Image export failed." exception when rendering EMF file|Bug|
|VIEWERNET-2848|"Image export failed." exception when rendering TIFF file|Bug|

## Public API Changes

### GroupDocs.Viewer.Options.BaseViewOptions class

Added a new `TextOptions` property.

```csharp
/// <summary>
/// Text files splitting to pages options.
/// </summary>
public TextOptions TextOptions { get; set; } = new TextOptions();
```

And related `TextOptions` class to configure rendering text files e.g TXT, LOG.

```csharp
/// <summary>
/// Text files splitting to pages options.
/// </summary>
public class TextOptions
{
    /// <summary>
    /// Max chars per row on page. Default value is 85.
    /// </summary>
    public int MaxCharsPerRow { get; set; } = 85;

    /// <summary>
    /// Max rows per page. Default value is 55.
    /// </summary>
    public int MaxRowsPerPage { get; set; } = 55;
}
```

See how to use new properties in the following help topic: [Render text documents as HTML, PDF, and image files]({{< ref "viewer/net/rendering-basics/render-text-files.md">}}).
