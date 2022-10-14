---
id: groupdocs-viewer-for-net-21-8-release-notes
url: viewer/net/groupdocs-viewer-for-net-21-8-release-notes
title: GroupDocs.Viewer for .NET 21.8 Release Notes
weight: 112
description: "Features, improvements, and bugs-fixes that are shipped in GroupDocs.Viewer for .NET 21.8"
keywords: release notes, groupdocs.viewer, .net, 21.8
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
{{< alert style="info" >}}This page contains release notes for GroupDocs.Viewer for .NET 21.8{{< /alert >}}

## Major Features

There are 14 features, improvements, and bug-fixes in this release, most notable are:

* Add cancellation token support for .NET Framework 4.0
* [Add TAR GZipped (TGZ) file format support]({{< ref "/viewer/net/rendering-basics/render-archive-files.md">}})
* [Add TAR XZipped (TXZ) file format support]({{< ref "/viewer/net/rendering-basics/render-archive-files.md">}})
* [Add XZipped (XZ) file format support]({{< ref "/viewer/net/rendering-basics/render-archive-files.md">}})
* [Add 7-Zip Compressed File (.7z) file format support]({{< ref "/viewer/net/rendering-basics/render-archive-files.md">}})
* Add Encrypted RAR5 archive extraction support

## Full List of Issues Covering all Changes in this Release

| Key|Summary| Category |
| --- | --- | --- |
|VIEWERNET-3455|Add TAR GZipped (TGZ) file-format support|Feature|
|VIEWERNET-3362|Add TAR XZipped (TXZ) file-format support|Feature|
|VIEWERNET-2757|Add 7-Zip Compressed File (.7z) file-format support|Feature|
|VIEWERNET-3361|Add XZipped (XZ) file-format support|Feature|
|VIEWERNET-2811|Need option to add empty columns.|Feature|
|VIEWERNET-2764|Add Encrypted RAR5 archive extraction support|Feature|
|VIEWERNET-3468|GropuDocs.Viewer-CLI: Add attachments list option|Improvement|
|VIEWERNET-3467|GropuDocs.Viewer-CLI: Add attachments saving support|Improvement|
|VIEWERNET-3459|Support for reading latest Apples .numbers file format|Improvement|
|VIEWERNET-3426|Add cancellation token support for .NET Framework 4.0|Improvement|
|VIEWERNET-3443|Invalid column index when converting XLSX|Bug|
|VIEWERNET-3441|Expression has changed after it was checked error in dev console|Bug|
|VIEWERNET-3359|GetViewInfo hangs for specific XLSM|Bug|
|VIEWERNET-3314|Exception 'Value cannot be null. Parameter name: region' when opening WMF file|Bug|

### Public API Changes

#### GroupDocs.Viewer.FileType

Fields were added to [GroupDocs.Viewer.FileType](<https://apireference.groupdocs.com/viewer/net/groupdocs.viewer/filetype>) class that reflects new file formats that we're supporting starting from v21.8.

```csharp
/// <summary>
/// XZ file (.xz) is archive compressed a high-ratio compression algorithm based on the LZMA algorithm. 
/// Learn more about this file format <a href="https://fileinfo.com/extension/xz">here</a>. 
/// </summary>
public static readonly FileType XZ = new FileType("XZipped", ".xz");

/// <summary>
/// Consolidated Unix File Archive (.txz, .tar.xz) are archives created with Unix-based utility for collecting one or more files. 
/// Learn more about this file format <a href="https://fileinfo.com/extension/txz">here</a>. 
/// </summary>
public static readonly FileType TXZ = new FileType("Tar XZipped", ".txz");

/// <summary>
/// Consolidated Unix File Archive (.txz, .tar.xz) are archives created with Unix-based utility for collecting one or more files. 
/// Learn more about this file format <a href="https://fileinfo.com/extension/txz">here</a>. 
/// </summary>
public static readonly FileType TARXZ = new FileType("Tar XZipped", ".tar.xz");

/// <summary>
/// Consolidated Unix File Archive (.tgz, .tar.gz) are archives created with Unix-based utility for collecting one or more files. 
/// Learn more about this file format <a href="https://fileinfo.com/extension/tgz">here</a>. 
/// </summary>
public static readonly FileType TGZ = new FileType("Tar GZipped", ".tgz");

/// <summary>
/// Consolidated Unix File Archive (.tgz, .tar.gz) are archives created with Unix-based utility for collecting one or more files. 
/// Learn more about this file format <a href="https://fileinfo.com/extension/tgz">here</a>. 
/// </summary>
public static readonly FileType TARGZ = new FileType("Tar GZipped", ".tar.gz");

/// <summary>
/// 7Zip (.7z, .7zip) is free open source archiver with LZMA and LZMA2 compression.
/// Learn more about this file format <a href="https://docs.fileformat.com/compression/7z/">here</a>.
/// </summary>
public static readonly FileType SevenZip = new FileType("7Zip", ".7z");
```
