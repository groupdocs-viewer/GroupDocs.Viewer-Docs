---
id: logging
url: viewer/net/getting-used-fonts
title: Getting all used fonts in the loaded document
weight: 7
description: "Getting metadata and binary content of all fonts, used in the document, loaded to the GroupDocs.Viewer for .NET"
productName: GroupDocs.Viewer for .NET
hideChildren: true
---
Starting from [version 25.3](https://releases.groupdocs.com/viewer/net/release-notes/2025/groupdocs-viewer-for-net-25-3-release-notes/) the GroupDocs.Viewer is able to collect and return all fonts, which are used inside the document, loaded to the [`Viewer`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class instance. This includes both metadata about every font and its binary content. GroupDocs.Viewer is able to return both fonts, which are embedded inside the document (stored inside it) and the system fonts, which are stored in the system folder and are _used_ in the document content.

Metadata and binary content about one used font is represented by the new class `UsedFontInfo`, that is located in the `GroupDocs.Viewer.Fonts` namespace. This class has the next properties:
- `Name` of a `string` type — a unique name of the font, never is null or empty string.
- `IsEmbedded` boolean flag, indicates whether font is embedded (`true`) or system (`false`).
- `FamilyName` of a `string` type — family name of the given font. The value of this property may be empty, depending on the specific font and a format of the loaded document.
- `Style` of a `string` type — style name of the given font. The value of this property may be empty, depending on the specific font and a format of the loaded document.
- `Content` of the `byte[]` type — a byte array, that contains a full content of the given font. In very rare cases may be null or empty, when the given font is a system font and the runtime is not able to get its content. This usually happens on Linux.
- `Format` enum of `FontFormat` type — indicates a format of the given font. The following formats are currently supported: TrueType font format (TTF), OpenType font format (OTF), TrueType Collection font format (TTC), Embedded OpenType font format (EOT). If the GroupDocs.Viewer cannot grab the binary content of the system font (Content property is null), this property may return the `FontFormat.Unknown` value.

In order to obtain the fonts used in the given document, this document should be loaded to the instance of the [`Viewer`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class using one of its constructors and then the `GetAllFonts()` instance method should be invoked. This method returns a list of all used fonts, where each font is represented as an instance of previously described `UsedFontInfo` class. If a given document does not use any fonts or due to its format it cannot use any fonts (for example, archives or raster images), then the empty list will be returned.

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
        Console.WriteLine("{0} font '{1}' of '{2}' family has {3} bytes and is of '{4}' format",
            font.IsEmbedded ? "Embedded" : "System",
            font.Name,
            font.FamilyName,
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
    Dim allFonts As IReadOnlyList<Fonts.UsedFontInfo> = viewer.GetAllFonts()
    Debug.WriteLine("{0} fonts found in the '{1}' document", allFonts.Count, filename)
    For Each font As Fonts.UsedFontInfo In allFonts
        Debug.WriteLine("{0} font '{1}' of '{2}' family has {3} bytes and is of '{4}' format",
            font.IsEmbedded ? "Embedded" : "System",
            font.Name,
            font.FamilyName,
            font.Content.Length,
            font.Format)
    Next
End Using
```
{{< /tab >}}
{{< /tabs >}}

For the given sample DOCX document there is the next output in console:
```
8 fonts found in the 'SampleDoc1.docx' document
Embedded font 'Sancreek' of 'Auto' family has 47612 bytes and is of 'TrueTypeFont' format
Embedded font 'Trade Winds' of 'Auto' family has 84588 bytes and is of 'TrueTypeFont' format
System font 'Calibri' of 'Swiss' family has 1648120 bytes and is of 'TrueTypeFont' format
System font 'Cambria' of 'Roman' family has 1792664 bytes and is of 'TrueTypeCollection' format
System font 'Arial' of 'Swiss' family has 1036584 bytes and is of 'TrueTypeFont' format
System font 'Cambria Math' of 'Roman' family has 1792664 bytes and is of 'TrueTypeCollection' format
System font 'Courier New' of 'Modern' family has 806504 bytes and is of 'TrueTypeFont' format
System font 'MS Gothic' of 'Modern' family has 8990160 bytes and is of 'TrueTypeCollection' format
```