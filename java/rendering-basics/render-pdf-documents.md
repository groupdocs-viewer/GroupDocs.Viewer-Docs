---
id: render-pdf-documents
url: viewer/java/render-pdf-documents
title: Render PDF documents as HTML and image files
linkTitle: Render PDF documents
weight: 2
description: "This topic describes how to use the GroupDocs.Viewer Java API to convert PDF files to HTML, PNG, and JPEG formats."
keywords: view pdf, pdf viewer, pdf to html, pdf to jpeg, pdf to jpg, pdf to png, pdf to image, convert pdf
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
aliases:
    - /viewer/java/how-to-view-pdf-documents-using-java/
---
[GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) allows you to render your PDF files in HTML, PNG, and JPEG formats. Use this library to implement a simple PDF viewer within your Java application (web or desktop).

Create a [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer) class instance to get started with the GroupDocs.Viewer API. Pass a document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method overloads to convert the document to HTML or image format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/pdf" >}} {{< icon "gdoc_person" >}} View PDF files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported Page Layout file formats

GroupDocs.Viewer supports the following PDF and Page Layout file formats:

* [Portable Document Format](https://docs.fileformat.com/pdf/) (.PDF)
* [Microsoft XML Paper Specification](https://docs.fileformat.com/page-description-language/xps/) (.XPS)
* [Open XML Paper Specification](https://docs.fileformat.com/page-description-language/oxps/) (.OXPS)
* [LaTeX Source Document](https://docs.fileformat.com/page-description-language/tex/) (.TEX)
* [Open Fixed-layout Document](https://www.zhihuilib.com/en/article/detail/2/12) (.OFD)

## Render PDF files as HTML

Create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method to convert a PDF file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}).

### Create an HTML file with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.forEmbeddedResources](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#forEmbeddedResources--) method and specify the output file name.

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.pdf")) {
    // Create an HTML files.
    // {0} is replaced with the current page number in the file name.
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("page_{0}.html");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a PDF file to HTML](/viewer/java/images/rendering-basics/render-pdf-documents/render-pdf-to-html.png)

### Create an HTML file with external resources

If you want to store an HTML file and additional resource files (such as fonts, images, and stylesheets) separately, call the [HtmlViewOptions.forExternalResources](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#forExternalResources--) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.pdf")) {
   // Create an HTML file for each PDF page.
   // Specify the HTML file names and location of external resources.
   // {0} and {1} are replaced with the current page number and resource name, respectively.
   HtmlViewOptions viewOptions = HtmlViewOptions.forExternalResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");
   viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/java/images/rendering-basics/render-pdf-documents/render-to-html-external-resources.png)

### Create HTML with fixed layout

By default, PDF and EPUB documents are rendered to HTML with fixed layout to ensure that the output HTML looks the same as a source document. Rendering to fixed layout means that all the HTML elements are absolutely positioned to the container element. And container element has a fixed size so browser window resizing will not have an effect on the position and size of elements in a document.

The following image demonstrates PDF document rendered HTML with fixed layout:

![Create HTML with fixed layout](/viewer/java/images/rendering-basics/render-pdf-documents/render-pdf-to-html-with-fixed-layout.png)


### Adjust image quality in the output HTML file

The [HtmlviewOptions.getPdfOptions().setImageQuality()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptions/#setImageQuality-com.groupdocs.viewer.options.ImageQuality-) methods allows you to specify the quality of images in the output HTML file. You can set this property to one of the following values:

* [ImageQuality.LOW](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/imagequality/#LOW) --- The image resolution is low (96 DPI), and the image size is small. Use this value to increase the conversion performance.
* [ImageQuality.MEDIUM](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/imagequality/#MEDIUM) --- The image resolution is medium (192 DPI), and the image size is larger compared to the low quality images.
* [ImageQuality.HIGH](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/imagequality/#HIGH) --- The image resolution is high (300 DPI), and the image size is big. Use of this value may decrease the conversion performance.

The following code snippet shows how to set the medium image quality when rendering a PDF document to HTML:

{{< tabs "example4">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.pdf")) {
    // Create an HTML files.
    // {0} is replaced with the current page number in the file name.
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("page_{0}.html");
    // Set image quality to medium.
    viewOptions.getPdfOptions().setImageQuality(ImageQuality.MEDIUM);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

### Render text as an image

GroupDocs.Viewer supports the [HtmlViewOptions.getPdfOptions().setRenderTextAsImage](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptions/#setRenderTextAsImage-boolean-) option that allows you to render text as an image when you convert a PDF file to HTML. In this case, the layout of the output HTML file closely mirrors the layout of the source PDF document.

The following code snippet shows how to enable this option in code:

{{< tabs "example5">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.pdf")) {
    // Create an HTML files.
    // {0} is replaced with the current page number in the file name.
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("text-as-image_{0}.html");
    // Enable rendering text as image.
    viewOptions.getPdfOptions().setRenderTextAsImage(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result. PDF content is exported to HTML as an image, so users cannot select or copy document text.  

![Render PDF content as an image in the output HTML file](/viewer/java/images/rendering-basics/render-pdf-documents/render-pdf-to-html-as-image.png)

### Enable multi-layer rendering

When you convert a PDF file to HTML, GroupDocs.Viewer creates an HTML document with a single layer (the `z-index` is not specified for document elements). This helps increase performance and reduce the output file size. If you convert a PDF document with multiple layers and want to improve the position of document elements in the output HTML file, use the [HtmlViewOptions.getPdfOptions().setEnableLayeredRendering](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptions/#setEnableLayeredRendering-boolean-) method to render text and graphics in the HTML file according to their z-order in the source PDF document.

The following code snippet shows how to enable the multi-layer rendering:

{{< tabs "example6">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.pdf")) {
    // Create an HTML files.
    // {0} is replaced with the current page number in the file name.
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("page_{0}.html");
    // Enable the multi-layer rendering.
    viewOptions.getPdfOptions().setEnableLayeredRendering(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Render PDF files as images

### Convert PDF files to PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method to convert a PDF file to PNG. Use the [PngViewOptions.setHeight](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/#setHeight-int-) and [PngViewOptions.setWidth](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/#setWidth-int-) methods to specify the output image size in pixels.

{{< tabs "example7">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PngViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.pdf")) {
    // Create a PNG image for each PDF page.
    // {0} is replaced with the current page number in the image name.
    PngViewOptions viewOptions = new PngViewOptions("output_{0}.png");
    // Set width and height.
    viewOptions.setWidth(950);
    viewOptions.setHeight(550);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a PDF file to PNG](/viewer/java/images/rendering-basics/render-pdf-documents/render-pdf-to-png.png)

### Convert PDF files to JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method to convert a PDF file to JPEG. Use the [JpgViewOptions.setHeight](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/#setHeight-int-) and [JpgViewOptions.setWidth](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/#setWidth-int-) methods to specify the output image size in pixels.

{{< tabs "example8">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.JpgViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.pdf")) {
    // Create a JPG image for each PDF page.
    // {0} is replaced with the current page number in the image name.
    JpgViewOptions viewOptions = new JpgViewOptions("output_{0}.jpg");
    // Set width and height.
    viewOptions.setWidth(950);
    viewOptions.setHeight(550);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

### Preserve the size of document pages

When you render PDF documents as images, GroupDocs.Viewer calculates the optimal image size to achieve better rendering quality. If you want the generated images to be the same size as pages in the source PDF document, use the [PdfOptions.setRenderOriginalPageSize](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptions/#setRenderOriginalPageSize-boolean-) method of the [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions) or [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions) class (depending on the output image format).

{{< tabs "example9">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PngViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.pdf")) {
    // Create a PNG image for each PDF page.
    // {0} is replaced with the current page number in the image name.
    PngViewOptions viewOptions = new PngViewOptions("output_{0}.png");
    // Preserve the size of document pages.
    viewOptions.getPdfOptions().setRenderOriginalPageSize(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

### Enable font hinting

To adjust the display of outline fonts when you convert PDF documents to PNG or JPEG, use the [PdfOptions.setEnableFontHinting](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptions/#setEnableFontHinting-boolean-) method, as shown below:

{{< tabs "example10">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PngViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.pdf")) {
    // Create a PNG image for each PDF page.
    // {0} is replaced with the current page number in the image name.
    PngViewOptions viewOptions = new PngViewOptions("output_{0}.png");
    // Enable font hinting
    viewOptions.getPdfOptions().setEnableFontHinting(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

Refer to the following article for more information on font hinting: [Font hinting](https://en.wikipedia.org/wiki/Font_hinting).

## Disable character grouping

When you render PDF files in other formats, GroupDocs.Viewer groups individual characters into words to improve rendering performance. If your document contains hieroglyphic or special symbols, you may need to disable character grouping to generate a more precise layout. To do this, use the [PdfOptions.setDisableCharsGrouping](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptions/#setDisableCharsGrouping-boolean-) method, as shown below:

{{< tabs "example11">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PngViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.pdf")) {
    // Create a PNG image for each PDF page.
    // {0} is replaced with the current page number in the image name.
    PngViewOptions viewOptions = new PngViewOptions("output_{0}.png");
    // Disable character grouping.
    viewOptions.getPdfOptions().setDisableCharsGrouping(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Render text comments

Use the [ViewOptions.setRenderComments](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/#setRenderComments-boolean-) method for a target view to display textual annotations (such as text comments, sticky notes, text boxes and callouts) in the output HTML, PNG, or JPEG files.

The code example below renders a PDF file with text comments as an image.

{{< tabs "example12">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PngViewOptions;
// ...

try (Viewer viewer = new Viewer("resume.pdf")) {
    // Create a PNG image for each PDF page.
    // {0} is replaced with the current page number in the image name.
    PngViewOptions viewOptions = new PngViewOptions("output_{0}.png");
    // Enable rendering comments.
    viewOptions.setRenderComments(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image illustrates the result:

![Render PDF comments to PNG](/viewer/java/images/rendering-basics/render-pdf-documents/render-pdf-comments.png)

## Get information about a PDF file

Follow the steps below to obtain information about a PDF file (the number of pages, page size, and printing permissions): 

1. Create a [ViewInfoOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/viewinfooptions) instance for a specific view.
2. Call the [Viewer.getViewInfo](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#getViewInfo-com.groupdocs.viewer.options.ViewInfoOptions-) method, pass the `ViewInfoOptions` instance to this method as a parameter, and cast the returned object to the [PdfViewInfo](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/pdfviewinfo) type.
3. Use the `PdfViewInfo` class properties to retrieve document-specific information.

{{< tabs "example13">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.ViewInfoOptions;
import com.groupdocs.viewer.results.PdfViewInfo;
// ...

ViewInfoOptions viewInfoOptions = ViewInfoOptions.forHtmlView();
PdfViewInfo viewInfo;
try (Viewer viewer = new Viewer("resume.pdf")) {
    viewInfo = (PdfViewInfo) viewer.getViewInfo(viewInfoOptions);
}
// Display information about the PDF document.
System.out.println("File type: " + viewInfo.getFileType());
System.out.println("The number of pages: " + viewInfo.getPages().size());
System.out.println("Is printing allowed: " + viewInfo.isPrintingAllowed());
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![Get information about a PDF file](/viewer/java/images/rendering-basics/render-pdf-documents/retrieve-pdf-file-information.png)

### Extract text from a PDF file

Use the [ViewInfoOptions.setExtractText](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/viewinfooptions/#setExtractText-boolean-) method to enable PDF text extraction. Use the [PdfViewInfo.getPages](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/viewinfo/#getPages--) methods to obtain the list of all document pages, and use the ([Page.getLines](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/page/#getLines--)) method to retrieve text for each line.

{{< tabs "example14">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.ViewInfoOptions;
import com.groupdocs.viewer.results.Line;
import com.groupdocs.viewer.results.Page;
import com.groupdocs.viewer.results.PdfViewInfo;
// ...

try (Viewer viewer = new Viewer("sample.pdf")) {
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.forHtmlView();
    viewInfoOptions.setExtractText(true);
    PdfViewInfo viewInfo = (PdfViewInfo) viewer.getViewInfo(viewInfoOptions);

    // Retrieve text from the PDF file.
    System.out.println("Extracted document text:");
    for (Page page : viewInfo.getPages()) {
        for (Line line : page.getLines()) {
            System.out.println(line.getValue());
        }
    }
}
```
{{< /tab >}}
{{< /tabs >}}

![Extract and display PDF text](/viewer/java/images/rendering-basics/render-pdf-documents/extract-pdf-text.png)

## Skip font license verification when rendering XPS and OXPS files

If an XPS or OXPS file contains a font that cannot be embedded due to licensing restrictions, GroupDocs.Viewer throws an exception at runtime. If you have a license for this font, enable the [PdfOptions#setDisableFontLicenseVerifications(true)](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptions/#setDisableFontLicenseVerifications-boolean-) option to skip font license verification.

{{< tabs "example15">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("resume.oxps")) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    viewOptions.getPdfOptions().setDisableFontLicenseVerifications(true);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< tab "Kotlin">}}
```kotlin
Viewer("resume.oxps").use { viewer ->
   val viewOptions = HtmlViewOptions.forEmbeddedResources()
   viewOptions.pdfOptions.disableFontLicenseVerifications = true
   viewer.view(viewOptions)
}

```
{{< /tab >}}
{{< /tabs >}}

## Enclose images in SVG when rendering PDF and Page Layout files

By default, when rendering to the PDF and Page Layout file formats, all images are combined into a single PNG file, which serves as the background for the output HTML document.

The [PdfOptions#setWrapImagesInSvg(...)](https://reference2.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptions/#setWrapImagesInSvg-boolean-) option allows you to wrap each image in the output HTML document with an SVG tag to improve output quality.

This option is available when rendering PDF and Page Layout file formats to HTML with embedded or external resources. 

{{< tabs "example16">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("resume.pdf")) {
   HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
   viewOptions.getPdfOptions().setWrapImagesInSvg(true);

   viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< tab "Kotlin">}}
```kotlin
Viewer("resume.pdf").use { viewer ->
    val viewOptions = HtmlViewOptions.forEmbeddedResources()
    viewOptions.pdfOptions.isWrapImagesInSvg = true
    viewer.view(viewOptions)
}

```
{{< /tab >}}
{{< /tabs >}}

The following image shows the rendering [resume.pdf](/viewer/java/images/rendering-basics/render-pdf-documents/resume.pdf) with the disabled (left) and enabled (right) `WrapImagesInSvg` option:

![Images as background vs embedded in SVG](/viewer/java/images/rendering-basics/render-pdf-documents/wrap-images-in-svg.png)

## Disable copy protection

When rendering PDF files with protection against copying text and images to HTML, GroupDocs.Viewer adds an `inert` HTML attribute to the HTML `<body>` tag.

Use [PdfOptions.setDisableCopyProtection()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptions/#setDisableCopyProtection-boolean-) to turn off copy protection. When `DisableCopyProtection` is set to `true`, the `inert` HTML attribute won't be added to the HTML `<body>` tag in any case.

{{< alert style="info" >}}

This option was added in GroupDocs.Viewer for Java 24.6. Previous versions of GroupDocs.Viewer for Java ignores PDF copy protection and does not add `inert` HTML attribute to HTML `<body>` tag.   

{{< /alert >}}

This option is supported when rendering PDF files to HTML with embedded or external resources. 

{{< tabs "example17">}}
{{< tab "Java" >}}
```java
try (Viewer viewer = new Viewer("protected-resume.pdf")) {
   HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
   viewOptions.getPdfOptions().setDisableCopyProtection(true);

   viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< tab "Kotlin">}}
```kotlin
Viewer("protected-resume.pdf").use { viewer ->
    val viewOptions = HtmlViewOptions.forEmbeddedResources()
    viewOptions.pdfOptions.isDisableCopyProtection = true
    viewer.view(viewOptions)
}
```
{{< /tab >}}
{{< /tabs >}}

The following image shows the rendering of [protected-resume.pdf](/viewer/java/images/rendering-basics/render-pdf-documents/protected-resume.pdf) with copy protection on the left and with with `DisableCopyProtection` option set to `true` on the right:

![Render with or without copy protection](/viewer/java/images/rendering-basics/render-pdf-documents/render-with-and-without-copy-protection.png)

## Repairing corrupted PDF documents

By default GroupDocs.Viewer cannot process the PDF documents with corrupted structure or content — it throws an exception when trying to open such files. However, starting from the version [24.10](https://releases.groupdocs.com/viewer/java/release-notes/2024/groupdocs-viewer-for-java-24-10-release-notes/) GroupDocs.Viewer can try to repair the structural corruptions in PDF documents. By default this feature is disabled. To enable it, need to use the newly added `TryRepair` boolean property of the [`LoadOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/loadoptions/) class by setting its value to `true`.

When enabled, this feature addresses the following issues in a PDF document:

* Broken references within the document (incorrect object offsets in the Cross-reference list).
* Missing critical elements like root object, page object, or page content.
* Circular references (Form X-object referencing itself).

Here is a source code sample:

{{< tabs "example18">}}
{{< tab "Java" >}}
```java
LoadOptions loadOptions = new LoadOptions();
loadOptions.setTryRepair(true);

try (Viewer viewer = new Viewer("resume.pdf", loadOptions)) {
   PngViewOptions viewOptions = new PngViewOptions();

   viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< tab "Kotlin">}}
```kotlin
val loadOptions = LoadOptions().apply {
    tryRepair = true
}

Viewer("resume.pdf", loadOptions).use { viewer ->
    val viewOptions = PngViewOptions()
    viewer.view(viewOptions)
}
```
{{< /tab >}}
{{< /tabs >}}

## Render OFD documents

Starting from the [version 26.9](https://releases.groupdocs.com/viewer/java/release-notes/2026/groupdocs-viewer-for-java-26-9-release-notes/), GroupDocs.Viewer for Java supports the [OFD](https://www.zhihuilib.com/en/article/detail/2/12) (Open Fixed-layout Document) format, defined by GB/T 33190-2016, which aims to replace PDF in Chinese public institutions. For processing _all_ documents of this format, GroupDocs.Viewer requires that the font [SimSun.ttf](https://learn.microsoft.com/en-us/typography/font-list/simsun) is installed on the operating system. On Microsoft Windows this is usually not a problem, because SimSun is preinstalled in Windows versions and editions starting from _Windows 7_ (for example, _Windows 7_ has preinstalled SimSun version [5.03](https://learn.microsoft.com/en-us/typography/fonts/windows_7_font_list), while _Windows 10_ — SimSun version [5.16](https://learn.microsoft.com/en-us/typography/fonts/windows_10_font_list)). On Linux, SimSun is usually not installed, and when trying to process such a file on Linux, a `GroupDocsViewerException : Could not load file. File is corrupted or damaged. - Font SimSun was not found` exception will be thrown.

To view and save an arbitrary OFD file on Linux, load `SimSun.ttf` into GroupDocs.Viewer using the [`FolderFontSource`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/folderfontsource/) class and the [`FontSettings.setFontSources`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.fonts/fontsettings/#setFontSources-com.groupdocs.viewer.fonts.FontSource...-) method, and do this _before_ creating a [`Viewer`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) instance with the OFD file. The article [Set custom fonts]({{< ref "viewer/java/developer-guide/rendering-documents/set-custom-fonts.md" >}}) describes setting a custom font in detail. A short example of setting SimSun and saving OFD to HTML on Linux is below:

{{< tabs "example-ofd">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.fonts.FolderFontSource;
import com.groupdocs.viewer.fonts.FontSettings;
import com.groupdocs.viewer.fonts.SearchOption;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

// Put SimSun.ttf into the folder
String simSunFolderPath = "full-valid-path/folder-with-SimSun-inside";
FolderFontSource fontSource = new FolderFontSource(simSunFolderPath, SearchOption.TOP_FOLDER_ONLY);
FontSettings.setFontSources(fontSource);

try (Viewer viewer = new Viewer("input.ofd")) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< tab "Kotlin">}}
```kotlin
import com.groupdocs.viewer.Viewer
import com.groupdocs.viewer.fonts.FolderFontSource
import com.groupdocs.viewer.fonts.FontSettings
import com.groupdocs.viewer.fonts.SearchOption
import com.groupdocs.viewer.options.HtmlViewOptions
// ...

// Put SimSun.ttf into the folder
val simSunFolderPath = "full-valid-path/folder-with-SimSun-inside"
val fontSource = FolderFontSource(simSunFolderPath, SearchOption.TOP_FOLDER_ONLY)
FontSettings.setFontSources(fontSource)

Viewer("input.ofd").use { viewer ->
    val viewOptions = HtmlViewOptions.forEmbeddedResources()
    viewer.view(viewOptions)
}
```
{{< /tab >}}
{{< /tabs >}}

## Render popup annotations

PDF documents may contain specific annotations represented as **popups**, also called balloon hints, which are hidden by default but appear when the user hovers the mouse cursor over them and/or clicks them. Another annotation type, **highlight annotations**, highlights a portion of text or an area on the page and can have bound comments that are also hidden by default and appear when clicking the highlight. Before [version 26.9](https://releases.groupdocs.com/viewer/java/release-notes/2026/groupdocs-viewer-for-java-26-9-release-notes/) of GroupDocs.Viewer it was not possible to view such annotation types regardless of the selected output format; the only way to see them was to open the original PDF document in a desktop PDF viewer like Adobe Reader or Foxit Reader. There was no way to preserve these annotations when rendering PDF to HTML or raster image formats.

In GroupDocs.Viewer version 26.9 this has changed. Popup annotations are still hidden by default (so the usual behavior of GroupDocs.Viewer is unchanged), but they can be enabled. From the beginning GroupDocs.Viewer has a boolean option [`setRenderNotes`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/#setRenderNotes-boolean-) on [`BaseViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/), and thus it is available for all four rendering options: PDF, HTML, PNG, and JPEG. Initially `RenderNotes` related only to the Presentation (PPT, PPTX, PPTM, …) and Microsoft Project (MPP, MPT, MPX) format families, and when rendering PDF documents this option had no effect. In GroupDocs.Viewer version 26.9 this option also applies to PDF and enables popup annotations: when it is disabled by default (`false`), popup annotations are hidden; when enabled (`true`), popup annotations are present in the output HTML and raster image formats.

The source code sample below shows loading a PDF file and rendering it to HTML with embedded resources, PNG, and JPEG with popup annotations enabled.

{{< tabs "example_RenderNotes">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
import com.groupdocs.viewer.options.JpgViewOptions;
import com.groupdocs.viewer.options.PngViewOptions;
// ...

// Preparing output options
PngViewOptions pngOpt = new PngViewOptions();
JpgViewOptions jpegOpt = new JpgViewOptions();
HtmlViewOptions htmlEmbeddedOpt = HtmlViewOptions.forEmbeddedResources();

// Enabling RenderNotes for all options
pngOpt.setRenderNotes(true);
jpegOpt.setRenderNotes(true);
htmlEmbeddedOpt.setRenderNotes(true);

// Loading sample PDF file
try (Viewer viewer = new Viewer("sample.pdf")) {
    // Rendering to output formats
    viewer.view(pngOpt);
    viewer.view(jpegOpt);
    viewer.view(htmlEmbeddedOpt);
}
```
{{< /tab >}}
{{< tab "Kotlin">}}
```kotlin
import com.groupdocs.viewer.Viewer
import com.groupdocs.viewer.options.HtmlViewOptions
import com.groupdocs.viewer.options.JpgViewOptions
import com.groupdocs.viewer.options.PngViewOptions
// ...

val pngOpt = PngViewOptions().apply { isRenderNotes = true }
val jpegOpt = JpgViewOptions().apply { isRenderNotes = true }
val htmlEmbeddedOpt = HtmlViewOptions.forEmbeddedResources().apply { isRenderNotes = true }

Viewer("sample.pdf").use { viewer ->
    viewer.view(pngOpt)
    viewer.view(jpegOpt)
    viewer.view(htmlEmbeddedOpt)
}
```
{{< /tab >}}
{{< /tabs >}}

One important note: the [`PdfOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptions/) class has a boolean option [`setEnableLayeredRendering`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfoptions/#setEnableLayeredRendering-boolean-), which works when rendering PDF to HTML and is disabled (`false`) by default. This means that by default all objects like text and graphics are present in the output HTML as a single layer. However, when [`setRenderNotes`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/baseviewoptions/#setRenderNotes-boolean-) is enabled and the user renders PDF to HTML, layered rendering is applied internally even if `setEnableLayeredRendering(false)` was set explicitly.
