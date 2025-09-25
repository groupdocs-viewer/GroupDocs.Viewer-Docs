---
id: getting-used-fonts
url: viewer/java/getting-used-fonts
title: Getting all used fonts in the loaded document
weight: 7
description: "Getting metadata and binary content of all fonts, used in the document, loaded to the GroupDocs.Viewer for Java"
productName: GroupDocs.Viewer for Java
hideChildren: true
---
Starting from [version 25.9](https://releases.groupdocs.com/viewer/java/release-notes/2025/groupdocs-viewer-for-java-25-9-release-notes/) the GroupDocs.Viewer is able to collect and return all fonts, which are used inside the document, loaded to the [`Viewer`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) class instance. This includes both metadata about every font and its binary content. GroupDocs.Viewer is able to return both fonts, which are embedded inside the document (stored inside the document file) and the system fonts, which are stored in the system folder and are _used_ in the document content.

Metadata and binary content about one used font is represented by the new struct [`UsedFontInfo`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/usedfontinfo/), that is located in the [`com.groupdocs.viewer.fonts`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/) namespace. This struct has the next properties:

- [`getName`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/usedfontinfo/#getName--) of a [`java.lang.String`](https://docs.oracle.com/javase/8/docs/api/java/lang/String.html) type — a unique name of the font family (without name of the font style), never is null or empty string.
- [`isEmbedded`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/usedfontinfo/#isEmbedded--) [boolean](https://docs.oracle.com/javase/8/docs/api/java/lang/Boolean.html) flag, indicates whether font is embedded inside the document content (`true`) or is a system font (`false`). Need to mention that the documents of the Spreadsheet format family (like XLS, XLSX etc) cannot hold embedded fonts, so for them this property always returns `false`.
- [`getStyle`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/usedfontinfo/#getStyle--) of a [`FontStyles`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/fontstyles/) enum — style name of the given font. May be one of 4 values: `Regular` (default), `Bold`, `Italic`, and `BoldItalic`. Need to mention that PDF documents use only the fonts with a `Regular` style.
- [`getContent`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/usedfontinfo/#getContent--) of the `byte[]` type — a byte array, that contains a full content of the given font. In very rare cases may be null or empty, when the given font is a system font and the runtime is not able to get its content. This usually happens on Linux.
- [`getFormat`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/usedfontinfo/#getFormat--) enum of [`FontFormat`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/fontformat/) type — indicates a format of the given font. The following formats are currently supported: TrueType font format (TTF), OpenType font format (OTF), TrueType Collection font format (TTC), Embedded OpenType font format (EOT). If the GroupDocs.Viewer cannot grab the binary content of the system font (Content property is null), this property may return the `FontFormat.Unknown` value.
- [`getCharset`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/usedfontinfo/#getCharset--) of [`int`](https://docs.oracle.com/javase/8/docs/api/java/lang/Integer.html) type — represents a character set of this font. Returns valid number only for the WordProcessing and Spreadsheet format families, for all other formats returns `0` (zero).

In order to obtain the fonts used in the given document, this document should be loaded to the instance of the [`Viewer`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) class using one of its constructors and then the [`getAllFonts()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#getAllFonts-) instance method should be invoked. This method returns a list of all used fonts, where each font is represented as an instance of previously described [`UsedFontInfo`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/usedfontinfo/) struct. If a given document does not use any fonts or due to its format it cannot use any fonts (for example, archives or raster images), then the empty list will be returned.

## Example

Example below shows loading the sample DOCX document to the [`Viewer`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) class, and then returning and printing all fonts used within it.

{{< tabs "Loading">}}
{{< tab "GetAllFonts.java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.fonts.FontFormat;
import com.groupdocs.viewer.fonts.FontStyles;
import com.groupdocs.viewer.fonts.UsedFontInfo;

public class GetAllFonts {
    public static void run() {
        try (Viewer viewer = new Viewer("sample.docx")) {
            List<UsedFontInfo> list = viewer.getAllFonts();
            for (UsedFontInfo font : list) {
                System.out.printf(
                        "%s font '%s' of '%s' style has %d bytes and is of '%s' format%n",
                        font.isEmbedded() ? "Embedded" : "System",
                        font.getName(),
                        FontStyles.toString(font.getStyle()),
                        font.getContent().length,
                        FontFormat.toString(font.getFormat())
                );
            }
        } catch (Exception e){
            throw new RuntimeException(e);
        }
        System.out.println("\nSuccessfully extracted all fonts.");
    }

    public static void main(String[] args){
        run();
    }
}
```
{{< /tab >}}
{{< tab "Expected output" >}}  
```yaml
System font 'Arial' of 'Regular' style has 1045960 bytes and is of 'TrueType (TTF)' format
System font 'Calibri' of 'Italic' style has 1228564 bytes and is of 'TrueType (TTF)' format
System font 'Cambria Math' of 'Regular' style has 1792664 bytes and is of 'TrueType Collection (TTC)' format
System font 'MS Gothic' of 'Regular' style has 8990160 bytes and is of 'TrueType Collection (TTC)' format
System font 'Calibri' of 'Bold' style has 1647428 bytes and is of 'TrueType (TTF)' format
System font 'Cambria' of 'Bold' style has 841440 bytes and is of 'TrueType (TTF)' format
System font 'Calibri' of 'Regular' style has 1681220 bytes and is of 'TrueType (TTF)' format
System font 'Courier New' of 'Regular' style has 806504 bytes and is of 'TrueType (TTF)' format
```
{{< /tab >}}
{{< tab "sample.docx" >}}  
{{< tab-text >}}
`sample.docx` is sample file used in this example. Click [here](/viewer/java/sample-files/developer-guide/search-highlight-text/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Additional notes

After explaining the public API need to describe the next three important principles regarding the fonts:

1. GroupDocs.Viewer is able to extract and return fonts only from those document formats, which _may_ _have_ fonts. For example, the PDF, DOCX, XLSX, PPTX, document formats support and use fonts for representing their content, so GroupDocs.Viewer can find and return these fonts. However, such document formats like plain text (TXT), raster images (like PNG and JPEG), archives and so on do not support fonts. In case when such document will be loaded to the GroupDocs.Viewer and user will try to get the list of fonts, the empty list will be returned.
2. Need to distinguish font family and font style. For example, some DOCX document may use the "Arial" font family for both the regular text, bold, italic, and bold italic. In case of such a document the GroupDocs.Viewer will return 4 instances of the [`UsedFontInfo`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/usedfontinfo/) all of them have the "Arial" name, but different [styles](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/fontstyles/) ("Arial Regular", "Arial Bold", "Arial Italic", "Arial BoldItalic"), and each of them will have different binary content.
3. In some cases GroupDocs.Viewer may return an empty list of fonts even for those document, which actually has and uses fonts. This happens in case when a document, usually a WordProcessing document like DOC/DOCX/DOCM, was created on the author's machine and uses _only_ the unique fonts, which are not preinstalled on the operating system, but were manually installed on those author's machine. Then this document was transferred to the target machine, where the GroupDocs.Viewer is running and tries to extract and return fonts. But the problem is that those original unique fonts are absent on the target machine. As a result, the GroupDocs.Viewer "knows" which fonts are used in the loaded document, but it cannot find their content, so it omits such fonts without content.
