---
id: render-images
url: viewer/net/render-images
title: Render images as HTML, PDF, PNG, and JPEG files
linkTitle: Render images
weight: 11
description: "This topic describes how to use the GroupDocs.Viewer .NET API (C#) to convert images to HTML, PDF, PNG, and JPEG formats."
keywords: image viewer, image conversion, image to pdf, image to html, image to png, image to jpeg
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
aliases:
    - /viewer/net/view-image-files/
    - /viewer/net/how-to-convert-and-view-cdr-files
    - /viewer/net/how-to-convert-and-view-cmx-files
    - /viewer/net/how-to-convert-and-view-emf-and-emz-files
    - /viewer/net/how-to-convert-and-view-odg-and-fodg-files
    - /viewer/net/how-to-convert-and-view-svg-and-svgz-files
    - /viewer/net/how-to-convert-and-view-wmf-and-wmz-files
    - /viewer/net/how-to-convert-and-view-psd-with-custom-fonts
    - /viewer/net/how-to-convert-and-view-ai-files
---
[GroupDocs.Viewer for .NET](https://products.groupdocs.com/viewer/net) allows you to load images in various formats and convert them to HTML, PDF, PNG, and JPEG. Incorporate this library into your .NET application (web or desktop) to build your own image viewer.

To start with the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class instance. Pass an image you want to view to the class constructor. You can load the image from a file or stream. Call one of the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method overloads to convert the image to HTML, PDF, PNG, or JPEG format. For multipage images (such as TIFF, CDR, DICOM, WebP, and so on), you can specify the pages to render.

{{< button style="primary" link="https://products.groupdocs.app/viewer/image" >}} {{< icon "gdoc_person" >}} View image files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported image file formats

GroupDocs.Viewer supports the following image file formats:

* [.AI (Adobe Illustrator Artwork)](https://docs.fileformat.com/image/ai/)
* [.APNG (Animated Portable Network Graphic)](https://docs.fileformat.com/image/apng/)
* [.BMP (Bitmap Image)](https://docs.fileformat.com/image/bmp)
* [.CDR (CorelDRAW Image File)](https://docs.fileformat.com/image/cdr)
* [.CGM (Computer Graphics Metafile)](https://docs.fileformat.com/page-description-language/cgm)
* [.CMX (Corel Presentation Exchange Image)](https://docs.fileformat.com/image/cmx)
* [.DCM (DICOM Image)](https://docs.fileformat.com/image/dicom)
* [.DIB (Device Independent Bitmap File)](https://docs.fileformat.com/image/dib)
* [.DJVU (DjVu Image)](https://docs.fileformat.com/image/djvu)
* [.DNG (Digital Negative Image)](https://docs.fileformat.com/image/dng)
* [.EMF (Enhanced Windows Metafile)](https://docs.fileformat.com/image/emf)
* [.EMZ (Windows Compressed Enhanced Metafile)](https://docs.fileformat.com/image/emz/)
* [.EPS (Encapsulated PostScript File)](https://docs.fileformat.com/page-description-language/eps)
* [.FODG (OpenDocument Flat XML Graphics)](https://docs.fileformat.com/image/fodg/)
* [.GIF (Graphical Interchange Format)](https://docs.fileformat.com/image/gif)
* [.ICO (Icon File)](https://docs.fileformat.com/image/ico)
* [.J2C (JPEG 2000 Code Stream)](https://docs.fileformat.com/image/j2c/)
* [.J2K (JPEG 2000 Image)](https://docs.fileformat.com/image/j2k/)
* [.JP2 (JPEG 2000 Core Image File)](https://docs.fileformat.com/image/jp2/)
* [.JPC (JPEG 2000 Code Stream File)](https://docs.fileformat.com/image/jpc/)
* [.JPEG / .JPG (JPEG Image)](https://docs.fileformat.com/image/jpeg)
* [.JPF (JPEG 2000 Image)](https://docs.fileformat.com/image/jpf/)
* [.JPM (JPEG 2000 Multi-layer Image Format)](https://docs.fileformat.com/image/jpm/)
* [.JPX (JPEG 2000 Image File)](https://docs.fileformat.com/image/jpx/)
* [.ODG (OpenDocument Graphics File)](https://docs.fileformat.com/image/odg)
* [.OTG (OpenDocument Graphic Template)](https://docs.fileformat.com/image/otg/)
* [.PCL (Printer Command Language Document)](https://docs.fileformat.com/page-description-language/pcl)
* [.PNG (Portable Network Graphics)](https://docs.fileformat.com/image/png)
* [.PS (PostScript File)](https://docs.fileformat.com/page-description-language/ps)
* [.PSB (Photoshop Large Document Format)](https://docs.fileformat.com/image/psb)
* [.PSD (Adobe Photoshop Document)](https://docs.fileformat.com/image/psd)
* [.SVG (Scalable Vector Graphics File)](https://docs.fileformat.com/page-description-language/svg)
* [.SVGZ (Compressed SVG File)](https://fileinfo.com/extension/svgz)
* [.TGA (TARGA Graphics)](https://docs.fileformat.com/image/tga/) 
* [.TIF / .TIFF (Tagged Image File Format)](https://docs.fileformat.com/image/tiff)
* [.WEBP (WebP Image)](https://docs.fileformat.com/image/webp)
* [.WMF (Windows Metafile)](https://docs.fileformat.com/image/wmf)
* [.WMZ (Compressed Windows Metafile)](https://docs.fileformat.com/image/wmz/)

GroupDocs.Viewer can detect the image format automatically based on information in the file header.

## Render images as HTML

Create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an image to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}). 

### Create an HTML file with embedded resources

To embed an image in an HTML page, call the [HtmlViewOptions.ForEmbeddedResources](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method and specify the output file name.

{{< tabs "example1">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("vector-image.svg"))
{
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("output.html");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an image to HTML](/viewer/net/images/rendering-basics/render-images/render-image-to-html-embedded-resources.png)

### Create an HTML file with external resources

To save an image to a separate folder, call the [HtmlViewOptions.ForExternalResources](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forexternalresources/index) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "example2">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("vector-image.svg"))
{
    // Specify the HTML file name and location of external resources.
    // {1} is replaced with the resource name in the output file name.
    var viewOptions = HtmlViewOptions.ForExternalResources(
        "output.html", "output/resource_{1}", "output/resource_{1}");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The result is shown below. The image is placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/net/images/rendering-basics/render-images/render-image-to-html-external-resources.png)

## Render images as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an image to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example3">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("vector-image.svg"))
{
    var viewOptions = new PdfViewOptions("output.pdf");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an image to PDF](/viewer/net/images/rendering-basics/render-images/render-image-to-pdf.png)

## Convert images to PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an image to PNG. Use the [PngViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example4">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("vector-image.svg"))
{
    var viewOptions = new PngViewOptions("output.png");
    viewOptions.Width = 1600;
    viewOptions.Height = 900;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an image to PNG](/viewer/net/images/rendering-basics/render-images/render-image-to-png.png)

## Convert images to JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an image to JPEG. Use the [JpgViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example5">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("vector-image.svg"))
{
    var viewOptions = new JpgViewOptions("output.jpg");
    viewOptions.Width = 1600;
    viewOptions.Height = 900;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Render a PSD file with custom fonts

When you render a PSD file with custom fonts, you can specify a folder that contains necessary fonts to prevent font substitution during rendering. To do this, follow the steps below:

1. Create a [FolderFontSource](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/folderfontsource) class instance and specify a path to the folder that stores custom fonts. Pass a [SearchOption](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/folderfontsource/properties/searchoption) enumeration member to the class constructor to define the search scope. The following options are available:
    * `TopFolderOnly`---Searches for the fonts only in the current folder.
    * `AllFolders`---Searches for the fonts in the current folder and its subfolders.

2. Call the [FontSettings.SetFontSources](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.fonts/fontsettings/methods/setfontsources) static method and pass the specified font source to this method as a parameter. This method allows you to specify multiple font sources.

You can also set the [ViewOptions.DefaultFontName](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/defaultfontname) property to specify the default font that should be used when a particular font is not found.

{{< tabs "example6">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Fonts;
using GroupDocs.Viewer.Options;
// ...

// Specify a folder that stores custom fonts used in a PSD file.
var fontSource = new FolderFontSource(@"C:\custom_fonts_folder",
    GroupDocs.Viewer.Fonts.SearchOption.AllFolders);
FontSettings.SetFontSources(fontSource);

using (var viewer = new Viewer("sample.psd"))
{
    // Convert a PSD file to PNG.
    var viewOptions = new PngViewOptions("output.png");
    // Specify the default font that should be used to replace missing fonts.
    options.DefaultFontName = "Arial";
    viewer.View(options); 
}
```
{{< /tab >}}
{{< /tabs >}}
