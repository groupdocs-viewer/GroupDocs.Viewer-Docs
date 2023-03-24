---
id: html-viewer-exclude-fonts
url: viewer/java/exclude-fonts
title: Exclude fonts
weight: 3
description: "Learn how to exclude system pre-installed fonts from HTML markup to reduce rendered document size when rendering documents using GroupDocs.Viewer for Java."
productName: GroupDocs.Viewer for Java
hideChildren: False
---
By default, GroupDocs.Viewer embeds the fonts used in the document into HTML. This ensures correct display regardless of the required fonts existing on the viewer device. Depending on the type of HTML rendering, fonts are added as follows:

* Embedded resources - inline 64-coded fonts
* External resources - external files
  
A list of file types that support font embedding is [at the end of the page](#list-of-format-families-that-support-adding-fonts-to-HTML).

Embedding fonts increase the size of the rendered result. To prevent adding fonts that are available on most devices to HTML, add the font names to the [getFontsToExclude](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#getFontsToExclude--) collection of the [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/) class.

The following code snippet shows how to prevent adding the **Times New Roman** font to HTML.

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("sample.docx")) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    viewOptions.getFontsToExclude().add("Times New Roman");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## List of format families that support adding fonts to HTML

The following source file formats support adding fonts to HTML:

| Format Name | Extension |
| --- | --- |
| Portable Document Format | PDF |
| Microsoft Word | DOC, DOCX, DOCM, DOT, DOTX, DOTM |
| Microsoft Outlook | MSG, EML |
| Apple Mail | EMLX |
| OpenDocument Formats | ODT, OTT |
| Rich Text Format | RTF |
| Electronic publication | EPUB |
| Mobipocket e-book format | MOBI |
| LaTeX | TEX |
| Microsoft PowerPoint | PPT, PPTX, PPS, PPSX |
| OpenDocument Formats | ODP |
| Image files | SVG  |
