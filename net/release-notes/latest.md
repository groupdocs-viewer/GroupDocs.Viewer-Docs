---
id: groupdocs-viewer-for-net-latest-release-notes
url: viewer/net/groupdocs-viewer-for-net-latest-release-notes
title: Latest release (January 2023)
weight: 0
description: "Changes that shipped in the latest version of GroupDocs.Viewer for .NET"
keywords: release notes, groupdocs.viewer for .net, latest
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

There are 20+ features, enhancements, and bug fixes in this release.

## Full list of changes in this release

| Key | Category | Summary |
| --- | --- | --- |
|VIEWERNET-4185|Feature|[Add Unix CPIO Archive (.CPIO) file-format support](#added-support-for-unix-cpio-archives)|
|VIEWERNET-4183|Feature|[Add Design Web Format XPS File (.dwfx) file-format support](#added-support-for-design-web-format-xps-dwfx-file)|
|VIEWERNET-3520|Feature|[Autodetect of the text file encoding](#autodetect-of-the-text-file-encoding)|
|VIEWERNET-4211|Feature|[Optimize (compress) PDF file when exporting Excel Spreadsheets](#optimize-compress-pdf-file-when-exporting-excel-spreadsheets)|
|VIEWERNET-4180|Feature|[Add Autodesk FBX Interchange File (.FBX) file-format support](#added-support-for-autodesk-fbx-interchange-file)|
|VIEWERNET-4203|Enhancement|[Add SkiaSharp.NativeAssets.Linux.NoDependencies as a package dependency](#add-skiasharpnativeassetslinuxnodependencies-as-a-package-dependency)|
|VIEWERNET-4182|Enhancement|[Call Encoding.RegisterProvider(CodePagesEncodingProvider.Instance) when it is required](#added-codepages-encoding-provider)|
|VIEWERNET-2918|Fix|Out of memory with CGM|
|VIEWERNET-3988|Fix|Unexpected font parsing exception|
|VIEWERNET-4090|Fix|Out of memory exception when rendering PDF on Linux|
|VIEWERNET-4089|Fix|PDF is displayed in black on Linux|
|VIEWERNET-3979|Fix|GroupDocs under Linux environment crashes with a PDF file|
|VIEWERNET-4213|Fix|Viewer is not rendering all pages on Azure deployment and local inconsistently|
|VIEWERNET-4061|Fix|Can't view ICO file|
|VIEWERNET-3802|Fix|"Could not load file. File is corrupted or damaged." exception when rendering ODT file|
|VIEWERNET-3160|Fix|Image missing in rendered page in Linux|
|VIEWERNET-3283|Fix|Out of memory exception when rendering PDF file in Docker|
|VIEWERNET-3222|Fix|Out of memory exception when rendering PDF file on Linux|
|VIEWERNET-3800|Fix|"Could not load file. File is corrupted or damaged." exception when rendering ODT file|
|VIEWERNET-4214|Fix|Options is not OdRasterizationOptions when exporting ODG to HTML|
|VIEWERNET-4208|Fix|MBOX rendered without images|
|VIEWERNET-4181|Fix|Autodesk FBX Interchange File (.FBX) not working with ASCII format|
|VIEWERNET-4193|Fix|GroupDocs.Viewer for .NET: WPF demo with DOCX format is broken|
|VIEWERNET-4192|Fix|GroupDocs.Viewer for .NET: WPF demo with SVG and DWG formats has a blank window|

## Major Features

This release includes three features and one enhancement:

* [Added support for Unix CPIO archives](#added-support-for-unix-cpio-archives)
* [Added support for Design Web Format XPS (.dwfx) File](#added-support-for-design-web-format-xps-dwfx-file)
* [Autodetect of the text file encoding](#autodetect-of-the-text-file-encoding)
* [Added support for Autodesk FBX Interchange File](#added-support-for-autodesk-fbx-interchange-file)
* [Add SkiaSharp.NativeAssets.Linux.NoDependencies as a package dependency]()
* [Optimize (compress) PDF file when exporting Excel Spreadsheets](#optimize-compress-pdf-file-when-exporting-excel-spreadsheets)
* [.NET 6 DLL removed from the package](#net-6-dll-removed-from-the-package)

### Added support for Unix CPIO archives

[CPIO](https://fileinfo.com/extension/cpio) is archive file. This archive format is used by [RPM](https://docs.fileformat.com/compression/rpm/), the Linux kernel `initramfs`, and Apple's `pax` archive installer.

{{< tabs "example1">}}
{{< tab "C#" >}}
```cs
/// <summary>
/// Unix CPIO Archive
/// </summary>
public static readonly FileType CPIO = new FileType("Unix CPIO Archive", ".cpio");
```
{{< /tab >}}
{{< /tabs >}}

### Added support for Design Web Format XPS (.dwfx) File

[DWFX](https://docs.fileformat.com/cad/dwfx/) is secure file format developed by Autodesk to combine and publish rich 2D- and 3D-design data. 

{{< tabs "example2">}}
{{< tab "C#" >}}
```cs
 /// <summary>
 /// Design Web Format File XPS (.dwfx) represents 2D/3D drawing as XPS document in compressed format for viewing, reviewing or printing design files. It contains graphics and text as part of design data and reduce the size of the file due to its compressed format.
 /// Learn more about this file format <a href="https://wiki.fileformat.com/cad/dwfx">here</a>.
 /// </summary>
 public static readonly FileType DWFX = new FileType("Design Web Format File XPS", ".dwfx");
```
{{< /tab >}}
{{< /tabs >}}

### Autodetect of the text file encoding

GroupDocs.Viewer can automatically detect text (TXT, CSV, TSV) files enconding. When Viewer fails to detect a file encoding it falls back to the default encoding specified in [LoadOptions.Encoding](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/loadoptions/encoding/). 

{{< alert style="warning" >}}

Default value of  [LoadOptions.Encoding](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/loadoptions/encoding/) property changed from `System.Text.Encoding.Default` to `System.Text.Encoding.UTF8`.

{{< /alert >}}

To enable encoding autodetect set `DetectEncoding` property to `true`.

{{< tabs "example3">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

var loadOptions = new LoadOptions();
loadOptions.DetectEncoding = true;

using (var viewer = new Viewer("employees.csv", loadOptions))
{
    // Convert the spreadsheet to HTML.
    // {0} is replaced with the current page number in the file names.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

In addition you can use two new methods of the [FileType](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/filetype) class to detect encoding of your text files.

{{< tabs "example4">}}
{{< tab "C#" >}}
```cs
// Detect encoding from a file path
Encoding encoding1 = FileType.DetectEncoding("employees.csv");

// Detect encoding from a stream
Stream stream = File.OpenRead("employees.csv"); 
Encoding encoding2 = FileType.DetectEncoding(stream);
```
{{< /tab >}}
{{< /tabs >}}

### Added support for Autodesk FBX Interchange File

[FBX](https://docs.fileformat.com/3d/fbx/) file is a format used to exchange 3D geometry and animation data. FBX files are used in film, game, and Augmented Reality and Virtual Reality (AR/VR) development.

{{< tabs "example5">}}
{{< tab "C#" >}}
```cs
/// <summary>
/// Autodesk FBX Interchange File (FilmBoX) (.fbx) represents 3D model format.
/// Learn more about this file format <a href="https://wiki.fileformat.com/cad/fbx">here</a>.
/// </summary>
public static readonly FileType FBX = new FileType("(FilmBoX)", ".fbx");
```
{{< /tab >}}
{{< /tabs >}}

### Add SkiaSharp.NativeAssets.Linux.NoDependencies as a package dependency

GroupDocs.Viewer using `SkiaSharp` library to process images. When running on Linux it requires additional native assets included in [SkiaSharp.NativeAssets.Linux.NoDependencies](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies). Check [.NET Standard Assembly Limitations](/viewer/net/net-standard-assembly-limitations) topic for more details about Viewer's dependencies.

### Optimize (compress) PDF file when exporting Excel Spreadsheets

You can optimize output PDF file size when exporting spreadsheets. Optimized PDF document won't contain common fonts like Times New Roman and Arial. Grid lines is also optimized to reduce output file size. Depending on the content of the input spreadsheet the output PDF size can be reduced up to 40%. To optimize the output PDF set [PdfViewOptions.Optimize](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions/optimize/) property to `true`.

{{< tabs "example6">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("employees.xlsx"))
{
    var viewOptions = new PdfViewOptions();
    viewOptions.Optimize = true;

    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image shows the properties of two PDF files where the left one is not optimized and has a size of 11.2 MB and the right one is 6.6 MB.

![Not optimized and optimized PDF files comparison](/viewer/net/images/rendering-basics/render-spreadsheets/optimize-output-pdf.png)

### Automatically register codepages encoding provider

Due to the smaller number of the supported encodings by .NET Core and .NET Viewer automatically registers `Encoding.RegisterProvider(CodePagesEncodingProvider.Instance)` when it is required, for example when rendering Microsoft Word documents. Learn more about this limitation at [CodePagesEncodingProvider.Instance Property](https://learn.microsoft.com/en-us/dotnet/api/system.text.codepagesencodingprovider.instance). 

{{< alert style="info" >}}

The method `Encoding.RegisterProvider(CodePagesEncodingProvider.Instance)` ensures that an instance of a provider is registered only once, so it is safe to call this method multiple times.

{{< /alert >}}

### .NET 6 DLL removed from the package 

In this version, .NET 6 assembly was removed due to package size limitations. The distribution packages includes two assemblies: .NET Framework 4.0 and .NET Standard 2.1. The .NET Standard assembly can be used in .NET Core and .NET applications on Windows and Linux systems. In case you're running your app on Linux, please check [.NET Standard Assembly Limitations](/viewer/net/net-standard-assembly-limitations) for limitations and dependencies.

{{< alert style="info" >}}

In case you require assembly targeting .NET, please let us know through [Free Forum](https://forum.groupdocs.com/c/viewer/9) or [Paid Support Helpdesk](https://helpdesk.groupdocs.com/).

{{< /alert >}}