---
id: groupdocs-viewer-for-java-23-4-release-notes
url: viewer/java/groupdocs-viewer-for-java-23-4-release-notes
title: GroupDocs.Viewer for Java 23.4 Release Notes
weight: 8
description: "Bugs-fixes that are shipped in GroupDocs.Viewer for Java 23.4"
keywords: release notes, groupdocs.viewer, java, 23.4
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---

There are 30+ enhancements and bug fixes in this release.

## Full list of changes in this release

| Key | Category | Summary |
| --- | --- | --- |
|VIEWERNET-3748|Feature|Implement support for multi-paged Dicom files|
|VIEWERJAVA-3118|Feature|Implement the way to load document into Viewer using URL object|
|VIEWERJAVA-3153|Feature|Implement options to control archive content when extracting it|
|VIEWERNET-3814|Enhancement|DSmart detect whether text file is csv or tsv|
|VIEWERNET-2600|Fix|Exception: Could not create the bitmap with the specified parameters|
|VIEWERNET-2635|Fix|Exception: Could not create the bitmap with the specified parameters|
|VIEWERNET-3015|Fix|Mobi file detected as damaged|
|VIEWERNET-3693|Fix|"Destination array was not long enough." exception when rendering TIF file|
|VIEWERNET-3720|Fix|"Object reference not set to an instance of an object." exception when rendering specific CMX file|
|VIEWERNET-3792|Fix|Cannot view EPS - The given key 'Wingdings' was not present in the dictionary.|
|VIEWERNET-3807|Fix|TSV/CSV files are not rendered|
|VIEWERNET-3813|Fix|"Input string was not in a correct format." exception when rendering XLS file|
|VIEWERNET-3815|Fix|"File type is not supported." exception when rendering XLS file|
|VIEWERNET-3820|Fix|"Could not load file. File is corrupted or damaged." exception when rendering ODT file|
|VIEWERNET-3874|Fix|"Could not load file. File is corrupted or damaged." exception when rendering ODT file|
|VIEWERNET-3907|Fix|Improve image quality when converting to image and downscale|
|VIEWERNET-3505|Fix|"Specified color model 'Invalid' is not supported." exception when rendering CMX file|
|VIEWERNET-3416|Fix|"Could not load file. File is corrupted or damaged." exception when rendering DCM file|
|VIEWERNET-3671|Fix|Specific DWF file rendered incorrectly.|
|VIEWERNET-3849|Fix|"Object reference not set to an instance of an object." exception when rendering ODS file|
|VIEWERNET-3876|Fix|"Could not load file. File is corrupted or damaged." exception when rendering PLT file|
|VIEWERNET-3911|Fix|Viewer converting Excel to HTML with problems (cell overlay bug)|
|VIEWERNET-3950|Fix|Exception when converting particular file dwg file to PNG|
|VIEWERNET-3951|Fix|Dwfx to Pdf produce empty result|
|VIEWERNET-3952|Fix|Viewer font issue when rendering DOCX to PDF|
|VIEWERNET-3973|Fix|Characters written on objects such as shapes and text boxes are garbled|
|VIEWERNET-3919|Fix|GroupDocs.Viewer doesn’t render the page when it’s a full page image in a PDF|
|VIEWERNET-3969|Fix|"Output space is undefined" when rendering TEX files from stream|
|VIEWERNET-3990|Fix|Output page size is 55 mb when rendering PPTX to HTML|
|VIEWERNET-4000|Fix|Saving a particular pdf document to image by page produces distored images|
|VIEWERNET-4021|Fix|Support setting margins for Word documents|
|VIEWERNET-4024|Fix|"Object reference not set to an instance of an object." exception when open PS document|
|VIEWERJAVA-3108|Fix|Viewer converts IFC document to empty HTML file|
|VIEWERJAVA-3112|Fix|Freezing when opening big zip files|
|VIEWERJAVA-3113|Fix|Exception is throws when opening file 7z file|
|VIEWERJAVA-3154|Fix|Can't open ZIP archive when it contains characters from specific charset|

## Public API and backward incompatible changes

### com.groupdocs.viewer.options.WordProcessingOptions class

Added new `EnableOpenTypeFeatures` boolean property. Setting it to `true` enables kerning and other OpenType Features when rendering Arabic, Hebrew, Indian scripts, Latin-based or Cyrillic-based scripts

```java
/**
 * This option enables kerning and other OpenType Features when rendering Arabic, Hebrew, Indian scripts, Latin-based or Cyrillic-based scripts.
 */
public boolean isEnableOpenTypeFeatures();

/**
 * This option enables kerning and other OpenType Features when rendering Arabic, Hebrew, Indian scripts, Latin-based or Cyrillic-based scripts.
 */
public void setEnableOpenTypeFeatures(boolean enableOpenTypeFeatures);
```

In context of new feature `VIEWERNET-4021 - Support setting margins for Word documents` we have changed the file type from `float` to `Float` in `com.groupdocs.viewer.options.WordProcessingOptions`. Starting from this version you can set margins for the Word documents same as you adjust margins using `Page Setup` in Microsoft Word.

```java
/**
 * Left page margin (for HTML rendering only)
 */
public Float getLeftMargin();

/**
 * Left page margin (for HTML rendering only)
 */
public void setLeftMargin(Float leftMargin);

/**
 * Right page margin (for HTML rendering only)
 */
public Float getRightMargin();

/**
 * Right page margin (for HTML rendering only)
 */
public void setRightMargin(Float rightMargin);

/**
 * Top page margin (for HTML rendering only)
 */
public Float getTopMargin();

/**
 * Top page margin (for HTML rendering only)
 */
public void setTopMargin(Float topMargin);
/**
 * Bottom page margin (for HTML rendering only)
 */
public Float getBottomMargin();

/**
 * Bottom page margin (for HTML rendering only)
 */
public void setBottomMargin(Float bottomMargin);
```