---
id: groupdocs-viewer-for-net-23-5-release-notes
url: viewer/net/groupdocs-viewer-for-net-23-5-release-notes
title: GroupDocs.Viewer for .NET 23.5 Release Notes
weight: 90
description: "Bugs-fixes and features that are shipped in GroupDocs.Viewer for .NET 23.5"
keywords: release notes, groupdocs.viewer, .net, 23.5
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

There are 1 feature in this release.

## Full list of changes in this release

| Key | Category | Summary |
| --- | --- | --- |
|VIEWERNET&#8209;4330|Feature|[Support PDF file optimizations](https://issue.saltov.dynabic.com/issues/VIEWERNET-4330)|

## Major Features

This release includes the following feature:

* [Support PDF file optimizations](#support-pdf-file-optimizations)

### Support PDF file optimizations 

This feature allows you to optimize the output PDF file for a web browser or to reduce the file size using various options.

You can also optimize an existing PDF file. To do this, open it and save the resulting file, specifying the optimization parameters.

For details, see [Supported PDF file optimization options](/viewer/net/optimization-pdf-options/).

The following code snippet shows how to optimize the PDF resources using the default settings:

{{< tabs "Example2">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizationOptions = new PdfOptimizationOptions();
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}