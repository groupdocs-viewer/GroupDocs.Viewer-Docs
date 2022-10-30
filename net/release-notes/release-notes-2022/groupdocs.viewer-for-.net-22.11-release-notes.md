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

**1. Added support for converting all Excel worksheets to one HTML file**

By default, Excel spreadsheets are converted by page breaks. Find out more info in [Split a worksheet into pages](/viewer/net/split-worksheet-into-pages/) article. Starting from v22.11 all worksheets can be converted to one HTML file by setting [HtmlViewOptions.RenderToSinglePage](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/rendertosinglepage/) property to `true`.

{{< tabs "example5">}}
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


## Full List of Issues Covering all Changes in this Release

| Key | Summary | Category |
| --- | --- | --- |
|VIEWERNET-4124|[Convert all Excel worksheets to one HTML file](/viewer/net/render-excel-and-apple-numbers-spreadsheets/#convert-all-excel-worksheets-to-one-html-file)|Feature|


