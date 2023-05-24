---
id: optimization-pdf-options
url: viewer/net/optimization-pdf-options
title: Optimization PDF file options
linkTitle: Optimization PDF file options
weight: 1
description: "This topic describes how to optimize PDF file in the GroupDocs.Viewer .NET API (C#) for web browser usage or to reduce size using optimization resources options."
keywords: convert to pdf, optimize size, optimize browser, optimize web, pdf reduce size
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
PDF file now can be optimized for web browser usage or to reduce resources size with various optimization options.
It also can be applied to converted output pdf file from all supported input formats [Supported document formats](/viewer/net/supported-document-formats/)

## Supported PDF file optimizations

* [Optimize Pdf For Web](#optimize-pdf-for-web)
* [Optimize Pdf Resources](#optimize-pdf-resources)
* [Optimize Pdf Resources Compress Images](#optimize-pdf-resources-compress-images)
* [Optimize Pdf Resources Image Quality](#optimize-pdf-resources-image-quality)
* [Optimize Pdf Resources Resize Images](#optimize-pdf-resources-resize-images)
* [Optimize Pdf Resources Max Resolution](#optimize-pdf-resources-max-resolution)
* [Optimize Pdf Resources Remove Annotations](#optimize-pdf-resources-remove-annotations)
* [Optimize Pdf Resources Remove Form Fields](#optimize-pdf-resources-remove-form-fields)
* [Optimize Pdf Resources Convert to Grayscale](#optimize-pdf-resources-convert-to-grayscale)
* [Optimize Pdf Resources Link Duplicate Streams](#optimize-pdf-resources-link-duplicate-streams)
* [Optimize Pdf Resources Allow Reuse Page Content](#optimize-pdf-resources-allow-reuse-page-content)
* [Optimize Pdf Resources Remove Unused Streams](#optimize-pdf-resources-remove-unused-streams)
* [Optimize Pdf Resources Remove Unused Objects](#optimize-pdf-resources-remove-unused-objects)
* [Optimize Pdf Resources Unembed Fonts](#optimize-pdf-resources-unembed-fonts)
* [Optimize Pdf Resources Subset Fonts](#optimize-pdf-resources-subset-fonts)
* [Optimize Pdf Resources Remove Private Info](#optimize-pdf-resources-remove-private-info)




### Optimize PDF for Web

Optimization for web browser

{{< tabs "Use optimization PDF file for web">}}
{{< tab "Use oprimization for web" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizer = new OptimizePdfForWeb();
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

### Optimize PDF resources

Optimization resources

{{< tabs "Use optimization PDF file resources">}}
{{< tab "Use optimization resources" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizer = new OptimizePdfResources();
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

### Optimize PDF resources Compress Images

Optimization resources. CompressImages option
If the source PDF file contains images, consider compressing the images and setting their quality.
In order to enable image compression, set this option to true. All the images in a document will be re-compressed.
The compression is defined by the ImageQuality property, which is the value of the quality in percent.
100% is unchanged quality. To decrease image quality, set the ImageQuality property less than 100.

{{< tabs "Use optimization PDF file resources. Compress images">}}
{{< tab "Use optimization resources. Compress images" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizer = new OptimizePdfResources()
         {
           CompressImages = true,
           ImageQuality = 50
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

### Optimize PDF resources Image quality

Optimization resources. Image quality for CompressImage option
If the source PDF file contains images, consider compressing the images and setting their quality.
In order to enable image compression, set CompressImages option to true. All the images in a document will be re-compressed.
The compression is defined by the ImageQuality property, which is the value of the quality in percent.
100% is unchanged quality. To decrease image quality, set the CompressImages option to true
and ImageQuality property less than 100.

{{< tabs "Use optimization PDF file resources. Image quality">}}
{{< tab "Use optimization resources. Image quality" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizer = new OptimizePdfResources()
         {
           CompressImages = true,
           ImageQuality = 50
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

### Optimize PDF resources Resize images

Optimization resources. ResizeImages flag for CompressImage option
Can be used with CompressImage option to resize the images with a lower resolution.
In this case, we should set CompressImage to true, ResizeImages to true and MaxResolution 
to the appropriate value.

{{< tabs "Use optimization PDF file resources. Resize images">}}
{{< tab "Use optimization resources. Resize images" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizer = new OptimizePdfResources()
         {
           CompressImages = true,
           ImageQuality = 50,
           ResizeImages = true,
           MaxResolution = 100
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

### Optimize PDF resources Max Resolution

Optimization resources. MaxResolution image value for ResizeImages flag for CompressImages option
Can be used with CompressImage option to resize the images with a lower resolution.
In this case, we should set CompressImage to true, ResizeImages to true and MaxResolution 
to the appropriate value.

{{< tabs "Use optimization PDF file resources. Max resolution">}}
{{< tab "Use optimization resources. Max resolution" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizer = new OptimizePdfResources()
         {
           CompressImages = true,
           ImageQuality = 50,
           ResizeImages = true,
           MaxResolution = 100
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

### Optimize PDF resources Remove Annotations

Optimization resources. RemoveAnnotations optimization option
Annotations can be deleted when they are unnecessary. 
When they are needed but do not require additional editing, they can be flattened. 
It will reduce the file size.

{{< tabs "Use optimization PDF file resources. Remove Annotations">}}
{{< tab "Use optimization resources. Remove Annotations" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizer = new OptimizePdfResources()
         {
           RemoveAnnotations = true
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

### Optimize PDF resources Remove Form Fields

Optimization resources. RemoveFormFields optimization option
If the PDF document contains AcroForms, we can try to reduce the file size by flattening form fields

{{< tabs "Use optimization PDF file resources. Remove Form Fields">}}
{{< tab "Use optimization resources. Remove Form Fields" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizer = new OptimizePdfResources()
         {
           RemoveFormFields = true
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

### Optimize PDF resources Convert to Grayscale

Optimization resources. ConvertToGrayScale optimization option
PDF file is comprised of Text, Image, Attachment, Annotations, Graphs and other objects.
You may come across a requirement to convert a PDF from RGB colorspace to Grayscale so that it would be faster 
while printing those PDF files. Also when the file is converted to Grayscale, the size of the document is also 
reduced but with this change, the quality of the document may drop. Currently, this feature is supported by the
Pre-Flight feature of Adobe Acrobat.

{{< tabs "Use optimization PDF file resources. Convert to Grayscale">}}
{{< tab "Use optimization resources. Convert to Grayscale" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizer = new OptimizePdfResources()
         {
           ConvertToGrayScale = true
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

### Optimize PDF resources Link Duplicate Streams

Optimization resources. LinkDuplicateStreams optimization option
Sometimes a document contains several identical resource streams (for example images). 
This may happen for example when a document is concatenated with itself. 
The output document contains two independent copies of the same resource stream. 
We analyze all resource streams and compare them. If streams are duplicated they are merged, 
that is, only one copy is left, references are changed appropriately and copies of the object are removed. 
Sometimes this decreases the document size.

{{< tabs "Use optimization PDF file resources. Link Duplicate Streams">}}
{{< tab "Use optimization resources. Link Duplicate Streams" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizer = new OptimizePdfResources()
         {
           LinkDuplicateStreams = true
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

### Optimize PDF resources Allow Reuse Page Content

Optimization resources. AllowReusePageContent optimization option
we can use AllowReusePageContent settings. 
If this property is set to true, the page content will be reused 
when optimizing the document for identical pages

{{< tabs "Use optimization PDF file resources. Allow Reuse Page Content">}}
{{< tab "Use optimization resources. Allow Reuse Page Content" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizer = new OptimizePdfResources()
         {
           AllowReusePageContent = true
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

### Optimize PDF resources Remove Unused Streams

Optimization resources. RemoveUnusedStreams optimization option
Sometimes a document contains unused resource streams. 
These streams are not “unused objects” because they are referenced from a page’s resource dictionary.
This may happen in cases where an image has been removed from the page but not from the page resources. 
Also, this situation often occurs when pages are extracted from the document and document pages have “common” resources,
that is, the same Resources object. Page contents are analyzed in order to determine if a resource stream 
is used or not. Unused streams are removed. Sometimes this decreases the document size.

{{< tabs "Use optimization PDF file resources. Remove Unused Streams">}}
{{< tab "Use optimization resources. Remove Unused Streams" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizer = new OptimizePdfResources()
         {
           RemoveUnusedStreams = true
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

### Optimize PDF resources Remove Unused Objects

Optimization resources. RemoveUnusedObjects optimization option
A PDF document sometimes contains the PDF objects that are not referenced 
from any other object in the document. This may happen, for example, 
when a page is removed from the document page tree but the page object itself isn’t removed.
Removing these objects doesn’t make the document invalid but rather shrinks it.

{{< tabs "Use optimization PDF file resources. Remove Unused Objects">}}
{{< tab "Use optimization resources. Remove Unused Objects" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizer = new OptimizePdfResources()
         {
           RemoveUnusedObjects = true
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

### Optimize PDF resources Unembed Fonts

Optimization resources. UnembedFonts optimization option
If the document uses embedded fonts it means that all font data is placed in the document.
The advantage is that the document is viewable regardless of whether the font is installed 
on the user’s machine or not. But embedding fonts makes the document larger. 
The unembed fonts method removes all embedded fonts. This decreases the document size but 
the document may become unreadable if the correct font is not installed.

{{< tabs "Use optimization PDF file resources. Unembed Fonts">}}
{{< tab "Use optimization resources. Unembed Fonts" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizer = new OptimizePdfResources()
         {
           UnembedFonts = true
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

### Optimize PDF resources Subset Fonts

Optimization resources. SubsetFonts optimization option
Fonts will be converted into subsets if set to true

{{< tabs "Use optimization PDF file resources. Subset Fonts">}}
{{< tab "Use optimization resources. Subset Fonts" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizer = new OptimizePdfResources()
         {
           SubsetFonts = true
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

### Optimize PDF resources Remove Private Info

Optimization resources. RemovePrivateInfo optimization option
Remove private information (page piece info) if set to true

{{< tabs "Use optimization PDF file resources. Remove Private Info">}}
{{< tab "Use optimization resources. Remove Private Info" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Domain.Documents.PostProcessing.Pdf.Optimization;
// ...

using (var viewer = new Viewer("sample.docx"))
     {
         PdfViewOptions viewOptions = new PdfViewOptions();
         viewOptions.PdfOptimizer = new OptimizePdfResources()
         {
           RemovePrivateInfo = true
         };
     
         viewer.View(viewOptions);
     }
```
{{</ tab >}}
{{</ tabs >}}

