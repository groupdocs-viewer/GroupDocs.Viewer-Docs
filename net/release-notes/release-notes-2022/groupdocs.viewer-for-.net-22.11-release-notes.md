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

## Major Changes

There are ??? features, and bug-fixes in this release, most notable are:

### Added support for converting all Excel worksheets to one HTML file

By default, Excel spreadsheets are converted by page breaks. See the following topic for more information: [Split a worksheet into pages](/viewer/net/split-worksheet-into-pages/). With v22.11, you can convert all worksheets to one HTML file by setting the [HtmlViewOptions.RenderToSinglePage](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/rendertosinglepage/) property to `true`.

{{< tabs "example1">}}
{{< tab "C#" >}}
```cs
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

### BinaryFormatter was replaced with XmlSerializer in FileCahe class

{{< alert style="warning" >}}

[BinnaryFormatter](https://learn.microsoft.com/en-us/dotnet/api/system.runtime.serialization.formatters.binary.binaryformatter) is insecure and can't be made secure. Microsoft recommends stopping using it in favor of one of the secure alternatives. See the following topic for more information: [Deserialization risks in use of BinaryFormatter and related types](https://learn.microsoft.com/en-us/dotnet/standard/serialization/binaryformatter-security-guide). 

{{< /alert >}}

The default implementation of [ICache](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.caching/icache/) interface the [FileCache](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.caching/filecache/) class used `BinnaryFormatter` to serialize and deserialize [ViewInfo](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.results/viewinfo/) and derived types. `BinnaryFormatter` was replaced with [XmlSerializer](https://learn.microsoft.com/en-us/dotnet/api/system.xml.serialization.xmlserializer). To support serialization with `XmlSerializer` default parameterless constructors and `set` property accessors added to [FileType](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/filetype/) class and all types in [GroupDocs.Viewer.Results](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.results/) namespace.

### Added support for rendering PDF and EPUB documents to HTML with fluid layout

In this version, we’ve added support for rendering PDF and EPUB documents to HTML with a fluid layout. By default, EPUB and PDF documents are rendered with a fixed layout. See the following topic for more information: [Create HTML with fixed layout](/viewer/net/render-pdf-documents/#create-html-with-fixed-layout). 

When rendering to HTML with a fluid layout HTML document doesn't have a fixed size. To render PDF or EPUB documents to HTML with a fluid layout set [PdfOptions.FixedLayout](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptions/fixedlayout/) property to `false`. 

{{< tabs "example2">}}
{{< tab "C#" >}}
```cs
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

## Full List of Issues Covering all Changes in this Release

| Key | Summary | Category |
| --- | --- | --- |
|VIEWERNET-4124|Convert all Excel worksheets to one HTML file|Feature|
|VIEWERNET-4142|Replace BinnaryFormatter with XmlSerializer in FileCache class|Enhancement|
|VIEWERNET-4141|Support rendering PDF and EPUB documents to HTML with fluid layout|Feature|



