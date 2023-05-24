---
id: groupdocs-viewer-for-net-23-5-release-notes
url: viewer/net/groupdocs-viewer-for-net-23-5-release-notes
title: GroupDocs.Viewer for .NET 23.5 Release Notes
weight: 100
description: "Bugs-fixes and features that are shipped in GroupDocs.Viewer for .NET 23.5"
keywords: release notes, groupdocs.viewer, .net, 23.5
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

There are ?? features and bug fixes in this release.

## Full list of changes in this release

| Key | Category | Summary |
| --- | --- | --- |
|VIEWERNET&#8209;4330|Feature|[Support PDF file optimizations](#support-pdf-file-optimizations)|

## Major Features

This release includes three features:

* [Support PDF file optimizations](#support-pdf-file-optimizations)

### Support PDF file optimizations 

PDF file now can be optimized for web browser usage or to reduce resources size with various optimization options.
It also can be applied to converted output pdf file from all supported input formats [Supported document formats](/viewer/net/supported-document-formats/).

To see all supported optimization options follow [Supported PDF file optimization options](/viewer/net/optimization-pdf-options/)

Optimization for web browser

{{< tabs "Use optimization PDF file for web">}}
{{< tab "Use optimization for web" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizer = new OptimizePdfForWeb();
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

Optimization resources

{{< tabs "Use optimization PDF file resources">}}
{{< tab "Use optimization resources" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizer = new OptimizePdfResources();
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}