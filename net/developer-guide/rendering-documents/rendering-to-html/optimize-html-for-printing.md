---
id: how-to-optimize-output-html-for-printing
url: viewer/net/how-to-optimize-output-html-for-printing
title: Optimize output for printing
weight: 2
description: "This article explains how to optimize output HTML for printing."
keywords: document html print
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

To optimize HTML output for printing, use the [ForPrinting](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions/properties/forprinting) boolean property of the [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) class.

If the [ForPrinting](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions/properties/forprinting) option is enabled, the output HTML pages are converted to the vector SVG format.

This option is supported for the following format families:

* Presentation documents: PPT, PPS, PPTX, PPSX, ODP, FODP, OTP, POT, POTX, POTM, PPTM, PPSM
* Diagram documents: VSD, VSDX, VSS, VST, VSX, VTX, VDW, VDX, VSSX, VSTX, VSDM, VSSM, VSTM
* Meta file formats: WMF, WMZ, EMF, EMZ

The following code snippet shows how to render a .docx document to HTML optimized for printing:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
 using (Viewer viewer = new Viewer("sample.docx"))
{
    // Create an HTML file.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources();
    // Render a file optimized for printing.
    viewOptions.ForPrinting = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
