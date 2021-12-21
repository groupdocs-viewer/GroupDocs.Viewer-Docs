---
id: groupdocs-viewer-for-net-21-12-release-notes
url: viewer/net/groupdocs-viewer-for-net-21-12-release-notes
title: GroupDocs.Viewer for .NET 21.12 Release Notes
weight: 98
description: "Features, improvements, and bugs-fixes that are shipped in GroupDocs.Viewer for .NET 21.12"
keywords: release notes, groupdocs.viewer, .net, 21.12
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
{{< alert style="info" >}}This page contains release notes for GroupDocs.Viewer for .NET 21.12{{< /alert >}}

## Major Features

There are 12 features, improvements, and bug-fixes in this release, most notable are:

* Text gradient support for DOCX files
* Barcode fields are not updated in .NET
* Excel original grid should not be changed when Overflow HideText and OverlayIfNextIsEmpty rendering
* Fixed application crash on Linux when Processing a File with a Form Element

## Full List of Issues Covering all Changes in this Release

| Key|Summary| Category |
| --- | --- | --- |
|VIEWERNET-3782|Text gradient support for DOCX files|Feature
|VIEWERNET-3403|"Could not load file. File is corrupted or damaged." exception when rendering DCM file|Bug|
|VIEWERNET-3465|"Unable to cast object exception" when rendering specific WMF file|Bug|
|VIEWERNET-3574|"Could not load file. File is corrupted or damaged." exception when rendering MPP file"|Bug|
|VIEWERNET-3667|"Could not load file. File is corrupted or damaged." exception when rendering TGA file"|Bug|
|VIEWERNET-3684|Excel original grid should not be changed when Overflow HideText and OverlayIfNextIsEmpty rendering|Bug|
|VIEWERNET-3736|QR code size is smaller comparing with Word|Bug|
|VIEWERNET-3741|Barcode fields are not updated in .NET|Bug|
|VIEWERNET-3742|Cannot view specific XLS file|Bug|
|VIEWERNET-3780|Failed to load specific PSD|Bug|
|VIEWERNET-3783|Conversion from EPS to PDF produce blank output|Bug|
|VIEWERNET-3678|Application Crash on Linux when Processing a File with a Form Element|Bug|

### Behaviour changes

In GroupDocs.Viewer 21.12 version because of issues of autodetection, autodetection feature is disabled.
Document extension should match the actual document format.
