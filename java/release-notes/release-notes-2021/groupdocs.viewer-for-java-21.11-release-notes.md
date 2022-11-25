---
id: groupdocs-viewer-for-java-21-11-release-notes
url: viewer/java/groupdocs-viewer-for-java-21-11-release-notes
title: GroupDocs.Viewer for Java 21.11 Release Notes
weight: 2
description: "Features, improvements, and bugs-fixes that are shipped in GroupDocs.Viewer for Java 21.11"
keywords: release notes, groupdocs.viewer, java, 21.11
productName: GroupDocs.Viewer for Java
hideChildren: False
---
{{< alert style="info" >}}This page contains release notes for GroupDocs.Viewer for Java 21.11{{< /alert >}}

## Major Features

There are lots of features, improvements, and bug-fixes in this release, most notable are:

* [Added Lotus Notes Database (.nsf) file-format support]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-lotus-notes-files/_index.md">}})
* [Added Compressed SVG File (.svgz) file-format support]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-image-files/how-to-convert-and-view-svg-and-svgz-files.md">}})
* Added Adobe Photoshop Large Document Format (.psb) file format support
* [Added feature to render only figures without scheme for Visio files]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-visio-documents/how-to-render-visio-files-figures.md">}})
* [Added logging support]({{< ref "viewer/java/developer-guide/logging/how-to-set-up-logging.md">}})
* [Add Compressed Windows Metafile (.wmz) file-format support]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-image-files/how-to-convert-and-view-wmf-and-wmz-files.md">}})
* [Add Corel Metafile exchange (.cmx) file-format support]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-image-files/how-to-convert-and-view-cmx-files.md">}})
* [Add Corel Draw (.cdr) file-format support]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-image-files/how-to-convert-and-view-cdr-files.md">}})
* [Added Support rendering presentations with shapes and text with 3D effects]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-powerpoint-presentations/converting-presentations-with-shapes-and-text-with-3-d-effects.md">}})
* [Rendering archives in HTML with Windows explorer behavior]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-archive-files/navigation-in-archive-files.md">}})
* Automatically recalculating CAD drawing size when it is required
* Fixed images and text positioning when rendering Excel as HTML/image/PDF in Linux
* Improved default font support when converting PowerPoint files to PNG/JPG
* RenderSinglePage option is now supported by getViewInfo method
* [AI (Adobe Illustrator) file-format support]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-image-files/how-to-convert-and-view-ai-files.md">}})
* [Microsoft Compiled HTML Help  (CHM) file-format support]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-web-documents/how-to-convert-and-view-chm-files.md">}})
* Add Truevision TGA (TARGA) (tga) file-format support
* Add Animated PNG (apng) file-format support
* Render multipaged PDF to single page HTML
* Email Mailbox File (.mbox) file-format support
* [Time Format and TimeZone setting when rendering Email documents to HTML]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-e-mail-messages/datetime-format-and-time-zone-when-rendering-to-html.md">}})
* [Render spreadsheet by page breaks]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-excel-spreadsheets/render-by-page-breaks.md">}})
* [Support MaxHeight and MaxWidth options when rendering to JPG/PNG]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-png-or-jpeg/set-image-size-limits.md">}})
* [Support for PC3 file printer configuration when rendering CAD formats]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-cad-drawings/how-to-apply-pc3-config-file.md">}})
* Render presentations documents to single-page HTML
* Add support of rendering text in PDF files as images
* Support play/stop animation when rendering APNG images
* Support play/stop animation when rendering GIF images
* Support quality setting when rendering OneNote files
* Support Width/Height/MaxWidth/MaxHeight params by getViewInfo method
* [Add support of resizing images when rendering to HTML]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-html/set-image-size-limits.md">}})
* [Add support of resizing images when rendering to PDF]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-pdf/set-image-size-limits.md">}})
* Watermark styles correct page layout
* Descriptive exception message when opening password-protected ODP/OTP presentations
* Default font is applied when rendering PPTX
* Support rendering of VCF files that contain contacts list - now VCF with multiple contacts are supported
* Improve rendering performance for files without header - for CAD files
* [Optimize output HTML for printing]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-html/optimize-html-for-printing.md">}})
* Render spreadsheets similar to Excel (by page breaks) by default
* [Define page size when rendering TXT to HTML]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-text-files/configure-count-of-characters-per-row-and-rows-per-page-to-render.md">}})
* Fixed rendering of large GIF files
* Improved rendering Spreadsheet files

## Full List of Issues Covering all Changes in this Release

| Key | Summary | Category |
| --- | --- | --- |
|VIEWERNET-2393|Add Lotus Notes Database (.nsf) file-format support|Feature|
|VIEWERNET-2607|Add Compressed SVG File (.svgz) file-format support|Feature|
|VIEWERNET-2472|"File is corrupted or damaged" exception is thrown when rendering DXF file|Bug|
|VIEWERNET-2499|"A generic error occurred in GDI+" exception occurs when rendering DOCX file|Bug|
|VIEWERNET-2506|"Image export failed" exception when rendering ODG file|Bug
|VIEWERNET-2507|"Image export failed" when rendering JP2 file|Bug|
|VIEWERNET-2536|"Input string was not in a correct format" exception when rendering VSDX|Bug|
|VIEWERNET-2539|Exception is thrown when rendering PPTX file|Bug|
|VIEWERNET-2584|"File is corrupted or damaged" exception is thrown when rendring DOCX file|Bug|
|VIEWERNET-2585|"Parameter is not valid" exception when rendering DOCX file|Bug|
|VIEWERNET-2586|"File is corrupted or damaged" exception when rendering WMF file|Bug|
|VIEWERNET-2588|"Unable to cast object of type" exception when rendering PPTX file|Bug|
|VIEWERNET-2594|"Zoom value should be between 10 and 400" exception when rendering ODS file|Bug|
|VIEWERNET-2602|NullPointerException when rendering a certain PDF to HTML|Bug|
|VIEWERNET-2633|Particular HTML file to PDF rendering issue |Bug|
|VIEWERNET-2643|Overflow error on VDX file|Bug|
|VIEWERNET-2656|Can't open xlsm file|Bug|
|VIEWERNET-2662|The column index should not be inside the pivottable report|Bug|
|VIEWERNET-2663|getViewInfo method is stuck|Bug|
|VIEWERNET-2694|When watermark is added output HTML doesn't end properly|Bug|
|VIEWERNET-2704|Document wrongly marked as encrypted.|Bug|
|VIEWERNET-2033|Add Adobe Photoshop Large Document Format (.psb) file format support|Feature|
|VIEWERNET-2547|Add feature to render only figures without scheme for Visio files|Feature|
|VIEWERNET-2548|VSS figures are rendered with small size|Bug|
|VIEWERNET-2690|PDF when rendered to HTML doesn't show drawing |Bug|
|VIEWERNET-2706|VDW, VSS, VST rendering to IMAGE/HTML works incorrectly|Bug|
|VIEWERNET-2707|Row number or column number cannot be zero|Bug|
|VIEWERNET-2710|Object reference not set to an instance of an object exception thrown when rendering DNG file|Bug|
|VIEWERNET-2721|Wrong error message for not supported dgn version|Bug|
|VIEWERNET-2744|Specified argument was out of the range of valid values|Bug|
|VIEWERNET-2746|Сontent breaks on 5 page when converting to PDF|Bug|
|VIEWERNET-2422|Add logging support|Feature|
|VIEWERNET-2605|Add Compressed Windows Metafile (.wmz) file-format support|Feature|
|VIEWERNET-2606|Add Windows Compressed Enhanced Metafile (.emz) file-format support|Feature|
|VIEWERNET-2747|More descriptive exception when opening encrypted XLSM files|Feature|
|VIEWERNET-2749|Add Corel Metafile exchange (.cmx) file-format support|Feature|
|VIEWERNET-2759|Add Corel Draw (.cdr) file-format support|Feature|
|VIEWERNET-2769|Support rendering presentations with shapes and text with 3D effects|Feature|
|VIEWERNET-1080|Incorrect print preview and print of output HTML in Chrome|Bug|
|VIEWERNET-2426|Problem with summary when rendering a PDF to HTML|Bug|
|VIEWERNET-2477|Exception is thrown when loading XLSB file|Bug|
|VIEWERNET-2488|Exception is thrown when rendering DNG file|Bug|
|VIEWERNET-2489|"Image export failed" exception when rendering TIFF file|Bug|
|VIEWERNET-2495|"A generic error occurred in GDI+" exception occurs when rendering VSDX file|Bug|
|VIEWERNET-2550|"A generic error occurred in GDI+" exception occurs when rendering MPP file|Bug|
|VIEWERNET-2603|XLSX to HTML rendering missing some fields|Bug|
|VIEWERNET-2609|Can't get document info for JPF|Bug|
|VIEWERNET-2660|Out of memory exception thrown on Linux when rendering MPP to PNG|Bug|
|VIEWERNET-2661|"A generic error occurred in GDI+" exception occurs when rendering VSDX file to PNG in Linux|Bug|
|VIEWERNET-2751|You can not change part of an array or table formula.|Bug|
|VIEWERNET-2765|Out of memory when opening VSDX|Bug|
|VIEWERNET-2771|Could not load file. File is corrupted or damaged.|Bug|
|VIEWERNET-2772|'Object reference not set to an instance of an object.' when saving VSS shapes for specific file|Bug|
|VIEWERNET-2777|Image saving failed exception when saving SVG|Bug|
|VIEWERNET-2779|PLT file is failed to open|Bug|
|VIEWERNET-2780|Empty XLSX cells not rendered when converting to PNG|Bug|
|VIEWERNET-2781|An exception should be not thrown when the font doesn't exist|Bug|
|VIEWERNET-2783|You can not change part of an array or table formula.|Bug|
|VIEWERNET-2784|Object reference not set to an instance of an object.|Bug|
|VIEWERNET-2787|The column index should not be inside the pivottable report|Bug|
|VIEWERNET-2792|ViewOptions ignored for Cells file|Bug|
|VIEWERNET-2839|Update CAD document size only when it needs|Improvement|
|VIEWERNET-2826|Make detailed description for unsupported numbers file|Improvement|
|VIEWERNET-2598|Rendering archives in HTML with Windows explorer behavior|Improvement|
|VIEWERNET-2907|Stream does not support reading exception when rendering MPP/MPX/MPT files to JPG/PNG|Bug|
|VIEWERNET-2880|Rendering NSF to JPG/PNG/PDF takes too much time|Bug|
|VIEWERNET-2879|Images are missing, text positioning wrong when rendering Excel as HTML/image/PDF in Linux|Bug|
|VIEWERNET-2877|File is damaged exception when rendering BMP file|Bug|
|VIEWERNET-2873|Replacing the default font doesn't work on Linux|Bug|
|VIEWERNET-2872|"Key cannot be null. (Parameter 'key')" exception when rendering ODS file|Bug|
|VIEWERNET-2850|"Object reference not set to an instance of an object" when rendering specific XLTX file|Bug|
|VIEWERNET-2844|Wrong exception|Bug|
|VIEWERNET-2842|"Key cannot be null. (Parameter 'key')" exception when rendering ODS file|Bug|
|VIEWERNET-2831|"Input string was not in a correct format." exception when rendering XLSX file|Bug|
|VIEWERNET-2817|Parameter is not valid.|Bug|
|VIEWERNET-2813|An attempt was made to move the file pointer before the beginning of the file.|Bug|
|VIEWERNET-2788|Shape with 3-D effect has incorrect background color|Bug|
|VIEWERNET-2776|Out of memory exception thrown Linux when rendering specific VSD file to PNG in Linux|Bug|
|VIEWERNET-2720|Exception has been thrown by the target of an invocation.|Bug|
|VIEWERNET-2702|Image export failed|Bug|
|VIEWERNET-2688|Can't open ppsm file|Bug|
|VIEWERNET-2488|Exception is thrown when rendering DNG file|Bug|
|VIEWERNET-2459|Improve default font support when converting PowerPoint files to PNG/JPG|Feature|
|VIEWERNET-2933|Add support of RenderSinglePage option by getViewInfo method |Improvement|
|VIEWERNET-2748|Evaluation watermark appears in licensed mode when viewing NSF|Bug|
|VIEWERNET-2820|"Failed to open presentation with error: Input string was not in a correct format." exception when rendering ODP file|Bug|
|VIEWERNET-2821|"Could not load file. File is corrupted or damaged." exception when rendering DWF file|Bug|
|VIEWERNET-2829|"Failed to open presentation with error: Object reference not set to an instance of an object." exception when rendering PPTX file|Bug|
|VIEWERNET-2903|Rendering an EML file doesn't show attachment details |Bug|
|VIEWERNET-2911|"Index was out of range. Must be non-negative and less than the size of the collection. (Parameter 'index')" exception when rendering MPP file|Bug|
|VIEWERNET-2914|"Could not load file. File is corrupted or damaged." exception when rendering DWF file|Bug|
|VIEWERNET-2923|"Index was out of range. Must be non-negative and less than the size of the collection. (Parameter 'index')" exception when rendering MPP file|Bug|
|VIEWERNET-2927|"Index was outside the bounds of the array." exception when rendering MPP file|Bug|
|VIEWERNET-2935|"Could not load file. File is corrupted or damaged." exception when rendering DOCX file|Bug|
|VIEWERNET-2937|"Failed to open presentation with error: All column's widths must be greater than zero." exception when rendering PPTX file|Bug|
|VIEWERNET-2978|Level index must lay in 0..8 interval exception when rendering FODP file|Bug|
|VIEWERNET-2981|PPTX to HTML has a title on page top that is not in the original document |Bug|
|VIEWERNET-1808|Wrong rendering of the PCL file|Bug|
|VIEWERNET-2486|"Index was out of range" exception when rendering VSDX file|Bug|
|VIEWERNET-2579|"File is corrupted or damaged" exception is thrown when rendring DWG file|Bug|
|VIEWERNET-2630|Issue in rendering DNG file|Bug|
|VIEWERNET-2648|Can't view vss file|Bug|
|VIEWERNET-2664|SVGZ result image damaged in PDF conversion and other conversions|Bug|
|VIEWERNET-2711|File is corrupted or damaged exception was thrown when rendering TIFF document|Bug|
|VIEWERNET-2717|HTML Rendering of PDF Files is including wrong CSS|Bug|
|VIEWERNET-2830|"Parameter is not valid." exception when rendering ODS file|Bug|
|VIEWERNET-2849|Value cannot be null. Parameter name: source|Bug|
|VIEWERNET-2857|File is damaged for MHT file|Bug|
|VIEWERNET-2861|"Object reference not set to an instance of an object." exception when rendering VSS file|Bug|
|VIEWERNET-2925|"Object reference not set to an instance of an object." exception when rendering VSSX file|Bug|
|VIEWERNET-2932|Destination array is not long enough to copy all the items in the collection. Check array index and length.|Bug|
|VIEWERNET-2939|The column index should not be inside the pivottable report|Bug|
|VIEWERNET-2943|Cannot render RAR to PNG|Bug|
|VIEWERNET-2951|Rendering XLSM to HTML takes a lot of time|Bug|
|VIEWERNET-2955|Links are rendered incorrectly when rendering Markdown file |Bug|
|VIEWERNET-280|Support for .ai (Adobe Illustrator) file format|Feature|
|VIEWERNET-2931|Add Microsoft Compiled HTML Help  (CHM) file-format support|Feature|
|VIEWERNET-2949|Render multipaged PDF to single page HTML|Feature|
|VIEWERNET-3008|Add Truevision TGA (TARGA) (tga) file-format support|Feature|
|VIEWERNET-3010|Add Animated PNG (apng) file-format support|Feature|
|VIEWERNET-2934|Add gdv prefix to all CSS class names in custom templates|Improvement|
|VIEWERNET-2950|View DOCX in PDF mode exception: System.ArgumentOutOfRangeException: Index was out of range. Must be non-negative and less than the size of the collection.|Bug|
|VIEWERNET-3019|Rename RenderSinglePage property to RenderToSinglePage in HtmlViewOptions|Bug|
|VIEWERNET-3070|Render spreadsheet by page breaks|Feature|
|VIEWERNET-3068|Render presentations documents to single page HTML|Feature|
|VIEWERNET-3050|Add support of rendering text in PDF files as images|Feature|
|VIEWERNET-3043|Support for PC3 file printer configuration when rendering CAD formats|Feature|
|VIEWERNET-3039|Support MaxHeight and MaxWidth options when rendering to JPG/PNG|Feature|
|VIEWERNET-3009|Support play/stop animation when rendering APNG images|Feature|
|VIEWERNET-3006|Add TimeFormat and TimeZone setting when rendering Email documents to HTML|Feature|
|VIEWERNET-3003|Add Email Mailbox File (.mbox) file-format support|Feature|
|VIEWERNET-2316|Support play/stop animation when rendering GIF images|Feature|
|VIEWERNET-3069|Visio to PDF rendering - output lacks a lot of text|Bug|
|VIEWERNET-3058|Replacing the default font doesn't work on Linux|Bug|
|VIEWERNET-3057|Missing Polish signs in EML to HTML or PDF rendering|Bug|
|VIEWERNET-3055|Replacing the default font doesn't work on Linux|Bug|
|VIEWERNET-3047|Incorrect image dimensions for VCF files|Bug|
|VIEWERNET-3046|Freezes on format-detection|Bug|
|VIEWERNET-3045|Incorrect image dimensions for Archive files|Bug|
|VIEWERNET-3044|getViewInfo returns small page dimensions for Visio files|Bug|
|VIEWERNET-3002|"The number greater than zero is expected. (Parameter 'width')" exception when rendering VSDX file|Bug|
|VIEWERNET-2996|"Image export failed." exception when rendering EMF file|Bug|
|VIEWERNET-2990|"The number greater than zero is expected. (Parameter 'width')" exception when rendering DWG file|Bug|
|VIEWERNET-2989|"The number greater than zero is expected. (Parameter 'width')" exception when rendering DXF file|Bug|
|VIEWERNET-2985|Performance drop in rendering word processing files to HTML|Bug|
|VIEWERNET-2936|Specific DWF file is rendering too long.|Bug|
|VIEWERNET-2929|"Arithmetic operation resulted in an overflow." exception when rendering DOCX file|Bug|
|VIEWERNET-2928|"Could not load file. File is corrupted or damaged." exception when rendering DXF file|Bug|
|VIEWERNET-2922|"Image export failed." exception when rendering JP2 file|Bug|
|VIEWERNET-2919|Parameter is not valid. for cdr file|Bug|
|VIEWERNET-2910|"Could not load file. File is corrupted or damaged." exception when rendering IFC file|Bug|
|VIEWERNET-2909|"The number greater than zero is expected. (Parameter 'width')" exception when rendering CMX file|Bug|
|VIEWERNET-2876|The image is blank when rendering a specific DWG file to PNG in Linux (docker container).|Bug|
|VIEWERNET-2875|The output image is blank when converting a specific STL file to PNG.|Bug|
|VIEWERNET-2874|Jpeg quality option does not work when rendering CAD files to JPEG in Linux docker containers.|Bug|
|VIEWERNET-2864|"The number greater than zero is expected. (Parameter 'width')" exception when rendering DWF file|Bug|
|VIEWERNET-2863|Parameter is not valid. for AutoCad file|Bug|
|VIEWERNET-2862|"CAD document rendering failed.Please check that CadOptions sizing options do not have too low or too high values." exception when rendering DGN file|Bug|
|VIEWERNET-2860|"The number greater than zero is expected. (Parameter 'width')" exception when rendering DWF file|Bug|
|VIEWERNET-2853|"Could not load file. File is corrupted or damaged." exception when rendering IFC file|Bug|
|VIEWERNET-2847|"Could not load file. File is corrupted or damaged." exception when rendering DWF file|Bug|
|VIEWERNET-2846|"Could not load file. File is corrupted or damaged." exception when rendering IFC file|Bug|
|VIEWERNET-2840|"Could not load file. File is corrupted or damaged." exception when rendering DWF file|Bug|
|VIEWERNET-2837|"Could not load file. File is corrupted or damaged." exception when rendering DWF file|Bug|
|VIEWERNET-2836|"Could not load file. File is corrupted or damaged." exception when rendering DWF file|Bug|
|VIEWERNET-2835|"Could not load file. File is corrupted or damaged." exception when rendering DWF file|Bug|
|VIEWERNET-2834|"Could not load file. File is corrupted or damaged." exception when rendering DWF file|Bug|
|VIEWERNET-2833|"Could not load file. File is corrupted or damaged." exception when rendering DWF file|Bug|
|VIEWERNET-2816|"Could not load file. File is corrupted or damaged." exception when rendering DWF file|Bug|
|VIEWERNET-2762|"Certain Excel to HTML conversion, alignment issues|Bug|
|VIEWERNET-2752|"GroupDocs.Viewer throws GroupDocsViewerException  "Image export failed" exception when rendering specific Corel Metafile exchange (cmx) file|Bug|
|VIEWERNET-2713|Could not load file. File is corrupted or damaged when rendering DWF file|Bug|
|VIEWERNET-2689|StackOverFlow error|Bug|
|VIEWERNET-2475|Exception: Failed to render CAD document into PDF|Bug|
|VIEWERNET-2314|Support quality setting when rendering OneNote files|Feature|
|VIEWERNET-3094|Support Width/Height/MaxWidth/MaxHeight params by getViewInfo method|Feature|
|VIEWERNET-3132|Add FilePath parameter to Attachment class|Feature|
|VIEWERNET-3049|Improve error message when loading unsupported Numbers file|Improvement|
|VIEWERNET-2979|Specified Font is not embedded in an output HTML document.|Bug|
|VIEWERNET-2988|"Could not load file. File is corrupted or damaged." exception when rendering DXF file|Bug|
|VIEWERNET-2991|"Failed to open presentation with error: Error reading adjustment value: connsiteX0 = "*/ 0 w 8286" exception when rendering PPTX file|Bug|
|VIEWERNET-2993|"Failed to open presentation with error: Object reference not set to an instance of an object." exception when rendering PPTX file|Bug|
|VIEWERNET-2995|"Image export failed." exception when rendering WMF file|Bug|
|VIEWERNET-2997|"Could not load file. File is corrupted or damaged." exception when rendering DWF file|Bug|
|VIEWERNET-3000|"Failed to render CAD document into PDF." exception when rendering DXF file|Bug|
|VIEWERNET-3059|"Could not load file. File is corrupted or damaged" exception when rendering DXF file|Bug|
|VIEWERNET-3061|"Failed to render CAD document into PDF." exception when rendering DXF file|Bug|
|VIEWERNET-3090|Not all layers are rendered in specific CAD file|Bug|
|VIEWERNET-3096|The number greater than zero is expected. (Parameter 'width') exception when calling getViewInfo for VSS file|Bug|
|VIEWERNET-3097|"Could not load file. File is corrupted or damaged." exception when rendering DXF file|Bug|
|VIEWERNET-3101|Html markup broken for specific VSD file|Bug|
|VIEWERNET-3108|Search is not working for Excel and PowerPoint files in jQuery Viewer|Bug|
|VIEWERNET-3128|Shifted drawing when converting to PNG in Linux|Bug|
|VIEWERNET-3129|EML document takes too long time to render to HTML|Bug|
|VIEWERNET-3130|Incorrect headings when rendering spreadsheets by page breaks|Bug|
|VIEWERNET-2945|Add support of resizing images when rendering to HTML/PDF|Feature|
|VIEWERNET-3135|Watermark styles are breaking page layout|Bug|
|VIEWERNET-2852|"Image export failed." exception when rendering SVG file|Bug|
|VIEWERNET-3151|Output SVG is not valid when converting EMF|Bug|
|VIEWERNET-2814|Could not load file. File is corrupted or damaged.|Bug|
|VIEWERNET-3101|Html markup broken for specific VSD file|Bug|
|VIEWERNET-3149|Content is missing when rendering XLSX file|Bug|
|VIEWERNET-3154|Ignore empty pages when rendering Excel spreadsheets|Bug|
|VIEWERNET-3156|Output image or html is filled with black color|Bug|
|VIEWERNET-3157|Exception thrown when rendering from PDF with images in Linux|Bug|
|VIEWERNET-3158|Default font is not applied when rendering PPTX|Bug|
|VIEWERNET-2828|"Could not load file. File is corrupted or damaged." exception when rendering IFC file|Bug|
|VIEWERNET-3161|Descriptive exception message when opening password-protected ODP/OTP presentations|Bug|
|VIEWERNET-2786|Problem with jpf image cache size|Bug|
|VIEWERNET-2742|Image export failed JPF|Bug|
|VIEWERNET-3105|DOCX to HTML: Incorrect SVG image rendering|Bug|
|VIEWERNET-3071|"Value cannot be null.Parameter name: key" exception when rendering PDF to JPEG in Linux|Bug|
|VIEWERNET-3180|License is not recognized|Bug|
|VIEWERNET-2478|Optimize output HTML for printing|Feature|
|VIEWERNET-3224|Support rendering of VCF files that contain contacts list|Feature|
|VIEWERNET-3240|Improve rendering performance for files without header|Improvement|
|VIEWERNET-3277|Render spreadsheets similar to Excel (by page breaks) by default|Improvement|
|VIEWERNET-3278|Add factory methods without parameters to ViewInfoOptions|Improvement|
|VIEWERNET-3279|Add utility method to retrieve filetype by filename or filepath|Improvement|
|VIEWERNET-3134|"Failed to render CAD document into PDF." exception when rendering DWF file|Bug|
|VIEWERNET-3142|Long conversion time to HTML for certain DOC file|Bug|
|VIEWERNET-3182|"Arithmetic operation resulted in an overflow." exception when rendering CDR file|Bug|
|VIEWERNET-3199|"The added or subtracted value results in an un-representable DateTime. (Parameter 'value') exception" when try to get info from specific MPX file|Bug|
|VIEWERNET-3235|Could not load file. File is corrupted or damaged exception when rendering TGA|Bug|
|VIEWERNET-2471|"File is corrupted or damaged" exception when rendering IFC file|Bug|
|VIEWERNET-2908|PDF to HTML conversion: overlapping text and text out of place in the output|Bug|
|VIEWERNET-3223|Viewer - html files with erroneous css class|Bug|
|VIEWERNET-3237|Empty image when rendering spreadsheet and ignoring empty rows and columns|Bug|
|VIEWERNET-3323|Define page size when rendering TXT to HTML|Feature|
|VIEWERNET-3296|Specify default document to open as a query string parameter in Angular UI|Feature|
|VIEWERNET-3227|Make special exception message if file protected by RMS|Improvement|
|VIEWERNET-3181|Change DGN V8 exception message|Improvement|
|VIEWERNET-3330|Conversion GIF to HTML - A generic error occurred in GDI+|Bug|
|VIEWERNET-3328|getViewInfo returns hidden Excel worksheets|Bug|
|VIEWERNET-3326|Incorrect page size when rendering spreadsheets by rows|Bug|
|VIEWERNET-3322|Incorrect page size when rendering spreadsheets by page breaks|Bug|
|VIEWERNET-3316|Null reference exception when converting certain XLSM to HTML|Bug|
|VIEWERNET-3300|PNG image becomes a black square|Bug|
|VIEWERNET-3298|Preserve the page layout of the original document when rendering in png|Bug|
|VIEWERNET-3297|"Object reference not set to an instance of an object." exception when rendering VSSX file|Bug|
|VIEWERNET-3290|"Parameter is not valid." exception when rendering VSD file to HTML|Bug|
|VIEWERNET-3285|'Object reference not set to an instance of an object.' when getting view info for VSS-file|Bug|
|VIEWERNET-3284|Rendering table headings of XLSX as HTML not working for hidden columns|Bug|
|VIEWERNET-3282|Convert GIF to HTML - bad quality|Bug|
|VIEWERNET-3276|"Unexcepted eof." exception when rendering VSDX file|Bug|
|VIEWERNET-3270|"Value was either too large or too small for an Int32." exception when rendering DOCX file|Bug|
|VIEWERNET-3231|"Parameter is not valid." exception when rendering VSD file|Bug|
|VIEWERNET-3219|"The argument cannot be null or empty string. (Parameter 'name')" exception when rendering ODS file|Bug|
|VIEWERNET-3184|Invalid row index when rendering XLSM|Bug|
|VIEWERNET-2924|"Image export failed." exception when rendering EMF file|Bug|
|VIEWERNET-2848|"Image export failed." exception when rendering TIFF file|Bug|
|VIEWERJAVA-2468|Viewer - html files with erroneous css class|Bug|
|VIEWERJAVA-2718|java.lang.IllegalStateException: Cannot load configuration class: com.groupdocs.ui.Application|Bug|
|VIEWERJAVA-2721|Getting NoSuchAlgorithmException when converting XLSX to pdf|Bug|
|VIEWERJAVA-2604|Preserve original image format when converting JPEG to HTML|Bug|

## Public API and Backward Incompatible Changes

### Behavior changes

* In this version we've improved viewing of Visio documents - now you can choose what to render: Visio figures or Visio scheme(diagram), also Visio figures will be rendered automatically if Visio document does not contain scheme pages.

* In this version we've improved viewing of archives - now you can navigate between archive folder with Windows explorer behavior:
  
    ![Windows explorer navigation style](/viewer/java/images/navigation-in-archive-files/navigation.gif)
  
    For more details and code snippets check [Folder navigation in archive files]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-archive-files/navigation-in-archive-files.md">}}) documentation article.

* In this version we've improved viewing of archives - when you use [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions) with `setRenderSinglePage(true)` and calling the `getViewInfo` method you get 1 page in result info:

    ```java
        try (Viewer viewer = new Viewer("sample.zip")) {
            HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
            viewOptions.setRenderSinglePage(true);
  
            ViewInfoOptions viewInfoOptions = ViewInfoOptions.fromHtmlViewOptions(viewOptions);
            ViewInfo viewInfo = viewer.getViewInfo(viewInfoOptions);
  
            // will print "Zipped File (.zip) with 1 page(s)"
            System.out.println(viewInfo);
  
            // will produce single page
            viewer.view(viewOptions);
          }
    ```

* Now when rendering APNG and GIF to HTML you will get a page with an animated picture. If an animated file contains only one frame, HTML with static image will be generated.

  ![Animated PNG in HTML](/viewer/java/images/apng_animated.gif)

## Public API Changes

#### com.groupdocs.viewer.FileType

  Few fields added to [FileType](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/FileType) class that reflect new file formats that we're supporting starting from v21.11.
  
  ```java
     /**
     * Scalable Vector Graphics File (.svgz) is a Scalar Vector Graphics file that uses XML based text format, compressed by GZIP for describing the appearance of an image.
     * Learn more about this file format <a href="https://fileinfo.com/extension/svgz">here</a>.
     */
     SVGZ("Compressed Scalable Vector Graphics File", ".svgz"),
    
     /**
      * <p>
      * Lotus Notes Database (.nsf)
      * Learn more about this file format https://fileinfo.com/extension/nsf
      * </p>
      */
     NSF("Lotus Notes Database", ".nsf")
  
     /**
      * <p>
      * Photoshop Large Document Format (.psb) represents Photoshop Large Document Format used for graphics designing and development.
      * Learn more about this file format <a href="https://docs.fileformat.com/image/psb">here</a>.
      * </p>
      */
     PSB("Photoshop Large Document Format", ".psb")
  
     /**
      * <p>
      * Corel Exchange (.cmx) is a drawing image file that may contain vector graphics as well as bitmap graphics.
      * Learn more about this file format <a href="https://docs.fileformat.com/image/cmx">here</a>.
      * </p>
      */
     CMX("Corel Metafile exchange", ".cmx")
  
     /**
      * <p>
      * Enhanced Windows Metafile compressed (.emz) represents graphical images device-independently compressed by GZIP. Metafiles of EMF comprises of variable-length records in chronological order that can render the stored image after parsing on any output device.
      * Learn more about this file format <a href="https://docs.fileformat.com/image/emz">here</a>.
      * </p>
      */
     EMZ("Windows Compressed Enhanced Metafile", ".emz")
  
     /**
      * <p>
      * ompressed Windows Metafile (.wmz) represents Microsoft Windows Metafile (WMF) compressed in GZIP archvive - for storing vector as well as bitmap-format images data.
      * Learn more about this file format <a href="https://fileinfo.com/extension/wmz#compressed_windows_metafile">here</a>.
      * </p>
      */
     WMZ("Compressed Windows Metafilee", ".wmz")
  
     /**
      * Microsoft Compiled HTML Help File (.chm) is a well-known format for HELP (documentation to some application) documents.
      * Learn more about this file format <a href="https://docs.fileformat.com/web/chm/">here</a>.
      */
     CHM("Microsoft Compiled HTML Help File", ".chm")
  
     /**
      * Adobe Illustrator (.ai) is a file format for Adobe Illustrator drawings.
      * Learn more about this file format <a href="https://fileinfo.com/extension/ai#adobe_illustrator_file">here</a>.
      */
     AI("Adobe Illustrator", ".ai")
  
     /**
      * Truevision TGA (Truevision Advanced Raster Adapter - TARGA) is used to store bitmap digital images developed by TRUEVISION.
      * Learn more about this file format <a href="https://docs.fileformat.com/image/tga">here</a>.
      */
     TGA("Truevision TGA (TARGA)", ".tga")
  
     /**
      * Animated Portable Network Graphic (.apng) is extension of  PNG format that support animation.
      * Learn more about this file format <a href="https://docs.fileformat.com/image/apng">here</a>.
      */
     APNG("Animated Portable Network Graphic", ".apng")
  
     /**
      * Email Mailbox File (.mbox)
      * Learn more about this file format <a href="https://fileinfo.com/extension/mbox">here</a>.
      */
     MBOX("Email Mailbox File", ".mbox")
  ```

  Added utility method to get FileType from filename or filepath

  ```java
    /**
     * Extracts file extension and maps it to file type.
     *
     * @param filePath The file name or file path.
     * @return When file type is supported returns it, otherwise returns default {@link FileType.UNKNOWN} file type.
     */
    public static FileType fromFilePath(String filePath) { ... }
  ```

#### com.groupdocs.viewer.options.VisioRenderingOptions

Added [VisioRenderingOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/VisioRenderingOptions) class to `com.groupDocs.viewer.options` package. This class provides options for rendering Lotus Notes data files.

```java
/**
 * The Visio files processing documents view options.
 */
public class VisioRenderingOptions {
  /**
   * Render only Visio figures, not a diagram
   */
  public boolean isRenderFiguresOnly() { ... }

  /**
   * Render only Visio figures, not a diagram
   */
  public void setRenderFiguresOnly(boolean renderFiguresOnly) { ... }

  /**
   * Figure width, height will be calculated automatically
   */
  public int getFigureWidth() { ... }

  /**
   * Figure width, height will be calculated automatically. Default value is 100.
   */
  public void setFigureWidth(int figureWidth) { ... }


  /**
   * Initializes new instance of VisioRenderingOptions class.
   */
  public VisioRenderingOptions() { ... }
}
```

#### com.groupdocs.viewer.logging

Class [ConsoleLogger](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.logging/ConsoleLogger) was added to `com.groupdocs.viewer.logging` package. This class provides support for logging [GroupDocs.Viewer](https://products.groupdocs.com/viewer) conversion process to console.

```java
/**
 * <p>
 * Represents logger implementation which sends all messages to console.
 * </p>
 */
public final class ConsoleLogger implements ILogger {

  /**
   * Initializes a new instance of the ConsoleLogger class
   */
  public ConsoleLogger() { ... }

  public ConsoleLogger(boolean isTraceEnabled) { ... }

  public ConsoleLogger(boolean isTraceEnabled, boolean isDebugEnabled) { ... }

  public ConsoleLogger(boolean isTraceEnabled, boolean isDebugEnabled, boolean isWarningEnabled, boolean isErrorEnabled) { ... }

  public void setTraceEnabled(boolean isTraceEnabled) { ... }

  public void setDebugEnabled(boolean isDebugEnabled) { ... }

  public void setWarningEnabled(boolean isWarningEnabled) { ... }

  public void setErrorEnabled(boolean isErrorEnabled) { ... }

  /**
   * Writes a trace message to the console.
   * Trace log messages provide detailed information about application flow.
   * @param message   The trace message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  public void trace(String message, Object... arguments) { ... }

  /**
   * Writes a trace message to the console.
   * Trace log messages provide detailed information about application flow.
   * @param throwable The throwable object
   * @param message   The trace message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  public void trace(Throwable throwable, String message, Object... arguments) { ... }

  public boolean isTraceEnabled() { ... }

  /**
   * Writes a debug message to the console.
   * Debug log messages provide generally useful information about application flow.
   * @param message   The debug message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  public void debug(String message, Object... arguments) { ... }

  /**
   * Writes a debug message to the console.
   * Debug log messages provide generally useful information about application flow.
   * @param throwable The throwable object
   * @param message   The debug message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  public void debug(Throwable throwable, String message, Object... arguments) { ... }

  public boolean isDebugEnabled() { ... }

  /**
   * Writes a warning message to the console.
   * Warning log messages provide information about unexpected and recoverable events in application flow.
   * @param message   The warning message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  public void warning(String message, Object... arguments) { ... }

  /**
   * Writes a warning message to the console.
   * Warning log messages provide information about unexpected and recoverable events in application flow.
   * @param throwable The throwable object
   * @param message   The warning message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  public void warning(Throwable throwable, String message, Object... arguments) { ... }

  public boolean isWarningEnabled() { ... }

  /**
   * Writes an error message to the console.
   * Error log messages provide information about unrecoverable events in application flow.
   * @param message   The error message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  public void error(String message, Object... arguments) { ... }

  /**
   * Writes an error message to the console.
   * Error log messages provide information about unrecoverable events in application flow.
   * @param throwable The throwable object
   * @param message   The error message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  public void error(Throwable throwable, String message, Object... arguments) { ... }

  public boolean isErrorEnabled() { ... }
}
```

Class [FileLogger](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.logging/FileLogger) was added to `com.groupdocs.viewer.logging` This class provides support for logging GroupDocs.Viewer conversion process to file.

```java
/**
 * Writes log messages to the file.
 */
public class FileLogger implements ILogger {
  private final String mFileName;
  private final boolean mTraceEnabled;
  private final boolean mDebugEnabled;
  private final boolean mWarningEnabled;
  private final boolean mErrorEnabled;

  /**
   * Create logger to file.
   *
   * @param fileName Full file name with path
   */
  public FileLogger(String fileName) { ... }

  /**
   * Create logger to file.
   */
  public FileLogger(String fileName, boolean isTraceEnabled, boolean isDebugEnabled, boolean isWarningEnabled, boolean isErrorEnabled) { ... }

  public void setTraceEnabled(boolean isTraceEnabled) { ... }

  public void setDebugEnabled(boolean isDebugEnabled) { ... }

  public void setWarningEnabled(boolean isWarningEnabled) { ... }

  public void setErrorEnabled(boolean isErrorEnabled) { ... }

  /**
   * Writes a trace message to the file.
   * Trace log messages provide detailed information about application flow.
   * @param message   The trace message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  public void trace(String message, Object... arguments) { ... }

  /**
   * Writes a trace message to the file.
   * Trace log messages provide detailed information about application flow.
   * @param throwable The throwable object
   * @param message   The trace message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  public void trace(Throwable throwable, String message, Object... arguments) { ... }

  public boolean isTraceEnabled() { ... }

  /**
   * Writes a debug message to the file.
   * Debug log messages provide generally useful information about application flow.
   * @param message   The debug message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  public void debug(String message, Object... arguments) { ... }

  /**
   * Writes a debug message to the file.
   * Debug log messages provide generally useful information about application flow.
   * @param throwable The throwable object
   * @param message   The debug message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  public void debug(Throwable throwable, String message, Object... arguments) { ... }

  public boolean isDebugEnabled() { ... }

  /**
   * Writes a warning message to the file.
   * Warning log messages provide information about unexpected and recoverable events in application flow.
   * @param message   The warning message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  public void warning(String message, Object... arguments) { ... }

  /**
   * Writes a warning message to the file.
   * Warning log messages provide information about unexpected and recoverable events in application flow.
   * @param throwable The throwable object
   * @param message   The warning message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  public void warning(Throwable throwable, String message, Object... arguments) { ... }

  public boolean isWarningEnabled() { ... }

  /**
   * Writes an error message to the file.
   * Error log messages provide information about unrecoverable events in application flow.
   * @param message   The error message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  public void error(String message, Object... arguments) { ... }

  /**
   * Writes an error message to the file.
   * Error log messages provide information about unrecoverable events in application flow.
   * @param throwable The throwable object
   * @param message   The error message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  public void error(Throwable throwable, String message, Object... arguments) { ... }

  public boolean isErrorEnabled() { ... }
}
```

Class [ILogger](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.logging/ILogger) was added to `com.groupdocs.viewer.logging`. This interface provides support for custom logger implementation.

```java
/**
 * Defines the methods that are used to perform logging.
 */
public interface ILogger {

  void setTraceEnabled(boolean isTraceEnabled);

  void setDebugEnabled(boolean isDebugEnabled);

  void setWarningEnabled(boolean isWarningEnabled);

  void setErrorEnabled(boolean isErrorEnabled);

  /**
   * Writes a trace message to the file.
   * Trace log messages provide detailed information about application flow.
   * @param message   The trace message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  void trace(String message, Object... arguments);

  /**
   * Writes a trace message to the file.
   * Trace log messages provide detailed information about application flow.
   * @param throwable The throwable object
   * @param message   The trace message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  void trace(Throwable throwable, String message, Object... arguments);

  boolean isTraceEnabled();

  /**
   * Writes a debug message to the file.
   * Debug log messages provide generally useful information about application flow.
   * @param message   The debug message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  void debug(String message, Object... arguments);

  /**
   * Writes a debug message to the file.
   * Debug log messages provide generally useful information about application flow.
   * @param throwable The throwable object
   * @param message   The debug message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  void debug(Throwable throwable, String message, Object... arguments);

  boolean isDebugEnabled();

  /**
   * Writes a warning message to the file.
   * Warning log messages provide information about unexpected and recoverable events in application flow.
   * @param message   The warning message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  void warning(String message, Object... arguments);

  /**
   * Writes a warning message to the file.
   * Warning log messages provide information about unexpected and recoverable events in application flow.
   * @param throwable The throwable object
   * @param message   The warning message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  void warning(Throwable throwable, String message, Object... arguments);

  boolean isWarningEnabled();

  /**
   * Writes an error message to the file.
   * Error log messages provide information about unrecoverable events in application flow.
   * @param message   The error message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  void error(String message, Object... arguments);

  /**
   * Writes an error message to the file.
   * Error log messages provide information about unrecoverable events in application flow.
   * @param throwable The throwable object
   * @param message   The error message, can contain {} to be replaced with arguments
   * @param arguments The arguments, replaces {} in message in order of passing
   */
  void error(Throwable throwable, String message, Object... arguments);

  boolean isErrorEnabled();
}
```

#### com.groupdocs.viewer.Viewer

New property and constructor added to [ViewerSettings](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/ViewerSettings) class.

```java
  /**
   * The logger implementation used for logging (Errors, Warnings, Traces).
   */
  public ILogger getLogger() { ... }
  
  /**
   * Initializes new instance of ViewerSettings class.
   * @param cache The cache.
   * @param logger The logger.
   */
  public ViewerSettings(ICache cache, ILogger logger) { ... }
```

In this version we added four new constructors to the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class.

```java
// The following constructors has been added
public Viewer(InputStream stream, boolean leaveOpen)
public Viewer(InputStream stream, LoadOptions loadOptions, boolean leaveOpen)
public Viewer(InputStream stream, ViewerSettings settings, boolean leaveOpen)
public Viewer(InputStream stream, LoadOptions loadOptions, ViewerSettings settings, boolean leaveOpen)
```

Class [MailStorageOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/MailStorageOptions) was added to `com.groupdocs.viewer.options` This class provides view options for viewing mail storage formats like Lotus Notes (NSF)

```java
  /**
   * Provides options for rendering Mail storage (Lotus Notes, MBox) data files.
   */
  public class MailStorageOptions {
  
    /**
     * The keywords used to filter messages.
     */
    public String getTextFilter() { ...}
  
    /**
     * Sets the keywords used to filter messages.
     *
     * @param textFilter the keywords used to filter messages.
     */
    public void setTextFilter(String textFilter) { ...}
  
    /**
     * The email-address used to filter messages by sender or recipient.
     *
     * @return The email-address
     */
    public String getAddressFilter() { ...}
  
    /**
     * Sets email-address used to filter messages by sender or recipient.
     *
     * @param addressFilter the email-address used to filter messages
     */
    public void setAddressFilter(String addressFilter) { ...}
  
    /**
     * The maximum number of messages or items for render.
     * <p>
     * Lotus notes data files can be large and retrieving all messages can take significant time.
     * This setting limits maximum number of messages or items that are rendered.
     * Default value is 0 - all messages will be rendered
     */
    public int getMaxItems() { ...}
  
    /**
     * Sets maximum number of messages or items for render.
     * <p>
     * Lotus notes data files can be large and retrieving all messages can take significant time.
     * This setting limits maximum number of messages or items that are rendered.
     * Default value is 0 - all messages will be rendered
     *
     * @param maxItems Maximum number of messages
     */
    public void setMaxItems(int maxItems) { ...}
  }
```

### com.groupdocs.viewer.options.BaseViewOptions class

Fields were added to [BaseViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/BaseViewOptions) class that reflects new view options for new file formats that we're supporting starting from v21.11.

```java
/**
 * Lotus Notes storage data files view options.
 */
public MailStorageOptions getMailStorageOptions() { ... }

/**
 * Lotus Notes storage data files view options.
 */
public void setMailStorageOptions(MailStorageOptions options) { ... }
```

### com.groupdocs.viewer.options.HtmlViewOptions class

[com.groupdocs.viewer.options.HtmlViewOptions#setRenderSinglePage(boolean)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions#setRenderSinglePage(boolean)) and [com.groupdocs.viewer.options.HtmlViewOptions#isRenderSinglePage()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions#isRenderSinglePage()) properties set as deprecated.
These properties will be removed in next releases, please use setRenderToSinglePage(...) and isRenderToSinglePage() properties.

Properties [com.groupdocs.viewer.options.HtmlViewOptions#setRenderToSinglePage(boolean)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions#setRenderToSinglePage(boolean)) and [com.groupdocs.viewer.options.HtmlViewOptions#isRenderToSinglePage(boolean)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions#isRenderToSinglePage(boolean)) were added.

Interface [IMaxSizeOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/IMaxSizeOptions) was added to `com.groupdocs.viewer.options`. This interface provides MaxSize options for rendering to PNG/JPG output.

```java
  /**
   * Limits of image size options interface.
   */
  public interface IMaxSizeOptions {
    /**
     * Max width of an output image in pixels.
     */
    int getMaxWidth();
  
    /**
     * Max width of an output image in pixels.
     */
    void setMaxWidth(int maxWidth);
  
    /**
     * Max height of an output image in pixels.
     */
    int getMaxHeight();
  
    /**
     * Max height of an output image in pixels.
     */
    void setMaxHeight(int maxHeight);
  }
```

#### com.groupdocs.viewer.options

Fields were added to [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PngViewOptions) class and to [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/JpgViewOptions) class that reflects MaxSize options for rendering to PNG/JPG output that we're supporting starting from v21.11.
Both classes now implement interface [IMaxSizeOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/IMaxSizeOptions).

```java
  /**
   * Max width of an output image in pixels.
   */
  int getMaxWidth();
  
  /**
   * Max width of an output image in pixels.
   */
  void setMaxWidth(int maxWidth);
  
  /**
   * Max height of an output image in pixels.
   */
  int getMaxHeight();
  
  /**
   * Max height of an output image in pixels.
   */
  void setMaxHeight(int maxHeight);
```

### com.groupdocs.viewer.options.SpreadsheetOptions class

[SpreadsheetOptions#forRenderingByPageBreaks()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/SpreadsheetOptions#forRenderingByPageBreaks()) method was added that add support for split Excel sheets by page breaks when rendering.

### com.groupdocs.viewer.options.CadOptions class

[CadOptions#getPc3File()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/CadOptions#getPc3File()) and [CadOptions#setPc3File(...)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/CadOptions#getPc3File(java.lang.String)) methods were added that add support to apply PC3 configuration plotter file when rendering CAD files.

### com.groupdocs.viewer.options.EmailOptions class

Properties were added to [EmailOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/EmailOptions) class that adds support to set time zone offset and date-time format when rendering E-mail messages to HTML.

```java
  /**
   * Time Format (can be included TimeZone)
   * for example: 'MM d yyyy HH:mm tt', if not set - current system format is used
   */
  public String getDateTimeFormat() { ... }
  
  /**
   * Time Format (can be included TimeZone)
   * for example: 'MM d yyyy HH:mm tt', if not set - current system format is used
   */
  public void setDateTimeFormat(String dateTimeFormat) { ... }
  
  /**
   * Message time zone offset
   */
  public TimeZone getTimeZoneOffset() { ... }
  
  /**
   * Message time zone offset
   */
  public void setTimeZoneOffset(TimeZone timeZoneOffset) { ... }
```

#### com.groupdocs.viewer.results.Attachment

The `setFilePath(...)` and `getFilePath()` methods has been added to [Attachment](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/Attachment) class. It is used to keep a relative attachment path or attachment filename.

```java
    /**
     * Attachment relative path e.g. "folder/file.docx"</example>" or filename when the file is located in the root of an archive, in e-mail message or data file.
     */
    String getFilePath() { ... }
```

In addition, all three constructor methods for creating attachment objects in [CacheableFactory](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.caching.extra/CacheableFactory) have been updated to accept the `filePath` parameter.

#### com.groupdocs.viewer.options.ViewInfoOptions

New methods have been added to [ViewInfoOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ViewInfoOptions) class. It is used to keep a relative attachment path or attachment filename.

```java

/**
 * Max width of the output image (for rendering to PNG/JPG only)
 */
public int getMaxWidth() { ... }

/**
 * Max width of the output image (for rendering to PNG/JPG only)
 */
public void setMaxWidth(int maxWidth) { ... }

/**
 * Max height of the output image (for rendering to PNG/JPG only)
 */
public int getMaxHeight() { ... }

/**
 * Max height of the output image (for rendering to PNG/JPG only)
 */
public void setMaxHeight(int maxHeight) { ... }

/**
 * Image width (for rendering to PNG/JPG only)
 */
public int getWidth() { ... }

/**
 * Image width (for rendering to PNG/JPG only)
 */
public void setWidth(int width) { ... }

/**
 * Image height (for rendering to PNG/JPG only)
 */
public int getHeight() { ... }

/**
 * Image height (for rendering to PNG/JPG only)
 */
public void setHeight(int height) { ... }
```

#### Behavior changes

You can set output JPEG quality when converting OneNote files using the following code:

```java
    try (Viewer viewer = new Viewer("document.one")) {
        JpgViewOptions options = new JpgViewOptions("result_{0}.jpg");
        options.setQuality(50);

        viewer.view(options);
    }
```

#### Changes in com.groupdocs.viewer.options package

New methods have been added to [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions) and  [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) classes.

```java

/**
 * Max width of an output image in pixels. (When converting single image to HTML only)
 */
public int getImageMaxWidth() { ... }

/**
 * Max width of an output image in pixels. (When converting single image to HTML only)
 */
public void setImageMaxWidth(int imageMaxWidth) { ... }

/**
 * Max height of an output image in pixels. (When converting single image to HTML only)
 */
public int getImageMaxHeight() { ... }

/**
 * Max height of an output image in pixels. (When converting single image to HTML only)
 */
public void setImageMaxHeight(int imageMaxHeight) { ... }

/**
 * The width of the output image in pixels. (When converting single image to HTML only)
 */
public int getImageWidth() { ... }

/**
 * The width of the output image in pixels. (When converting single image to HTML only)
 */
public void setImageWidth(int imageWidth) { ... }

/**
 * The height of an output image in pixels. (When converting single image to HTML only)
 */
public int getImageHeight() { ... }

/**
 * The height of an output image in pixels. (When converting single image to HTML only)
 */
public void setImageHeight(int imageHeight) { ... }
```

### com.groupdocs.viewer.options.BaseViewOptions class

The default value of [BaseViewOptions#setSpreadsheetOptions(...)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/BaseViewOptions#setSpreadsheetOptions(com.groupdocs.viewer.options.SpreadsheetOptions)) has been changed from `SpreadsheetOptions.forSplitSheetIntoPages(40)` to `SpreadsheetOptions.forRenderingByPageBreaks()`

We've changed default value to make the output similar to the output you can get when printing spreadsheet in Excel. See [Render spreadsheets by page breaks](https://docs.groupdocs.com/viewer/java/render-spreadsheets-by-page-breaks/) for more details.

Added new `TextOptions` property.

```java
  /**
   * Text files splitting to pages options.
   */
  public TextOptions getTextOptions() { ... }
  
  /**
   * Text files splitting to pages options.
   */
  public void setTextOptions(TextOptions textOptions) { .. }
```

And related `TextOptions` class to configure rendering text files e.g TXT, LOG.

```java
  /**
   * Text files splitting to pages options.
   */
  public class TextOptions {
  
    /**
     * Max chars per row on page. Default value is 85.
     */
    public int getMaxCharsPerRow() { ... }
  
    /**
     * Max chars per row on page. Default value is 85.
     */
    public void setMaxCharsPerRow(int maxCharsPerRow) { ... }
  
    /**
     * Max rows per page. Default value is 55.
     */
    public int getMaxRowsPerPage() { ... }
  
    /**
     * Max rows per page. Default value is 55.
     */
    public void setMaxRowsPerPage(int maxRowsPerPage) { ... }
  }
```

See how to use new properties in [Define page size when rendering TXT to HTML]({{< ref "viewer/java/developer-guide/rendering-documents/advanced-rendering/rendering-text-files/configure-count-of-characters-per-row-and-rows-per-page-to-render.md">}}).

### com.groupdocs.viewer.options.ViewInfoOptions class

Added three factory methods without parameters:

```java
  /**
   * Initializes new instance of {@link ViewInfoOptions} class to retrieve information about view when rendering into HTML.
   *
   * @return New instance of {@link ViewInfoOptions} class.
   */
  public static ViewInfoOptions forHtmlView() { ... }
  
  /**
   * Initializes new instance of {@link ViewInfoOptions} class to retrieve information about view when rendering into JPG.
   *
   * @return New instance of {@link ViewInfoOptions} class.
   */
  public static ViewInfoOptions forJpgView() { ... }
  
  
  /**
   * Initializes new instance of {@link ViewInfoOptions} class to retrieve information about view when rendering into PNG.
   *
   * @return New instance of {@link ViewInfoOptions} class.
   */
  public static ViewInfoOptions forPngView() { ... }
```

### com.groupdocs.viewer.options.HtmlViewOptions class

Methods [HtmlViewOptions#isForPrinting()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions#isForPrinting()) and [HtmlViewOptions#setForPrinting(boolean)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/HtmlViewOptions#setForPrinting(boolean)) were added that add optimize output HTML for printing support.
