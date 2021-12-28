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

If you need to optimize HTML output for printing you should set `ForPrinting` option of `HtmlViewOptions` object.

This option is supported for:

* Presentation documents: PPT, PPS, PPTX, PPSX, ODP, FODP, OTP, POT, POTX, POTM, PPTM, PPSM
* Diagram documents: VSD, VSDX, VSS, VST, VSX, VTX, VDW, VDX, VSSX, VSTX, VSDM, VSSM, VSTM
* Meta file formats: WMF, WMZ, EMF, EMZ

```csharp
 using (Viewer viewer = new Viewer("some-document.doc"))
 {
      HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("result.html");
      //HtmlViewOptions options = HtmlViewOptions.ForExternalResources("p_{0}.html", "p_{0}_{1}", "p_{0}_{1}");
      
      options.ForPrinting = true;

      viewer.View(options);
 }
```

If `ForPrinting` option is enabled output HTML pages will be converted to vector SVG format for better quality for print and page layout.
