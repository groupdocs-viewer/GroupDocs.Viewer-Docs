---
id: html-viewer-exclude-fonts
url: viewer/net/exclude-fonts
title: Exclude fonts
weight: 3
description: "Learn how to exclude system pre-installed fonts from HTML markup to reduce rendered document size when rendering documents using GroupDocs.Viewer for .NET."
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
By default, GroupDocs.Viewer includes (exports) the fonts used in the loaded document into the produced HTML. This ensures correct display regardless of the required fonts existing on the viewer device. Depending on the type of HTML rendering, fonts are included as follows:

1. Embedded resources — font content is _embedded_ (inlined, backed) directly inside the HTML-markup using the [data URI scheme](https://en.wikipedia.org/wiki/Data_URI_scheme) through [base64](https://en.wikipedia.org/wiki/Base64) encoding.
2. External resources — font content is stored aside from the HTML document, externally; each font may be stored as a distinct file on the disk or its content may be written to the byte stream, specified by the user through a [`CreateResourceStream`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.interfaces/createresourcestream/) delegate.

## Formats with exported fonts

GroupDocs.Viewer supports a [lot of document formats](https://docs.groupdocs.com/viewer/net/supported-document-formats/), and not for all of them it is possible to export the fonts to the resultant produced HTML. A list of file formats that support font export when rendering them to HTML format is provided in the list below:

1. Portable Document Format (PDF)
2. Microsoft Word formats (DOC, DOCX, DOCM, DOT, DOTX, DOTM)
3. Microsoft PowerPoint formats (PPT, PPTX, PPS, PPSX)
4. Microsoft Outlook formats (MSG, EML)
5. Apple Mail (EMLX)
6. OpenDocument formats (ODT, OTT, ODP)
7. Rich Text Format (RTF)
8. e-Books formats (Electronic publication (EPUB), Mobipocket (MOBI), AZW3)
9. LaTeX (TEX)
10. Vector images (SVG)

## Why exclude fonts

Sometimes including fonts to the produced HTML document is unwanted: for example, the user may have all the fonts installed on the operating system, where the HTML document should be viewed, and browser can use system-installed fonts. Also when fonts are included, they significantly increase the size of the produced HTML document. To prevent adding fonts that are available on most devices to produced HTML, the GroupDocs.Viewer provides two options: **exclude all fonts** (complete fonts exclusion) and **exclude specified fonts only** (selective fonts exclusion).

Both these options are represented in the [`HtmlViewOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/) class as different properties:

- [`ExcludeFonts`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/excludefonts/) is a flag that disables export of **all** used fonts to the produced HTML document, when enabled (`true`). By default this option is disabled (`false`).
- [`FontsToExclude`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/fontstoexclude/) is a list of `string`, each one represents one font name, that should be excluded from the produced HTML document. By default this list is empty — no fonts are excluded. Please note that this option works only if the `ExcludeFonts` property is disabled (`false`).

## Exclude all fonts

The following code snippet shows how to exclude all fonts from the produced HTML document with the `ExcludeFonts` flag.

{{< tabs "exclude-all-fonts">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (Viewer viewer = new Viewer("sample.docx"))
{
    // Create an HTML file.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("exclude-all-fonts_{0}.html");    
    viewOptions.ExcludeFonts = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer As Viewer = New Viewer("sample.docx")
            ' Create an HTML file.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("exclude-all-fonts_{0}.html")            
            viewOptions.ExcludeFonts = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/rendering-to-html/exclude-fonts/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "exclude-all-fonts.zip" >}}  
```text
p_1.html (176 KB)
p_2.html (10 KB)
p_3.html (61 KB)
p_4.html (842 KB)
p_5.html (15 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/rendering-documents/rendering-to-html/exclude-fonts/ExcludeAllFonts/exclude-all-fonts.zip)
{{< /tab >}}
{{< /tabs >}}

## Exclude specific fonts

The following code snippet demonstrates the work of the [`FontsToExclude`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/fontstoexclude/) property — it shows how to prevent adding the **Times New Roman** and **Arial** fonts to HTML.

{{< tabs "exclude-specific-fonts">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (Viewer viewer = new Viewer("sample.pptx"))
{
    // Create an HTML file.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("exclude-specific-fonts_{0}.html");    
    viewOptions.FontsToExclude.Add("Times New Roman");// Exclude the Times New Roman font.
    viewOptions.FontsToExclude.Add("Arial");// Exclude the Arial font.
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer As Viewer = New Viewer("sample.pptx")
            ' Create an HTML file.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("exclude-specific-fonts_{0}.html")            
            viewOptions.FontsToExclude.Add("Times New Roman")' Exclude the Times New Roman font.
            viewOptions.FontsToExclude.Add("Arial")' Exclude the Arial font.
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pptx" >}}
{{< tab-text >}}
`sample.pptx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/rendering-to-html/exclude-fonts/sample.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "exclude-specific-fonts.zip" >}}  
```text
p_1.html (57 KB)
p_2.html (5 KB)
p_3.html (18 KB)
p_4.html (17 KB)
p_5.html (8 KB)
p_6.html (6 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/rendering-documents/rendering-to-html/exclude-fonts/ExcludeSpecificFonts/exclude-specific-fonts.zip)
{{< /tab >}}
{{< /tabs >}}

## Supported formats for exclusion

Not all the formats listed above support both kinds of font exclusion. The lists below show which formats support each.

### All fonts (`ExcludeFonts`)

1. All Microsoft Word formats (DOC, DOCX, DOCM, ...)
2. All PowerPoint presentation formats (PPT, PPTX, PPTM, PPS, PPSX, PPSM, POT, POX, POTM)
3. All OpenDocument presentation formats (ODP, FODP, OTP)
4. PDF
5. OFD (OpenFixed-layout Document)
6. XPS (including OpenXPS)
7. PostScript (including Encapsulated PostScript)
8. ePuB
9. TeX
10. PCL
11. CGM
12. Microsoft Project documents (MPT, MPP, MPX)
13. All supported archives
14. Microsoft OneNote ONE format
15. Vector images with font support (SVG)
16. All supported email formats

### Specific fonts (`FontsToExclude`)

1. All PowerPoint presentation formats (PPT, PPTX, PPTM, PPS, PPSX, PPSM, POT, POX, POTM)
2. All OpenDocument presentation formats (ODP, FODP, OTP)
3. PDF
4. OFD (OpenFixed-layout Document)
5. XPS (including OpenXPS)
6. PostScript (including Encapsulated PostScript)
7. ePuB
8. TeX
9. PCL
10. CGM