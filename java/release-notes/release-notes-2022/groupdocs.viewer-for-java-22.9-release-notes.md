---
id: groupdocs-viewer-for-java-22-9-release-notes
url: viewer/java/groupdocs-viewer-for-java-22-9-release-notes
title: GroupDocs.Viewer for Java 22.9 Release Notes
weight: 3
description: "Features, improvements, and bugs-fixes that are shipped in GroupDocs.Viewer for Java 22.9"
keywords: release notes, groupdocs.viewer, java, 22.9
productName: GroupDocs.Viewer for Java
hideChildren: False
---
{{< alert style="info" >}}This page contains release notes for GroupDocs.Viewer for Java 22.9{{< /alert >}}

## Major Features

There are lots of features, improvements, and bug-fixes in this release, most notable are:

* Improved rendering Spreadsheet files
* Render Text files to responsive HTML
* Fixed exception when invalid or expired license provided
* [Separator detection for CSV/TSV files]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-excel-spreadsheets/render-excel-and-apple-numbers-spreadsheets.md">}})
* [Add TAR GZipped (TGZ) file-format support]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-archive-files/how-to-convert-and-view-tgz-files.md">}})
* [Add TAR XZipped (TXZ) file-format support]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-archive-files/how-to-convert-and-view-txz-files.md">}})
* [Add XZipped (XZ) file-format support]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-archive-files/how-to-convert-and-view-xz-files.md">}})
* [Add 7-Zip Compressed File (.7z) file-format support]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-archive-files/how-to-convert-and-view-7z-files.md">}})
* Add syntax highlight to programming language formats
* Add Power shell script (.PS1) file-format support
* Add Power shell script module (.PSM1) file-format support
* Add Power shell script module manifest (.PSD1) file-format support
* [Convert PSD with custom fonts]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-image-files/how-to-convert-and-view-psd-with-custom-fonts.md">}})
* Preserve original image format when converting JPEG to HTML with embedded resources
* Open files with HTML table inside as XLS files
* Render all archive folders content for multi-page archives

## Full List of Issues Covering all Changes in this Release

| Key            | Summary                                                                                                   | Category    |
|----------------|-----------------------------------------------------------------------------------------------------------|-------------|
| VIEWERNET-3358 | Render Text files to responsive HTML                                                                      | Feature     |
| VIEWERNET-3354 | Throw exception when invalid or expired license provided                                                  | Feature     |
| VIEWERNET-3455 | Add TAR GZipped (TGZ) file-format support                                                                 | Feature     |
| VIEWERNET-3362 | Add TAR XZipped (TXZ) file-format support                                                                 | Feature     |
| VIEWERNET-2757 | Add 7-Zip Compressed File (.7z) file-format support                                                       | Feature     |
| VIEWERNET-3361 | Add XZipped (XZ) file-format support                                                                      | Feature     |
| VIEWERNET-2811 | Need option to add empty columns.                                                                         | Feature     |
| VIEWERNET-1988 | Add syntax highlight to programming language formats                                                      | Feature     |
| VIEWERNET-3491 | Save external resources for text files rendered to HTML.                                                  | Feature     |
| VIEWERNET-3492 | Add Power shell script (.PS1) file-format support                                                         | Feature     |
| VIEWERNET-3493 | Add Power shell script module (.PSM1) file-format support                                                 | Feature     |
| VIEWERNET-3496 | Add Power shell script module manifest (.PSD1) file-format support                                        | Feature     |
| VIEWERNET-3570 | Open files with HTML table inside as XLS files                                                            | Feature     |
| VIEWERNET-3459 | Support for reading latest Apples .numbers file format                                                    | Improvement |
| VIEWERNET-1972 | Convert PSD with custom fonts                                                                             | Improvement |
| VIEWERNET-3494 | Preserve original image format when converting JPEG to HTML with embedded resources                       | Improvement |
| VIEWERNET-2126 | Convert PSD to PDF with selectable text                                                                   | Improvement |
| VIEWERNET-3136 | Improve rendering archive files to PDF                                                                    | Improvement |
| VIEWERNET-3457 | Render all archive folders content for multi-page archives                                                | Improvement |
| VIEWERNET-3370 | Incorrect page count returned for Excel files in trial mode                                               | Bug         |
| VIEWERNET-3369 | Excel to HTML conversion only renders first page                                                          | Bug         |
| VIEWERNET-3368 | Word to HTML conversion - Overlapping characters                                                          | Bug         |
| VIEWERNET-3364 | "Shape to image Error!" exception when rendering XLSX file"                                               | Bug         |
| VIEWERNET-3360 | Headings are rendered incorrectly when converting XLSX to PNG                                             | Bug         |
| VIEWERNET-3318 | Image and pie-chart incorrectly positioned when converting XLSX to HTML                                   | Bug         |
| VIEWERNET-3266 | Exception when rendering CSV file                                                                         | Bug         |
| VIEWERNET-3233 | "header doesn't correspond to vCard format""exception when rendering VCF file"                            | Bug         |
| VIEWERNET-3196 | "Object reference not set to an instance of an object." exception when rendering OST file                 | Bug         |
| VIEWERNET-3141 | Excel file with watermark is not properly rendered to HTML                                                | Bug         |
| VIEWERNET-3004 | PDF to HTML conversion: Annotation transparency lost                                                      | Bug         |
| VIEWERNET-2941 | Parameter is not valid                                                                                    | Bug         |
| VIEWERNET-2755 | "PDF to HTML rendering wrong image colors in the output"                                                  | Bug         |
| VIEWERNET-2693 | Incorrect page count for EPUB document                                                                    | Bug         |
| VIEWERNET-3443 | Invalid column index when converting XLSX                                                                 | Bug         |
| VIEWERNET-3359 | GetViewInfo hangs for specific XLSM                                                                       | Bug         |
| VIEWERNET-3314 | Exception 'Value cannot be null. Parameter name: region' when opening WMF file                            | Bug         |
| VIEWERNET-2252 | Some Chinese fonts cannot be displayed properly                                                           | Bug         |
| VIEWERNET-2462 | "File is corrupted or damaged" exception when rendring DWF file"                                          | Bug         |
| VIEWERNET-2479 | Exception is thrown when loading VSDX file                                                                | Bug         |
| VIEWERNET-2694 | When watermark is added output HTML doesn't ends properly                                                 | Bug         |
| VIEWERNET-2957 | Visio to PDF rendering issue                                                                              | Bug         |
| VIEWERNET-2992 | "Could not load file. File is corrupted or damaged." exception when rendering IFC file"                   | Bug         |
| VIEWERNET-3133 | "Could not load file. File is corrupted or damaged." exception when rendering CDR file"                   | Bug         |
| VIEWERNET-3138 | Specific IFC files failed to open                                                                         | Bug         |
| VIEWERNET-3231 | "Parameter is not valid." exception when rendering VSD file"                                              | Bug         |
| VIEWERNET-3275 | "Parameter is not valid." exception when rendering VSDX file"                                             | Bug         |
| VIEWERNET-3287 | "Could not load file. File is corrupted or damaged." exception when rendering TGA file to HTML"           | Bug         |
| VIEWERNET-3325 | NotImplementedException when viewing certain ZIP file                                                     | Bug         |
| VIEWERNET-3401 | "Parameter is not valid." exception when rendering VSDX file"                                             | Bug         |
| VIEWERNET-3404 | "The given key '1680' was not present in the dictionary." exception when rendering MPP file"              | Bug         |
| VIEWERNET-3411 | "The given key '188744169' was not present in the dictionary." exception when rendering MPP file"         | Bug         |
| VIEWERNET-3506 | Wrong call for Resize on specific DWG file                                                                | Bug         |
| VIEWERNET-3511 | Image loading failed exception thrown for specific DXF file                                               | Bug         |
| VIEWERNET-3514 | Exception when converting Excel with hidden worksheets to HTML                                            | Bug         |
| VIEWERNET-3517 | ImageSaveException on an attempt to convert specific PSD to PNG                                           | Bug         |
| VIEWERNET-3518 | Exception when trying to convert particular Psd file to png                                               | Bug         |
| VIEWERNET-3529 | Bad representation after conversion                                                                       | Bug         |
| VIEWERNET-3531 | Git to HTML -> Out of Memory exception                                                                    | Bug         |
| VIEWERNET-3534 | Error when rendering specific DICOM file.                                                                 | Bug         |
| VIEWERNET-3560 | Cannot load specific Xps file.                                                                            | Bug         |
| VIEWERNET-3571 | Document viewer API only Renders the Deleted Folder of a PST File                                         | Bug         |
| VIEWERNET-3489 | Invalid column index when rendering XLSM to PDF                                                           | Bug         |
| VIEWERNET-3183 | "Arithmetic operation resulted in an overflow." exception when rendering CDR file"                        | Bug         |
| VIEWERNET-3186 | "Could not load file. File is corrupted or damaged." exception when rendering CDR file"                   | Bug         |
| VIEWERNET-3189 | "Could not load file. File is corrupted or damaged." exception when rendering IFC file"                   | Bug         |
| VIEWERNET-3194 | "Could not load file. File is corrupted or damaged." exception when rendering DGN file"                   | Bug         |
| VIEWERNET-3221 | "There was an issue with detecting page size. Please contact support." exception when rendering DWF file" | Bug         |
| VIEWERNET-3228 | "Could not load file. File is corrupted or damaged" when viewing IFC                                      | Bug         |
| VIEWERNET-3274 | "Could not load file. File is corrupted or damaged." exception when rendering DWG file"                   | Bug         |
| VIEWERNET-3451 | "Could not load file. File is corrupted or damaged." exception when rendering VSD file"                   | Bug         |
| VIEWERNET-3512 | Failed to render specific PLT file                                                                        | Bug         |
| VIEWERNET-3521 | Specific VDW, VSS, VST files rendering blank to IMAGE/HTML                                                | Bug         |
| VIEWERNET-3538 | Radio buttons are blurry when converting XLSM to HTML                                                     | Bug         |
| VIEWERNET-3580 | "Unable to read beyond the end of the stream." exception when rendering ODS file                          | Bug         |
| VIEWERNET-3583 | Junk email listed twice when converting PST to HTML                                                       | Bug         |
| VIEWERNET-3599 | Image shifted in specific XLS files when rendering to HTML                                                | Bug         |
| VIEWERNET-3600 | Image not visible when converting specific XLSX file to HTML                                              | Bug         |
| VIEWERNET-3607 | "Input string was not in a correct format." exception when rendering XLSX file                            | Bug         |
| VIEWERNET-3615 | "Value was either too large or too small for a Decimal." exception when rendering MPP file                | Bug         |
| VIEWERNET-3627 | "Object reference not set to an instance of an object." exception when rendering NUMBERS file             | Bug         |
| VIEWERNET-3637 | Specific numbers document should be exported correctly.                                                   | Bug         |
| VIEWERNET-3638 | Enormous conversion time and output file size while converting specific worksheet of XLSX to HTML         | Bug         |

## Public API and Backward Incompatible Changes

**Since GroupDocs.Viewer v22.9 Java version 1.7 is not supported**, Java 1.8 is minimum required version 

## Public API Changes

### com.groupdocs.viewer.options.SpreadsheetOptions class

Added new `DetectSeparator` property.

```java
/**
 * Detect separator (for CSV/TSV files).
 */
public boolean isDetectSeparator();

/**
 * Detect separator (for CSV/TSV files).
 */
public void setDetectSeparator(boolean detectSeparator);
```

See how to use new properties in the following help topic: [Detect a CSV/TSV separator]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-excel-spreadsheets/render-excel-and-apple-numbers-spreadsheets.md">}}).

#### com.groupdocs.viewer.FileType

Fields were added to [FileType](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/FileType) enum that reflects new file formats that we're supporting starting from v22.9.

```java
/**
 * <p>
 * XZ file (.xz) is archive compressed a high-ratio compression algorithm based on the LZMA algorithm.
 * Learn more about this file format <a href="https://fileinfo.com/extension/xz">here</a>.
 * </p>
 */
XZ("XZipped", ".xz")

/**
 * <p>
 * Consolidated Unix File Archive (.txz, .tar.xz) are archives created with Unix-based utility for collecting one or more files.
 * Learn more about this file format <a href="https://fileinfo.com/extension/txz">here</a>.
 * </p>
 */
TXZ("Tar XZipped", ".txz")

/**
 * <p>
 * Consolidated Unix File Archive (.txz, .tar.xz) are archives created with Unix-based utility for collecting one or more files.
 * Learn more about this file format <a href="https://fileinfo.com/extension/txz">here</a>.
 * </p>
 */
TARXZ("Tar XZipped", ".tar.xz")

/**
 * <p>
 * Consolidated Unix File Archive (.tgz, .tar.gz) are archives created with Unix-based utility for collecting one or more files.
 * Learn more about this file format <a href="https://fileinfo.com/extension/tgz">here</a>.
 * </p>
 */
TGZ("Tar GZipped", ".tgz")

/**
 * <p>
 * Consolidated Unix File Archive (.tgz, .tar.gz) are archives created with Unix-based utility for collecting one or more files.
 * Learn more about this file format <a href="https://fileinfo.com/extension/tgz">here</a>.
 * </p>
 */
TARGZ("Tar GZipped", ".tar.gz")

/**
 * <p>
 * 7Zip (.7z, .7zip) is free open source archiver with LZMA and LZMA2 compression.
 * Learn more about this file format <a href="https://docs.fileformat.com/compression/7z/">here</a>.
 * </p>
 */
SevenZip("7Zip", ".7z")

/**
 * PowerShell script module (.psm1) a file format for PowerShell module scripts.
 * <p>
 * Learn more about this file format <a href="https://fileinfo.com/extension/psm1">here</a>.
 * </p>
 */
PSM1("Windows PowerShell script module", ".psm1")

/**
 * PowerShell script file (.ps1) a file format for Windows PowerShell Cmdlet files.
 * <p>
 * Learn more about this file format <a href="https://fileinfo.com/extension/ps1">here</a>.
 * </p>
 */
PS1("Windows PowerShell Cmdlet File ", ".ps1")

/**
 * PowerShell script module manifest (.psd1) a file format for PowerShell module manifest scripts.
 * <p>
 * Learn more about this file format <a href="https://fileinfo.com/extension/psd1">here</a>.
 * </p>
 */
PSD1("Windows PowerShell script module manifest", ".psd1")
```


### Behavior changes

* Now when rendering source code files, they will be colorized. This feature is supported for following files:
C++, CSS, HTML, JAVA, Javascript, JSON, PHP, SQL, XML, PSM1, PS1, PSD1

C# colorizing example: \
![C# coloring](/viewer/java/images/code-coloring/cs-document-coloring.png)

SQL colorizing example: \
![SQL coloring](/viewer/java/images/code-coloring/sql-document-coloring.png)

* Since GroupDocs.Viewer 22.9 version when rendering archive to multiple HTML pages, all contents of the archive are rendered recursively, in previous versions only root folder was rendered.