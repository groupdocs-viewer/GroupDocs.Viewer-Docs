---
id: groupdocs-viewer-for-java-22-12-release-notes
url: viewer/java/groupdocs-viewer-for-java-22-12-release-notes
title: GroupDocs.Viewer for Java 22.12 Release Notes
weight: 1
description: "Features, improvements, and bugs-fixes that are shipped in GroupDocs.Viewer for Java 22.12"
keywords: release notes, groupdocs.viewer, java, 22.12
productName: GroupDocs.Viewer for Java
hideChildren: False
---
{{< alert style="info" >}}This page contains release notes for GroupDocs.Viewer for Java 22.12{{< /alert >}}

## Major Features

There are lots of features, improvements, and bug-fixes in this release, most notable are:

* Set resolution for images in presentations that are rendered to HTML
* Add support of rendering QR-codes in Word files
* Try to open files with Excel extension as TSV/CSV
* Links now working when rendering CHM files to HTML
* Added text gradient support for DOCX files
* Fields are going to be updated when rendering Words documents that contains barcodes
* Excel original grid should not be changed when text overflow is set to HideText or OverlayIfNextIsEmpty
* Fixed issue when hatched area displayed as solid color rendering VSD document

## Full List of Issues Covering all Changes in this Release

| Key            | Summary                                                                                                   | Category    |
|----------------|-----------------------------------------------------------------------------------------------------------|-------------|
| VIEWERNET-3681     | Add support of rendering QR-codes in Word files|Feature |
| VIEWERNET-3689     | Set resolution for images in presentations that are rendered to HTML|Feature |
| VIEWERNET-3782     | Text gradient support for DOCX files|Feature |
| VIEWERJAVA-2755    | Support Image Quality option when rendering PDF to PNG | Feature |
| VIEWERNET-3694     | Try to open files with Excel extension as TSV/CSV |Improvement |
| VIEWERNET-2867     | "Could not load file. File is corrupted or damaged." exception when rendering HPG file|Bug |
| VIEWERNET-2920     | Try to autodetect file format and open file when file extension is wrong|Bug |
| VIEWERNET-2986     | Links are broken when rendering CHM files to HTML|Bug |
| VIEWERNET-3187     | "Failed to render CAD document into PDF." exception when rendering DWG file"|Bug |
| VIEWERNET-3223     | Viewer - html files with erroneous css class|Bug |
| VIEWERNET-3405     | "Could not load file. File is corrupted or damaged." exception when rendering DWF file|Bug |
| VIEWERNET-3421     | "Could not load file. File is corrupted or damaged." exception when rendering DWF file|Bug |
| VIEWERNET-3453     | Watermark text size issue with pdf through Viewer API|Bug |
| VIEWERNET-3596     | "CAD document rendering failed.Please check that CadOptions sizing options do not have too low or too high values."exception when rendering DWF file|Bug |
| VIEWERNET-3675     | For VSSX-file it is not generating cache HTML-file for the second page.|Bug |
| VIEWERNET-3680     | Exception was thrown when rendering PDF in app|Bug |
| VIEWERNET-3730     | Exception when opening particular EPS file|Bug |
| VIEWERNET-3731     | Missing text when rendering PS into PDF|Bug |
| VIEWERNET-3732     | Errors while extracting a text from PDF|Bug |
| VIEWERNET-3403     | "Could not load file. File is corrupted or damaged." exception when rendering DCM file|Bug |
| VIEWERNET-3465     | "Unable to cast object exception" when rendering specific WMF file|Bug |
| VIEWERNET-3574     | "Could not load file. File is corrupted or damaged." exception when rendering MPP file"|Bug |
| VIEWERNET-3667     | "Could not load file. File is corrupted or damaged." exception when rendering TGA file"|Bug |
| VIEWERNET-3684     | Excel original grid should not be changed when Overflow HideText and OverlayIfNextIsEmpty rendering|Bug |
| VIEWERNET-3736     | QR code size is smaller comparing with Word                       | Bug |
| VIEWERNET-3741     | Barcode fields are not updated                                    | Bug |
| VIEWERNET-3742     | Cannot view specific XLS file                                     | Bug |
| VIEWERNET-3780     | Failed to load specific PSD                                       | Bug |
| VIEWERNET-3783     | Conversion from EPS to PDF produce blank output                   | Bug |
| VIEWERJAVA-1368    | Hatched area displayed as solid color when rendering VSD document | Bug         |
| VIEWERJAVA-2985    | Exception throws opening ONE file                                 | Bug         |
| VIEWERJAVA-2990    | Rendering to html with embedded resources generates external link | Bug         |

## Public API Changes

### com.groupdocs.viewer.options.BaseViewOptions class

Added new `PresentationOptions` property to [BaseViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/) class.

```java
/**
* The presentation processing documents view options.
*/
public PresentationOptions getPresentationOptions() { ... }

/**
 * The presentation processing documents view options.
 */
public void setPresentationOptions(PresentationOptions presentationOptions) { ... }
```

### GroupDocs.Viewer.Options namespace

Added new [PresentationOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/presentationoptions/) and
[Resolution](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/resolution/) classes.

```java
/**
 * Provides options for rendering presentations options.
 */
public class PresentationOptions {

    /**
     * Resolution for images inside presentation (for to HTML/PDF rendering only).
     */
    public Resolution getResolution() { ... }

    /**
     * Resolution for images inside presentation (for to HTML/PDF rendering only).
     */
    public void setResolution(Resolution resolution) { ... }
}

/**
 * Provides option to set resolution for images : output document.
 */
public enum Resolution {
    /**
     * Good quality for high-definition (HD) displays.
     */
    Dpi330(330),
    /**
     * Excellent quality on most printers and screens.
     */
    Dpi220(220),
    /**
     * Good for web pages and projectors.
     */
    Dpi150(150),
    /**
     * Good for web pages and projectors.
     */
    Dpi96(96),
    /**
     * Default compression level.
     */
    Dpi72(72),
    /**
     * Default compression level - as : the document.
     */
    DocumentResolution(0);

    /**
     * Quality DPI.
     */
    public int getValue() { ... }
}
```


### Behavior changes

Since GroupDocs.Viewer 22.12 version if the file extension is wrong, GroupDocs.Viewer will try to detect the actual format and render the file.
Since GroupDocs.Viewer 22.12 version you can set a resolution for images inside presentations when rendering to HTML:

```java
try (Viewer viewer = new Viewer("presentation.pptx")) {
    HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources("result_{0}.html");
    options.getPresentationOptions().setResolution(Resolution.Dpi72);

    viewer.view(options);
}
```

Read more in the following help topic: [Specify image resolution]({{< ref "viewer/java/rendering-basics/render-presentations.md">}}).

In GroupDocs.Viewer 22.12 version because of issues of auto detection, auto detection feature is disabled.
Document extension should match the actual document format.