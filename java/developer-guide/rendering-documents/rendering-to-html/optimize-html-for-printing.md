---
id: how-to-optimize-output-html-for-printing
url: viewer/java/how-to-optimize-output-html-for-printing
title: Optimize HTML for printing
weight: 1
description: "This article explains how to optimize output HTML for printing."
keywords: document html print
productName: GroupDocs.Viewer for Java
hideChildren: False
---

If you need to optimize HTML output for printing you should use setForPrinting() option of [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions).
This option implemented for:

* Presentation documents: PPT, PPS, PPTX, PPSX, ODP, FODP, OTP, POT, POTX, POTM, PPTM, PPSM
* Diagram documents: VSD, VSDX, VSS, VST, VSX, VTX, VDW, VDX, VSSX, VSTX, VSDM, VSSM, VSTM
* Meta file formats: WMF, WMZ, EMF, EMZ

```java
    try (Viewer viewer = new Viewer("some-document.doc")) {
        HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources("result.html");
        //HtmlViewOptions options = HtmlViewOptions.forExternalResources("p_{0}.html", "p_{0}_{1}", "p_{0}_{1}");

        options.setForPrinting(true);

        viewer.view(options);
    }
```

If ForPrinting option is enabled output HTML pages will be converted to vector SVG format for better quality for print and page layout.
