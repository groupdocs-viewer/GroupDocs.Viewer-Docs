---
id: groupdocs-viewer-for-net-22-11-release-notes
url: viewer/net/groupdocs-viewer-for-net-22-11-release-notes
title: GroupDocs.Viewer for .NET 22.11 Release Notes
weight: 70
description: "Bugs-fixes that are shipped in GroupDocs.Viewer for .NET 22.11"
keywords: release notes, groupdocs.viewer, .net, 22.11
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

There are 15 features and bug fixes in this release.

## Full list of changes in this release

| ID | Summary | Category |
| --- | --- | --- |
|VIEWERNET-4124|[Convert all Excel worksheets to one HTML file](#added-support-for-converting-all-excel-worksheets-to-one-html-file)|Feature|
|VIEWERNET-4142|[Replace BinnaryFormatter with XmlSerializer in FileCache class](#binaryformatter-was-replaced-with-xmlserializer-in-filecache-class)|Enhancement|
|VIEWERNET-4141|[Support rendering PDF and EPUB documents to HTML with fluid layout](#added-support-for-rendering-pdf-and-epub-documents-to-html-with-fluid-layout)|Feature|
|VIEWERNET-3095|[Add Lossless JPEG (JLS) file-format support](#added-support-for-lossless-jpeg-jls-images)|Feature|
|VIEWERNET-2487|"Parameter is not valid" exception when rendering PS file|Fix|
|VIEWERNET-2720|Exception has been thrown by the target of an invocation when rendering PPSX|Fix|
|VIEWERNET-3365|"Bit depth of 8 bits are supported for RGBA images." exception when rendering PNG file|Fix|
|VIEWERNET-3429|"Image export failed." exception when rendering EMZ file|Fix|
|VIEWERNET-3500|"Unable to read beyond the end of the stream." exception when rendering ODS file|Fix|
|VIEWERNET-3718|"Parameter is not valid." exception when rendering WMZ file|Fix|
|VIEWERNET-4095|PDF to HTML: Long execution time|Fix|
|VIEWERNET-4125|The ArchiveOptions.ItemsPerPage property works incorrectly|Fix|
|VIEWERNET-4126|When an archive file is converted to PDF, the output file does not display the path to archive folders|Fix|
|VIEWERNET-4143|UIPath with route parameters read as a string instead of pattern|Fix|
|VIEWERNET-3264|"Could not load file. File is corrupted or damaged." exception when rendering CDR file|Fix|

## Major Features

This release includes three features and one enhancement:

* [Added support for converting all Excel worksheets to one HTML file](#added-support-for-converting-all-excel-worksheets-to-one-html-file)
* [BinaryFormatter was replaced with XmlSerializer in FileCache class](#binaryformatter-was-replaced-with-xmlserializer-in-filecache-class)
* [Added support for rendering PDF and EPUB documents to HTML with fluid layout](#added-support-for-rendering-pdf-and-epub-documents-to-html-with-fluid-layout)
* [Added support for Lossless JPEG (.jls) images](#added-support-for-lossless-jpeg-jls-images)

### Added support for converting all Excel worksheets to one HTML file

By default, Excel spreadsheets are converted by page breaks. See the following topic for more information: [Split a worksheet into pages](/viewer/net/split-worksheet-into-pages/). With v22.11, you can convert all worksheets to one HTML file by setting the [HtmlViewOptions.RenderToSinglePage](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/rendertosinglepage/) property to `true`.

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("Personal_net_worth_calculator.xlsx"))
{
    // Convert the spreadsheet to HTML.
    // {0} is replaced with the current page number in the file names.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    viewOptions.RenderToSinglePage = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Convert all Excel worksheets to one HTML file](/viewer/net/images/rendering-basics/render-spreadsheets/convert-all-excel-worksheets-to-html.png)

### BinaryFormatter was replaced with XmlSerializer in FileCache class

{{< alert style="warning" >}}

[BinnaryFormatter](https://learn.microsoft.com/en-us/dotnet/api/system.runtime.serialization.formatters.binary.binaryformatter) is insecure and can't be made secure. Microsoft recommends stopping using it in favor of one of the secure alternatives. See the following topic for more information: [Deserialization risks in use of BinaryFormatter and related types](https://learn.microsoft.com/en-us/dotnet/standard/serialization/binaryformatter-security-guide). 

{{< /alert >}}

The default implementation of [ICache](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.caching/icache/) interface the [FileCache](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.caching/filecache/) class used `BinnaryFormatter` to serialize and deserialize [ViewInfo](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.results/viewinfo/) and derived types. `BinnaryFormatter` was replaced with [XmlSerializer](https://learn.microsoft.com/en-us/dotnet/api/system.xml.serialization.xmlserializer). To support serialization with `XmlSerializer` default parameterless constructors and `set` property accessors added to [FileType](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/filetype/) class and all types in [GroupDocs.Viewer.Results](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.results/) namespace.

### Added support for rendering PDF and EPUB documents to HTML with fluid layout

In this version, we’ve added support for rendering PDF and EPUB documents to HTML with a fluid layout. By default, EPUB and PDF documents are rendered with a fixed layout. See the following topic for more information: [Create HTML with fixed layout](/viewer/net/render-pdf-documents/#create-html-with-fixed-layout). 

When rendering to HTML with a fluid layout HTML document doesn't have a fixed size. To render PDF or EPUB documents to HTML with a fluid layout set [PdfOptions.FixedLayout](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptions/fixedlayout/) property to `false`. 

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("Letter.pdf"))
{
    // Convert the spreadsheet to HTML.
    // {0} is replaced with the current page number in the file names.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    viewOptions.PdfOptions.FixedLayout = false;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

{{< alert style="info" >}}

When rendering PDF and EPUB documents to HTML with a fluid layout all the graphic content such as images are ignored.

{{< /alert >}}

The following image demonstrates PDF document rendered to HTML with a **fluid** layout:

![Render PDF to HTML with fluid layout](/viewer/net/images/rendering-basics/render-pdf-documents/render-pdf-to-html-with-fluid-layout.png)

### Added support for Lossless JPEG (.jls) images

This image format was developed by Joint Photographic Experts Group as addition to [JPEG](https://docs.fileformat.com/image/jpeg/) format to enabled programs to control level of compression and save images lossless or near-lossless. See the following topic for more information about rendering images: [Render images as HTML, PDF, PNG, and JPEG files](/viewer/net/render-images). This file type can be automatically detected by Viewer. See [Determine the file type](/viewer/net/how-to-determine-file-type) topic for more information.

New `JLS` fileld added to the `FileType` class. For all supported file types see [Supported file formats](/viewer/net/supported-document-formats/).

{{< tabs "example3">}}
{{< tab "C#" >}}
```csharp
/// <summary>
/// JPEG-LS (JLS) (.jls)
/// </summary>
public static readonly FileType JLS = new FileType("JPEG-LS (JLS)", ".jls");
```
{{< /tab >}}
{{< /tabs >}}
