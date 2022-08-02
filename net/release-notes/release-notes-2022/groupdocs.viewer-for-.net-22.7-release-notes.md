---
id: groupdocs-viewer-for-net-22-7-release-notes
url: viewer/net/groupdocs-viewer-for-net-22-7-release-notes
title: GroupDocs.Viewer for .NET 22.7 Release Notes
weight: 90
description: "Bugs-fixes that are shipped in GroupDocs.Viewer for .NET 22.7"
keywords: release notes, groupdocs.viewer, .net, 22.7
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
{{< alert style="info" >}}This page contains release notes for GroupDocs.Viewer for .NET 22.7{{< /alert >}}

## Major Features

There are 9 features, improvements, and bug-fixes in this release, most notable are:

* GroupDocs.Viewer now render the page when it’s a full page image in a PDF
* "Output space is undefined" fix when rendering TEX files from MemoryStream
* Output page size is not 55 mb when rendering PPTX to HTML
* Saving a particular pdf document to image by page produces correct images
* Support setting margins for Word documents

## Full List of Issues Covering all Changes in this Release

| Key | Summary | Category |
| --- | --- | --- |
|VIEWERNET-3973|Characters written on objects such as shapes and text boxes are garbled|Bug|
|VIEWERNET-3919|GroupDocs.Viewer doesn’t render the page when it’s a full page image in a PDF|Bug|
|VIEWERNET-3969|"Output space is undefined" when rendering TEX files from MemoryStream|Bug|
|VIEWERNET-3990|Output page size is 55 mb when rendering PPTX to HTML|Bug|
|VIEWERNET-4000|Saving a particular pdf document to image by page produces distored images|Bug|
|VIEWERNET-4021|Support setting margins for Word documents|Bug|
|VIEWERNET-4024|"Object reference not set to an instance of an object." exception when open PS document|Bug|
|VIEWERNET-3989|ReadFileAsync and ResolveFileTypeAsync are called several times for one file that should be displayed|Bug|
|VIEWERNET-3984|Viewer Print button not working properly|Bug|


## Public API changes

In context of new feature `VIEWERNET-4021 - Support setting margins for Word documents` we have changed the file type from `float` to `float?` in `GroupDocs.Viewer.Options.WordProcessingOptions`. Starting from this version you can set margins for the Word documents same as you adjust margins using `Page Setup` in Microsoft Word.

```cs
/// <summary>
/// The distance (in points) between the left edge of the page and the left boundary of the body text.
/// </summary>
/// <remarks>
/// By default, the Left Margin value that is set in the Page Setup of the source document will be used.
/// </remarks>
public float? LeftMargin { get; set; }

/// <summary>
/// The distance (in points) between the right edge of the page and the right boundary of the body text.
/// </summary>
/// <remarks>
/// By default, the Right Margin value that is set in the Page Setup of the source document will be used.
/// </remarks>
public float? RightMargin { get; set; }

/// <summary>
/// The distance (in points) between the top edge of the page and the top boundary of the body text.
/// </summary>
/// <remarks>
/// By default, the Top Margin value that is set in the Page Setup of the source document will be used.
/// </remarks>
public float? TopMargin { get; set; }

/// <summary>
/// The distance (in points) between the bottom edge of the page and the bottom boundary of the body text.
/// </summary>
/// <remarks>
/// By default, the Bottom Margin value that is set in the Page Setup of the source document will be used.
/// </remarks>
public float? BottomMargin { get; set; }
```
