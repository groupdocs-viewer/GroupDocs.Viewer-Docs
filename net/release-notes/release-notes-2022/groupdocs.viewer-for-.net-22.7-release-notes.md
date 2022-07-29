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

There are 8 features, improvements, and bug-fixes in this release, most notable are:

* GroupDocs.Viewer now render the page when it’s a full page image in a PDF
* "Output space is undefined" fix when rendering TEX files from MemoryStream
* Output page size is not 55 mb when rendering PPTX to HTML
* Saving a particular pdf document to image by page produces correct images
* Support setting margins for Word documents

## Full List of Issues Covering all Changes in this Release

| Key | Summary | Category |
| --- | --- | --- |
|VIEWERNET-3919|GroupDocs.Viewer doesn’t render the page when it’s a full page image in a PDF|Bug|
|VIEWERNET-3969|"Output space is undefined" when rendering TEX files from MemoryStream|Bug|
|VIEWERNET-3990|Output page size is 55 mb when rendering PPTX to HTML|Bug|
|VIEWERNET-4000|Saving a particular pdf document to image by page produces distored images|Bug|
|VIEWERNET-4021|Support setting margins for Word documents|Bug|
|VIEWERNET-4024|"Object reference not set to an instance of an object." exception when open PS document|Bug|
|VIEWERNET-3989|ReadFileAsync and ResolveFileTypeAsync are called several times for one file that should be displayed|Bug|
|VIEWERNET-3984|Viewer Print button not working properly|Bug|
