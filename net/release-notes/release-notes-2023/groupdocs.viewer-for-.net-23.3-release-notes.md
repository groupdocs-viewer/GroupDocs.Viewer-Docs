---
id: groupdocs-viewer-for-net-23-3-release-notes
url: viewer/net/groupdocs-viewer-for-net-23-3-release-notes
title: GroupDocs.Viewer for .NET 23.3 Release Notes
weight: <???>
description: "Bugs-fixes that are shipped in GroupDocs.Viewer for .NET 23.3"
keywords: release notes, groupdocs.viewer, .net, 23.3
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

There are --???-- + features, enhancements, and bug fixes in this release.

## Full list of changes in this release

| Key | Category | Summary |
| --- | --- | --- |
|PROBATION-1532|Feature|[Add Amazon AZW3/KF8 ebook (.azw3) file-format support](#added-support-for-amazon-azw3-ebook)|

## Major Features

This release includes --???-- features and --???-- enhancement:

* [Added support for Amazon AZW3/KF8 ebook](#added-support-for-amazon-azw3-ebook)

### Added support for Amazon AZW3 ebook

[AZW3](https://fileinfo.com/extension/azw3) is ebook file. This ebook format is used by [Amazon Kindle](https://docs.fileformat.com/ebook/azw3/), this file format is developed for Amazon Kindle devices. The format is an enhancement to older AZW files and is used on Kindle Fire devices only with backward compatibility for the ancestor file format i.e. MOBI and AZW.

{{< tabs "example1">}}
{{< tab "C#" >}}
```cs
/// <summary>
/// Amazon AZW3/KF8 ebook
/// </summary>
public static readonly FileType AZW3 = new FileType("Amazon Kindle Format 8 (KF8) eBook", ".azw3");
```
{{< /tab >}}
{{< /tabs >}}