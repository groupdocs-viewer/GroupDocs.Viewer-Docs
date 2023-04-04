---
id: how-to-optimize-output-html-for-printing
url: viewer/java/how-to-optimize-output-html-for-printing
title: Optimize output for printing
weight: 2
description: "This article explains how to optimize output HTML for printing."
keywords: document html print
productName: GroupDocs.Viewer for Java
hideChildren: False
---

To optimize HTML output for printing, use the [setForPrinting()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#setForPrinting-boolean-) method of the [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/) class.

If the `ForPrinting` property is `true`, the output HTML pages are converted to the vector SVG format.

This option is supported for the following format families:

* Presentation documents: PPT, PPS, PPTX, PPSX, ODP, FODP, OTP, POT, POTX, POTM, PPTM, PPSM
* Diagram documents: VSD, VSDX, VSS, VST, VSX, VTX, VDW, VDX, VSSX, VSTX, VSDM, VSSM, VSTM
* Meta file formats: WMF, WMZ, EMF, EMZ

The following code snippet shows how to render a .docx document to HTML optimized for printing:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.docx")) {
    HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources("output.html");
    // HtmlViewOptions options = HtmlViewOptions.forExternalResources("p_{0}.html", "p_{0}_{1}", "p_{0}_{1}");
    // Optimize output for printing.
    options.setForPrinting(true);

    viewer.view(options);
}
```
{{< /tab >}}
{{< /tabs >}}
