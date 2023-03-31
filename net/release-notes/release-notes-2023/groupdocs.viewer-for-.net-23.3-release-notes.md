---
id: groupdocs-viewer-for-net-23-3-release-notes
url: viewer/net/groupdocs-viewer-for-net-23-3-release-notes
title: GroupDocs.Viewer for .NET 23.3 Release Notes
weight: 110
description: "Bugs-fixes that are shipped in GroupDocs.Viewer for .NET 23.3"
keywords: release notes, groupdocs.viewer, .net, 23.3
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

There are 15 features and bug fixes in this release.

## Full list of changes in this release

| Key | Category | Summary |
| --- | --- | --- |
|VIEWERNET&#8209;4283|Feature|[Add Amazon AZW3/KF8 ebook (.azw3) file-format support](#added-support-for-amazon-azw3-ebook)|
|VIEWERNET&#8209;4272|Feature|[Highlight search text in file preview](#highlight-search-text-in-file-preview)|
|VIEWERNET&#8209;2646|Fix|The image was cut when rendering from PDF with images in Linux|
|VIEWERNET&#8209;2823|Fix|Invalid image block length|
|VIEWERNET&#8209;3015|Fix|Mobi file detected as damaged|
|VIEWERNET&#8209;3591|Fix|Service hangs when disposing Viewer in .NET|
|VIEWERNET&#8209;3992|Fix|Threading Issue|
|VIEWERNET&#8209;4152|Fix|Operation is not valid due to the current state of the object when rendering Excel spreadsheet to PNG|
|VIEWERNET&#8209;4205|Fix|MVC Demo:  Generic error occurred in GDI+|
|VIEWERNET&#8209;4243|Fix|Slow Load time in Viewer|
|VIEWERNET&#8209;4246|Fix|Object reference not set to an instance of an object? error occurs when converting this excel file|
|VIEWERNET&#8209;4250|Fix|Font not embedded when converting DOCX to HTML in .NET|
|VIEWERNET&#8209;4260|Fix|The type initializer for 'Gdip' threw an exception when rendering PDF|
|VIEWERNET&#8209;4263|Fix|Object reference not set to an instance of an object exception when rendering DOCX file|
|VIEWERNET&#8209;4266|Fix|Converting STL files to HTML produces empty file|


## Major Features

This release includes two features:

* [Added support for Amazon AZW3/KF8 ebook](#added-support-for-amazon-azw3-ebook)
* [Highlight search text in file preview](#highlight-search-text-in-file-preview)

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

### Highlight search text in file preview

In [GroupDocs.Viewer.UI](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-UI) search term can be set now in the file preview request. It provides ability to apply search term immediately after opening the file.

There are two possible ways to pass search term.

{{< tabs "Searh term">}}
{{< tab "From query string" >}}
```
  http://localhost:8080/viewer?file=<file_name>&search=<search_term>
```
{{</ tab >}}
{{< tab "From API" >}}
```cs
/// Implement the service 
class MySearchTermResolver : ISearchTermResolver
{
     public Task<string> ResolveSearchTermAsync(string filepath)
     {
          /// resolve search term by file path
          return Task.FromResult("<search term>");
     }
}
	
...

// and register it
services.AddSingleton<ISearchTermResolver, MySearchTermResolver>(); 
{{</ tab >}}
{{</ tabs >}}
