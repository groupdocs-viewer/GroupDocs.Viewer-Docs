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

There are 30+ features, enhancements, and bug fixes in this release.

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
|VIEWERJAVA-3156|Fix|FileLogger ignores arguments which must be embedded into message|

## Public API and backward incompatible changes

### com.groupdocs.viewer.options.WordProcessingOptions class

Added the boolean `EnableOpenTypeFeatures` property. Set it to `true` to enable kerning and other OpenType features when rendering Arabic, Hebrew, Indian, Latin-based, or Cyrillic-based scripts.

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
/**
 * This option enables kerning and other OpenType features when rendering Arabic, Hebrew, Indian, Latin-based, or Cyrillic-based scripts.
 */
public boolean isEnableOpenTypeFeatures();

/**
 * This option enables kerning and other OpenType features when rendering Arabic, Hebrew, Indian, Latin-based, or Cyrillic-based scripts.
 */
public void setEnableOpenTypeFeatures(boolean enableOpenTypeFeatures);
```
{{< /tab >}}
{{< /tabs >}}

Within the new feature `VIEWERNET-4021 - Support setting margins for Word documents` we have changed the file type from `float` to `Float` in `com.groupdocs.viewer.options.WordProcessingOptions`. From this version, you can set the margins of the Word documents in the same way as using `Page Setup` in Microsoft Word.

{{< tabs "example2">}}
{{< tab "Java" >}}
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
{{< /tab >}}
{{< /tabs >}}

### com.groupdocs.viewer.Viewer and com.groupdocs.viewer.options.LoadOptions classes

Within the new feature `VIEWERJAVA-3118 - Implement the way to load document into Viewer using URL object` we have added new constructors. Also, we have added new properties to the `com.groupdocs.viewer.options.LoadOptions` class to configure timeouts.

#### com.groupdocs.viewer.Viewer

{{< tabs "example3">}}
{{< tab "Java" >}}
```java

/**
 * <p>
 * Initializes new instance of {@link Viewer} class.
 * </p>
 *
 * @param url A url to a file that should be loaded into Viewer.
 * @throws IllegalArgumentException Thrown when {@code url} is null.
 */
public Viewer(URL url);

/**
 * <p>
 * Initializes new instance of {@link Viewer} class.
 * </p>
 *
 * @param url         A url to a file that should be loaded into Viewer.
 * @param loadOptions The document load options.
 * @throws IllegalArgumentException Thrown when {@code url} is null.
 * @throws IllegalArgumentException Thrown when {@code loadOptions} is null.
 */
public Viewer(URL url, LoadOptions loadOptions);

/**
 * <p>
 * Initializes new instance of {@link Viewer} class.
 * </p>
 *
 * @param url      A url to a file that should be loaded into Viewer.
 * @param settings The Viewer settings.
 * @throws IllegalArgumentException Thrown when {@code url} is null.
 * @throws IllegalArgumentException Thrown when {@code settings} is null.
 */
public Viewer(URL url, ViewerSettings settings);

/**
 * <p>
 * Initializes new instance of {@link Viewer} class.
 * </p>
 *
 * @param url         A url to a file that should be loaded into Viewer.
 * @param loadOptions The document load options.
 * @param settings    The Viewer settings.
 * @throws IllegalArgumentException Thrown when {@code url} is null.
 * @throws IllegalArgumentException Thrown when {@code settings} is null.
 */
public Viewer(URL url, LoadOptions loadOptions, ViewerSettings settings);
```
{{< /tab >}}
{{< /tabs >}}

#### com.groupdocs.viewer.options.LoadOptions

{{< tabs "example4">}}
{{< tab "Java" >}}
```java
/**
 * Connect timeout to create {@link com.groupdocs.viewer.Viewer} using {@link java.net.URL} to load document, default value is 5 seconds
 *
 * @return connect timeout
 */
public int getUrlConnectTimeout();

/**
 * Connect timeout to create {@link com.groupdocs.viewer.Viewer} using {@link java.net.URL} to load document, default value is 5 seconds
 *
 * @param urlConnectTimeout connect timeout
 */
public void setUrlConnectTimeout(int urlConnectTimeout);

/**
 * Read timeout to create {@link com.groupdocs.viewer.Viewer} using {@link java.net.URL} to load document, default value is 30 seconds
 *
 * @return read timeout
 */
public int getUrlReadTimeout();

/**
 * Read timeout to create {@link com.groupdocs.viewer.Viewer} using {@link java.net.URL} to load document, default value is 30 seconds
 *
 * @param urlReadTimeout read timeout
 */
public void setUrlReadTimeout(int urlReadTimeout);
```
{{< /tab >}}
{{< /tabs >}}

### com.groupdocs.viewer.options.LoadOptions and com.groupdocs.viewer.options.ArchiveSecurityOptions classes

Within the new feature `VIEWERJAVA-3153 - Implement options to control archive content when extracting it` we have added the `com.groupdocs.viewer.options.ArchiveSecurityOptions` and `com.groupdocs.viewer.exception.ArchiveSecurityException` classes. Also, we have added a new property to `LoadOptions` to set up `ArchiveSecurityOptions`.

#### com.groupdocs.viewer.options.LoadOptions

{{< tabs "example5">}}
{{< tab "Java" >}}
```java
/**
 * <p>
 * Security options to control the process of extracting archives. Not each archive type supports all options.
 * </p>
 *
 * @return The options object to configure the process of extracting archives.
 */
public ArchiveSecurityOptions getArchiveSecurityOptions();

/**
 * <p>
 * Security options to control the process of extracting archives. Not each archive type supports all options.
 * </p>
 *
 * @param archiveSecurityOptions The options object to configure the process of extracting archives.
 */
public void setArchiveSecurityOptions(ArchiveSecurityOptions archiveSecurityOptions);
```
{{< /tab >}}
{{< /tabs >}}

#### com.groupdocs.viewer.options.ArchiveSecurityOptions classes

{{< tabs "example6">}}
{{< tab "Java" >}}
```java
/**
 * <p>
 * Archive entry name length can not be more than specified in this option. Default value is 255.
 * </p>
 *
 * @return Maximum archive entry name length
 */
public int getMaxAllowedEntryNameLength();

/**
 * <p>
 * Archive entry name length can not be more than specified in this option. Default value is 255.
 * </p>
 *
 * @param maxAllowedEntryNameLength Maximum archive entry name length.
 */
public void setMaxAllowedEntryNameLength(int maxAllowedEntryNameLength);

/**
 * <p>
 * Archive entry size can not be more than specified in this option. Default value is 10Gb (10737418240L).
 * </p>
 *
 * @return Maximum archive entry size.
 */
public long getMaxAllowedEntrySize();

/**
 * <p>
 * Archive entry size can not be more than specified in this option. Default value is 10Gb (10737418240L).
 * </p>
 *
 * @param maxAllowedEntrySize Maximum archive entry size
 */
public void setMaxAllowedEntrySize(long maxAllowedEntrySize);

/**
 * <p>
 * Archive that contains more entries, than specified in this option can not be extracted. Default value is 1000.
 * </p>
 *
 * @return Maximum count of entries in an archive.
 */
public long getMaxAllowedEntriesCount();

/**
 * <p>
 * Archive that contains more entries, than specified in this option can not be extracted. Default value is 1000.
 * </p>
 *
 * @param maxAllowedEntriesCount Maximum count of entries in an archive.
 */
public void setMaxAllowedEntriesCount(long maxAllowedEntriesCount);

/**
 * <p>
 * Archive entries which compression ratio is more, than specified in this option can not be extracted. Default value is 100.
 * </p>
 *
 * @return Maximum allowed entries compression ratio.
 */
public double getMaxAllowedEntryCompressionRatio();

/**
 * <p>
 * Archive entries which compression ratio is more, than specified in this option can not be extracted. Default value is 100.
 * </p>
 *
 * @param maxAllowedEntryCompressionRatio Maximum allowed entries compression ratio.
 */
public void setMaxAllowedEntryCompressionRatio(double maxAllowedEntryCompressionRatio);
```
{{< /tab >}}
{{< /tabs >}}

### com.groupdocs.viewer.FileType

Renamed the following constants of the `FileType` enumeration:

|Old name|New name|
|--------|--------|
|`SevenZip`|`SEVEN_ZIP`|


### com.groupdocs.viewer.options.Resolution

Renamed the following constants of the `Resolution` enumeration:

|Old name|New name|
|--------|--------|
|`DocumentResolution`|`DOCUMENT_RESOLUTION`|
|`Dpi150`|`DPI_150`|
|`Dpi220`|`DPI_220`|
|`Dpi330`|`DPI_330`|
|`Dpi72`|`DPI_72`|
|`Dpi96`|`DPI_96`|
