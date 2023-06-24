---
id: groupdocs-viewer-for-net-latest-release-notes
url: viewer/net/groupdocs-viewer-for-net-latest-release-notes
title: Latest release (June 2023)
weight: 1
description: "Changes that shipped in the latest version of GroupDocs.Viewer for .NET"
keywords: release notes, groupdocs.viewer for .net, latest
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

There are 10 features and bug fixes in this release.

## Full list of changes in this release

| Key | Category | Summary |
| --- | --- | --- |
|VIEWERNET&#8209;4330|Feature|[Support PDF file optimizations](#support-pdf-file-optimizations)|
|VIEWERNET&#8209;4249|Feature|[Support retrieving view info when rendering to PDF](#support-retrieving-view-info-when-rendering-to-pdf)|
|VIEWERNET&#8209;4323|Fix|DOCX to PNG: Application consumes all available memory|
|VIEWERNET&#8209;4248|Fix|Aspose.PDF dependency creates temp files|
|VIEWERNET&#8209;2428|Fix|Incorrect position of images and characters in a docx file|
|VIEWERNET&#8209;4120|Fix|SetLicense is not working with renewed license|
|VIEWERNET&#8209;4385|Fix|PDF file loading slow (.Net Core project)|
|VIEWERNET&#8209;4358|Fix|A workbook must contain at least a visible worksheet|
|VIEWERNET&#8209;4023|Fix|Presentation Text with 3D effect incorrectly rendered on Linux|
|VIEWERNET&#8209;4138|Fix|Empty \<title\> tags being created when loading PDF and EPub documents|

## Major Features

This release includes two features:

* [Added support for PDF file optimizations](#support-pdf-file-optimizations)
* [Added support for retrieving view info when rendering to PDF](#support-retrieving-view-info-when-rendering-to-pdf)

### Support PDF file optimizations

This feature allows you to optimize the output PDF file for a web browser or to reduce the file size using various options.

You can also optimize an existing PDF file. To do this, open it and save the resulting file, specifying the optimization parameters.

For details, see [Optimize the output PDF file](/viewer/net/optimization-pdf-options/).

The following code snippet shows how to enable all available optimizations:

{{< tabs "Example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (Viewer viewer = new Viewer("invoice.pdf"))
{
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.PdfOptimizationOptions = new PdfOptimizationOptions
    {
        Lineriaze = true, // Optimize PDF for web-browsers
        OptimizeSpreadsheets = true, // Optimize spreadsheets for a smaller size
        SubsetFonts = true, // Keep the characters that actually used 
        RemoveAnnotations = true, // Remove annotations
        RemoveFormFields = true, // Remove form fields
        ConvertToGrayScale = true, // Convert images to grayscale
        CompressImages = true, // Enable images compression
        ResizeImages = true, // Enable resize images with lower resolution
        MaxResolution = 150, // Set resolution for images, default value is 300
        ImageQuality = 30, // Set image quality, default value is 100 
    };

    viewer.View(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}

### Support retrieving view info when rendering to PDF

To get information about output PDF file, call the `GetViewInfo` method.

For details, see [Get the PDF output file information](/viewer/net/get-pdf-output-file-info).

The following code snippet shows how to get information about the output PDF file:

{{< tabs "Example2">}}
{{< tab "C#" >}}
```csharp
using (Viewer viewer = new Viewer("resume.docx"))
{
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForPdfView();
    ViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions);

    //Get number of pages and pages size
}
```
{{</ tab >}}
{{</ tabs >}}


## Obsolete API

The following public API is now deprecated and will be removed in the future versions.

### PdfViewOptions.JpgQuality

Please use the new API to set image quality when rendering to PDF.

{{< tabs "Example3">}}
{{< tab "C#" >}}
```cs
using (Viewer viewer = new Viewer("invoice.pdf"))
{
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.PdfOptimizationOptions = new PdfOptimizationOptions
    {
        CompressImages = true,
        ImageQuality = 30, // Default value is 100 
    };

    viewer.View(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}

### PdfViewOptions.Optimize

Please use the new API to optimize Excel spreadsheets when rendering to PDF.

{{< tabs "Example4">}}
{{< tab "C#" >}}
```cs
using (Viewer viewer = new Viewer("inventory.xlsx"))
{
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.PdfOptimizationOptions = new PdfOptimizationOptions
    {
        OptimizeSpreadsheets = true // Optimize border Excel spreadsheets border lines and fonts
    };

    viewer.View(viewOptions);
}
```
{{</ tab >}}
{{</ tabs >}}

## Updates in the further version

The next version of GroupDocs.Viewer for .NET will incorporate the following major changes, some of which may have an impact on compatibility with previous versions.

### Drop support for .NET Framework 4.0 

Following [.NET Framework Support Policy](https://dotnet.microsoft.com/en-us/platform/support/policy/dotnet-framework),  we are dropping support for `.NET Framework 4.0` in the next version of GroupDocs.Viewer. The `.NET Framework 4.0` assembly will be replaced with the `.NET Framework 4.6.2` assembly in the distribution packages.