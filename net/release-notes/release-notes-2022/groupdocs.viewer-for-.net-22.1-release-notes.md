---
id: groupdocs-viewer-for-net-22-1-release-notes
url: viewer/net/groupdocs-viewer-for-net-22-1-release-notes
title: GroupDocs.Viewer for .NET 22.1 Release Notes
weight: 120
description: "Features, improvements, and bugs-fixes that are shipped in GroupDocs.Viewer for .NET 22.1"
keywords: release notes, groupdocs.viewer, .net, 22.1
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
{{< alert style="info" >}}This page contains release notes for GroupDocs.Viewer for .NET 22.1{{< /alert >}}

## Major Features

There are 11 features, improvements, and bug-fixes in this release, most notable are:

* Added addional method compression support for PSD
* Make readable exception for old versions of XLS file
* Temp files overflow when opening a file from stream for PSD AI files

## Full List of Issues Covering all Changes in this Release

| Key|Summary| Category |
| --- | --- | --- |
|VIEWERNET-3781|Compression method is not supported for specific PSD file|Improvement|
|VIEWERNET-3847|Make readable exception for old versions of XLS files|Improvement|
|VIEWERNET-3014|Not all data rendered|Bug|
|VIEWERNET-3435|"Failed to render CAD document into PDF." exception when rendering DXF file|Bug|
|VIEWERNET-3448|"Could not load file. File is corrupted or damaged." exception when rendering DWG file|Bug|
|VIEWERNET-3620|CAD document rendering failed.Please check that CadOptions sizing options do not have too low or too high values. exception when rendering DWF file|Bug|
|VIEWERNET-3622|"Could not load file. File is corrupted or damaged." exception when rendering DGN file|Bug|
|VIEWERNET-3676|Word table formatting issue using Customer XML data|Bug|
|VIEWERNET-3798|Temp files overflow when opening a file from stream for PSD AI files|Bug|
|VIEWERNET-3291|"Could not load file. File is corrupted or damaged." exception when rendering IGS file to html|Bug|
|VIEWERNET-3784|AI rendering is slow and output is a white square|Bug|

## Public API Changes

### GroupDocs.Viewer namespace

Following obsolete members were removed:

* `public Viewer(Func<Stream> getFileStream);`
* `public Viewer(Func<Stream> getFileStream, Func<LoadOptions> getLoadOptions);`
* `public Viewer(Func<Stream> getFileStream, ViewerSettings settings);`
* `public Viewer(Func<Stream> getFileStream, Func<LoadOptions> getLoadOptions, ViewerSettings settings);`
