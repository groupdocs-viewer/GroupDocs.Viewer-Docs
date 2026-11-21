---
id: getting-used-fonts
url: viewer/net/getting-used-fonts
title: Getting all used fonts in the loaded document
weight: 7
description: "Getting metadata and binary content of all fonts, used in the document, loaded to the GroupDocs.Viewer for .NET"
productName: GroupDocs.Viewer for .NET
hideChildren: true
toc: True
---

GroupDocs.Viewer has a feature to collect and return all fonts, which are used inside the document, loaded to the [`Viewer`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class instance. These fonts are returned as an array, where each item represents a single font with its metadata and binary content. GroupDocs.Viewer is able to return both fonts, which are embedded inside the document (stored inside the document file) and the system fonts, which are stored in the system folder of the operating system and are _used_ in the document content. Need to mention that documents of some formats may contain fonts, which are referenced or even stored inside the document, but are not applied to the text inside the document; the GroupDocs.Viewer tries to detect and exclude such fonts from the returned list.

## Which documents have fonts

GroupDocs.Viewer returns fonts only from the document formats that _can_ have fonts. For example, the PDF, DOCX, XLSX, PPTX, and other similar document formats support and use fonts for representing their textual content, so GroupDocs.Viewer can find and return these fonts. However, such document formats like plain text (TXT), raster images (like PNG and JPEG), archives and so on do not support fonts. For such documents, the list of fonts is an empty array.

## Get the fonts of a document

To get the fonts of a document, load it to an instance of the [`Viewer`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class using one of its constructors. Then call the [`GetAllFonts()`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/getallfonts/) method. It returns a list of all used fonts as an array of `IFontInfo[]` type, where `IFontInfo` is an interface that describes one font with its metadata and binary content. If the document uses no fonts, or its format cannot have fonts, the array is empty.

Short code sample below demonstrates loading a DOCX document to the [`Viewer`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class, getting a list of all used fonts, and then iterating over this list and displaying info about each font within it.

{{< tabs "get-used-fonts">}}
{{< tab "C#" >}}
```csharp
using System;
using System.IO;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Fonts;
// ...

const string filename = "sample.docx";
string inputPath = Path.GetFullPath(filename);

using (Viewer viewer = new Viewer(inputPath))
{
    IFontInfo[] allFonts = viewer.GetAllFonts();
    Console.WriteLine("{0} fonts found in the '{1}' document", allFonts.Length, filename);
    foreach (IFontInfo font in allFonts)
    {
        Console.WriteLine("Font '{0}' of {1} style has {2} bytes and is of {3} format",
            font.FamilyName,
            font.Style,
            font.Content.Length,
            font.Format);
    }
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports System
Imports System.IO
Imports GroupDocs.Viewer
' ...

Const filename As String = "sample.docx"
Dim inputPath As String = Path.GetFullPath(filename)

Using viewer As New Viewer(inputPath)
    Dim allFonts As Fonts.IFontInfo() = viewer.GetAllFonts()
    Console.WriteLine("{0} fonts found in the '{1}' document", allFonts.Count, filename)
    For Each font As Fonts.IFontInfo In allFonts
        Console.WriteLine("Font '{0}' of {1} style has {2} bytes and is of {3} format",
            font.FamilyName,
            font.Style,
            font.Content.Length,
            font.Format)
    Next
End Using
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/getting-used-fonts/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "get-used-fonts.txt" >}}  
```text
6 fonts found in the 'sample.docx' document
Font 'Arial' of Regular style has 1045956 bytes and is of TrueType format
Font 'Georgia' of Bold style has 207476 bytes and is of TrueType format
Font 'Georgia' of Regular style has 219712 bytes and is of TrueType format
Font 'Georgia' of Italic style has 208444 bytes and is of TrueType format
Font 'Arial' of Bold style has 990008 bytes and is of TrueType format
Font 'Georgia' of BoldItalic style has 211780 bytes and is of TrueType format
```
[Download full output](/viewer/net/_output_files/developer-guide/getting-used-fonts/GetUsedFonts/get-used-fonts.txt)
{{< /tab >}}
{{< /tabs >}}

## Font info types

GroupDocs.Viewer supports extracting fonts from 4 main formats family: PDF, WordProcessing, Spreadsheet, and Presentation, and each of them have a slightly different concept of the fonts. For example, font content may be embedded inside the PDF, WordProcessing, and Presentation document, but not in the Spreadsheet. WordProcessing and Spreadsheet fonts provide a number, that represents a character set, but PDF and Presentation — don't. WordProcessing fonts may have an alternative font names. Also font substitution exists only for the WordProcessing documents. As a result, each formats family has its own font-related type:

1. WordProcessing — `WordProcessingFontInfo` and `WordProcessingSubstitutedFontInfo`.
2. Spreadsheet — `SpreadsheetFontInfo`.
3. Presentation — `PresentationFontInfo`.
4. PDF — `PdfFontInfo`.

### Common properties

The `IFontInfo` interface declares the properties that every font type has:

- [`FamilyName`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/IFontInfo/FamilyName/) of a [`System.String`](https://learn.microsoft.com/en-us/dotnet/api/system.string) type — a unique name of the font family (without name of the font style), never is null or empty string.
- [`Style`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/IFontInfo/style/) of a [`FontStyles`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/fontstyles/) type — style of the given font. May be one of 4 values: `Regular` (default), `Bold`, `Italic`, and `BoldItalic`. [`FontStyles`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/fontstyles/) struct represent all possible font styles and provides a convenient properties for working with them.
- [`Content`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/IFontInfo/content/) of a `byte[]` type — a byte array, that contains a full content of the given font. In very rare cases may be `null`, when the given font is a system font and the runtime is not able to get its content. This usually happens on Linux.
- [`Format`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/IFontInfo/format/) of [`FontFormat`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/fontformat/) enum — indicates a format of the given font. The following formats are currently supported: TrueType font format (TTF), OpenType font format (OTF), TrueType Collection font format (TTC), Embedded OpenType font format (EOT). If the GroupDocs.Viewer cannot grab the binary content of the system font (`Content` property is `null`), this property may return the `FontFormat.Unknown` value.

### Font family and style

Each style of a font family is a separate font. For example, some DOCX document may use the "Arial" font family for both the regular text, bold, italic, and bold italic. In case of such a document the GroupDocs.Viewer will return 4 instances of the [`WordProcessingFontInfo`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/WordProcessingFontInfo/); all of them have the "Arial" family name, but different [styles](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/fontstyles/) ("Arial Regular", "Arial Bold", "Arial Italic", "Arial BoldItalic"), and each of them will have different binary content.

## Substituted fonts

There is a quite often scenario, which is applicable only for the WordProcessing formats family, when a document like DOC/DOCX/DOCM was created on the author's machine and uses some _unique_ fonts, which are not preinstalled on the operating system by default, but were manually installed on those author's machine. Then this document was transferred to the target machine, where the GroupDocs.Viewer is running and tries to extract and return fonts. But the problem is that those original unique fonts are absent on the target machine, and GroupDocs.Viewer cannot get their content.

In such case the GroupDocs.Viewer mimics the Microsoft Word behavior and initiates the **font substitution mechanism**. This is actually an algorithm, that replaces the missing fonts onto those, which are accessible on the target machine and are supposed to be the most similar to the missing ones. Such fonts, which are not used in the original document, but are selected to replace the missing fonts, are called **substituted**. GroupDocs.Viewer provides a special type for them — a `WordProcessingSubstitutedFontInfo` struct. This type contains a family name and style of the original font, that is missing on the target machine, and a name, format, and binary content of the substituted font, that is present and used instead it.

## Timeline

Initially the font extraction feature was introduced in the [version 25.3](https://releases.groupdocs.com/viewer/net/release-notes/2025/groupdocs-viewer-for-net-25-3-release-notes/) — there was a single universal type `UsedFontInfo` for representing any font info.

In the [version 25.6](https://releases.groupdocs.com/viewer/net/release-notes/2025/groupdocs-viewer-for-net-25-6-release-notes/) the font extraction was improved, especially for the WordProcessing formats family, and the public API was slightly changed (new properties were added to the `UsedFontInfo` type).

In the [version 25.9](https://releases.groupdocs.com/viewer/net/release-notes/2025/groupdocs-viewer-for-net-25-9-release-notes/) the font extraction was significantly reworked and improved by supporting the substituted fonts for the WordProcessing formats family. Public API was also significantly changed — now every formats family has its own font info type, that implements the `IFontInfo` interface.