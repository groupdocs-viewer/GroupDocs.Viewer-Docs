---
id: groupdocs-viewer-for-net-22-1-1-release-notes
url: viewer/net/groupdocs-viewer-for-net-22-1-1-release-notes
title: GroupDocs.Viewer for .NET 22.1.1 Release Notes
weight: 120
description: "Bugs-fixes that are shipped in GroupDocs.Viewer for .NET 22.1.1"
keywords: release notes, groupdocs.viewer, .net, 22.1.1
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
{{< alert style="info" >}}This page contains release notes for GroupDocs.Viewer for .NET 22.1.1{{< /alert >}}

## Major Features

This is hot-fix release that resolves issues after obsolete constructors were removed.

## Full List of Issues Covering all Changes in this Release

| Key | Summary | Category |
| --- | --- | --- |
|VIEWERNET-3872|Rollback removed constructors|Improvement|

## Public API and Backward Incompatible Changes

Rollback removed constructors:

* `public Viewer(Func<Stream> getFileStream);`
* `public Viewer(Func<Stream> getFileStream, Func<LoadOptions> getLoadOptions);`
* `public Viewer(Func<Stream> getFileStream, ViewerSettings settings);`
* `public Viewer(Func<Stream> getFileStream, Func<LoadOptions> getLoadOptions, ViewerSettings settings);`
