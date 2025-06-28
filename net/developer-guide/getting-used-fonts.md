---
id: getting-used-fonts
url: viewer/net/getting-used-fonts
title: Getting all used fonts in the loaded document
weight: 7
description: "Getting metadata and binary content of all fonts, used in the document, loaded to the GroupDocs.Viewer for .NET"
productName: GroupDocs.Viewer for .NET
hideChildren: true
---
Starting from [version 25.3](https://releases.groupdocs.com/viewer/net/release-notes/2025/groupdocs-viewer-for-net-25-3-release-notes/) the GroupDocs.Viewer is able to collect and return all fonts, which are used inside the document, loaded to the [`Viewer`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class instance. This includes both metadata about every font and its binary content. GroupDocs.Viewer is able to return both fonts, which are embedded inside the document (stored inside the document file) and the system fonts, which are stored in the system folder and are _used_ in the document content.

In the [version 25.6](https://releases.groupdocs.com/viewer/net/release-notes/2025/groupdocs-viewer-for-net-25-6-release-notes/) the font extraction was improved and the public API was slightly changed.

Metadata and binary content about one used font is represented by the new struct [`UsedFontInfo`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/usedfontinfo/), that is located in the [`GroupDocs.Viewer.Fonts`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/) namespace. This struct has the next properties:

- [`Name`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/usedfontinfo/name/) of a [`System.String`](https://learn.microsoft.com/en-us/dotnet/api/system.string) type — a unique name of the font family (without name of the font style), never is null or empty string.
- [`IsEmbedded`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/usedfontinfo/isembedded/) [boolean](https://learn.microsoft.com/en-us/dotnet/api/system.boolean) flag, indicates whether font is embedded inside the document content (`true`) or is a system font (`false`). Need to mention that the documents of the Spreadsheet format family (like XLS, XLSX etc) cannot hold embedded fonts, so for them this property always returns `false`.
- [`Style`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/usedfontinfo/style/) of a [`FontStyles`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/fontstyles/) enum — style name of the given font. May be one of 4 values: `Regular` (default), `Bold`, `Italic`, and `BoldItalic`. Need to mention that PDF documents use only the fonts with a `Regular` style.
- [`Content`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/usedfontinfo/content/) of the `byte[]` type — a byte array, that contains a full content of the given font. In very rare cases may be null or empty, when the given font is a system font and the runtime is not able to get its content. This usually happens on Linux.
- [`Format`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/usedfontinfo/format/) enum of [`FontFormat`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/fontformat/) type — indicates a format of the given font. The following formats are currently supported: TrueType font format (TTF), OpenType font format (OTF), TrueType Collection font format (TTC), Embedded OpenType font format (EOT). If the GroupDocs.Viewer cannot grab the binary content of the system font (Content property is null), this property may return the `FontFormat.Unknown` value.
- [`Charset`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/usedfontinfo/charset/) of [`System.Int32`](https://learn.microsoft.com/en-us/dotnet/api/system.int32) type — represents a character set of this font. Returns valid number only for the WordProcessing and Spreadsheet format families, for all other formats returns `0` (zero).

In order to obtain the fonts used in the given document, this document should be loaded to the instance of the [`Viewer`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class using one of its constructors and then the [`GetAllFonts()`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/getallfonts/) instance method should be invoked. This method returns a list of all used fonts, where each font is represented as an instance of previously described [`UsedFontInfo`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/usedfontinfo/) struct. If a given document does not use any fonts or due to its format it cannot use any fonts (for example, archives or raster images), then the empty list will be returned.

## Example

Example below shows loading the sample DOCX document to the [`Viewer`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class, and then returning and printing all fonts used within it.

{{< tabs "Loading">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
// ...

const string filename = "sample.docx";
string inputPath = "\full\path\" + filename;

using (Viewer viewer = new Viewer(inputPath))
{
    IReadOnlyList<Fonts.UsedFontInfo> allFonts = viewer.GetAllFonts();
    Console.WriteLine("{0} fonts found in the '{1}' document", allFonts.Count, filename);
    foreach (Fonts.UsedFontInfo font in allFonts)
    {
        Console.WriteLine("{0} font '{1}' of '{2}' style has {3} bytes and is of '{4}' format",
            font.IsEmbedded ? "Embedded" : "System",
            font.Name,
            font.Style,
            font.Content.Length,
            font.Format);
    }
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
' ...

Const filename As String = "sample.docx"
Dim inputPath As String = "\full\path\" & filename

Using viewer As New Viewer(inputPath)
    Dim allFonts As IReadOnlyList(Of Fonts.UsedFontInfo) = viewer.GetAllFonts()
    Console.WriteLine("{0} fonts found in the '{1}' document", allFonts.Count, filename)
    For Each font As Fonts.UsedFontInfo In allFonts
        Console.WriteLine("{0} font '{1}' of '{2}' style has {3} bytes and is of '{4}' format",
            If(font.IsEmbedded, "Embedded", "System"),
            font.Name,
            font.Style,
            font.Content.Length,
            font.Format)
    Next
End Using
```
{{< /tab >}}
{{< /tabs >}}

For the given sample DOCX document there is the next output in console:

```
3 fonts found in the 'sample.docx' document
Embedded font 'Sancreek' of 'Regular' style has 47612 bytes and is of 'OpenType' format
Embedded font 'Trade Winds' of 'Regular' style has 84588 bytes and is of 'OpenType' format
System font 'Arial' of 'Regular' style has 1036584 bytes and is of 'TrueType' format
```

## Additional notes

After explaining the public API need to describe the next three important principles regarding the fonts:

1. GroupDocs.Viewer is able to extract and return fonts only from those document formats, which _may_ _have_ fonts. For example, the PDF, DOCX, XLSX, PPTX, document formats support and use fonts for representing their content, so GroupDocs.Viewer can find and return these fonts. However, such document formats like plain text (TXT), raster images (like PNG and JPEG), archives and so on do not support fonts. In case when such document will be loaded to the GroupDocs.Viewer and user will try to get the list of fonts, the empty list will be returned.
2. Need to distinguish font family and font style. For example, some DOCX document may use the "Arial" font family for both the regular text, bold, italic, and bold italic. In case of such a document the GroupDocs.Viewer will return 4 instances of the [`UsedFontInfo`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/usedfontinfo/); all of them have the "Arial" name, but different [styles](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/fontstyles/) ("Arial Regular", "Arial Bold", "Arial Italic", "Arial BoldItalic"), and each of them will have different binary content.
3. In some cases GroupDocs.Viewer may return an empty list of fonts even for those document, which actually has and uses fonts. This happens in case when a document, usually a WordProcessing document like DOC/DOCX/DOCM, was created on the author's machine and uses _only_ the unique fonts, which are not preinstalled on the operating system, but were manually installed on those author's machine. Then this document was transferred to the target machine, where the GroupDocs.Viewer is running and tries to extract and return fonts. But the problem is that those original unique fonts are absent on the target machine. As a result, the GroupDocs.Viewer "knows" which fonts are used in the loaded document, but it cannot find their content, so it omits such fonts without content.
