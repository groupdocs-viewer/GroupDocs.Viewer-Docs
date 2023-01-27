---
id: render-text-files
url: viewer/net/render-text-files
title: Render text documents as HTML, PDF, and image files
linkTitle: Render text documents
weight: 10
description: "This topic describes how to use the GroupDocs.Viewer .NET API (C#) to convert text files to HTML, PDF, PNG, and JPEG formats."
keywords: text file conversion, txt to pdf, txt to html, txt to png, txt to jpeg
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
aliases:
    - /viewer/net/view-text-files
    - /viewer/net/how-to-convert-and-view-txt-files
    - /viewer/net/configure-count-of-characters-per-row-and-rows-per-page-to-render
---
[GroupDocs.Viewer for .NET](https://products.groupdocs.com/viewer/net) allows you to convert text documents to HTML, PDF, PNG, and JPEG formats so you can view document content in a web browser, PDF or image viewer application.

To start with the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class instance. Pass a text document you want to view to the class constructor. You can load the document from a file or stream. Call one of the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method overloads to convert the image to HTML, PDF, PNG, or JPEG format. These methods allow you to render the entire document or specific pages.

{{< button style="primary" link="https://products.groupdocs.app/viewer/total" >}} {{< icon "gdoc_person" >}} View text files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported text file formats

GroupDocs.Viewer supports the following text and programming file formats:

* [.AS / .AS3 (ActionScript File)](https://docs.fileformat.com/programming/as/)
* [.ASM (Assembly Language Source Code File)](https://docs.fileformat.com/programming/asm/)
* [.BAT (DOS Batch File)](https://docs.fileformat.com/executable/bat/)
* [.C (C/C++ Source Code File)](https://docs.fileformat.com/programming/c/)
* [.CC (C++ Source Code File)](https://docs.fileformat.com/programming/c/)
* [.CMAKE (CMake File)](https://docs.fileformat.com/programming/cmake/)
* [.CPP (C++ Source Code File)](https://docs.fileformat.com/programming/cpp/)
* [.CS (C# Source Code File)](https://docs.fileformat.com/specification/programming/cs/)
* [.CSS (Cascading Style Sheet)](https://docs.fileformat.com/web/css/)
* [.CXX (C++ Source Code File)](https://docs.fileformat.com/programming/cxx/)
* [.DIFF (Patch File)](https://docs.fileformat.com/programming/diff/)
* [.ERB (Ruby ERB Script)](https://docs.fileformat.com/programming/erb/)
* [.GROOVY (Groovy Source Code File)](https://docs.fileformat.com/programming/groovy/)
* [.H (C/C++/Objective-C Header File)](https://docs.fileformat.com/programming/h/)
* [.HAML (Haml Source Code File)](https://docs.fileformat.com/programming/haml/)
* [.HH (C++ Header File)](https://docs.fileformat.com/programming/hh/)
* [.JAVA (Java Source Code File)](https://docs.fileformat.com/programming/java/)
* [.JS (JavaScript File)](https://docs.fileformat.com/web/js/)
* [.JSON (JavaScript Object Notation File)](https://docs.fileformat.com/web/json/)
* [.LESS (LESS Style Sheet)](https://docs.fileformat.com/web/less/)
* [.LOG (Log File)](https://docs.fileformat.com/database/log/)
* [.M (Objective-C Implementation File)](https://docs.fileformat.com/programming/m/)
* [.MAKE (Xcode Makefile Script)](https://docs.fileformat.com/programming/make/)
* [.MD (Markdown Documentation File)](https://docs.fileformat.com/word-processing/md/)
* [.ML (ML Source Code File)](https://docs.fileformat.com/programming/ml/)
* [.MM (Objective-C++ Source File)](https://docs.fileformat.com/programming/mm/)
* [.PHP (PHP Source Code File)](https://docs.fileformat.com/programming/php/)
* [.PL (Perl Script)](https://docs.fileformat.com/programming/pl/)
* [.PROPERTIES (Java Properties File)](https://en.wikipedia.org/wiki/.properties)
* [.PY (Python Script)](https://docs.fileformat.com/programming/py/)
* [.RB (Ruby Source Code)](https://docs.fileformat.com/ebook/rb/)
* [.RST (reStructuredText File)](https://docs.fileformat.com/programming/rst/)
* [.SASS (Syntactically Awesome StyleSheets File)](https://docs.fileformat.com/web/sass/)
* [.SCALA (Scala Source Code File)](https://docs.fileformat.com/programming/scala/)
* [.SCM (Scheme Source Code File)](https://docs.fileformat.com/programming/scm/)
* [.SCRIPT (Generic Script File)](https://docs.fileformat.com/programming/script/)
* [.SH (Bash Shell Script)](https://docs.fileformat.com/programming/sh/)
* [.SML (Standard ML Source Code File)](https://en.wikipedia.org/wiki/Standard_ML)
* [.SQL (Structured Query Language Data File)](https://docs.fileformat.com/database/sql/)
* [.TXT (Plain Text File)](https://docs.fileformat.com/word-processing/txt/)
* [.VB (Visual Basic Source Code File)](https://docs.fileformat.com/specification/programming/vb/)
* [.VIM (Vim Settings File)](https://docs.fileformat.com/misc/vim/)
* [.XML (XML File)](https://docs.fileformat.com/web/xml/)
* [.YAML (YAML Document)](https://docs.fileformat.com/programming/yaml/)

When you load a text document from a file or [FileStream](https://learn.microsoft.com/en-us/dotnet/api/system.io.filestream), GroupDocs.Viewer detects the document's format based on the filename extension. If you use other stream types to load your document (such as [MemoryStream](https://learn.microsoft.com/en-us/dotnet/api/system.io.memorystream) or [NetworkStream](https://learn.microsoft.com/en-us/dotnet/api/system.net.sockets.networkstream)), GroupDocs.Viewer can determine the file format only for the following document types: TXT, XML, CS, and VB. For other file types, you should explicitly specify their format. To do this, create a [LoadOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/loadoptions) class instance with the [FileType](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/filetype) parameter and pass this instance to the [Viewer](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class constructor.

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

// Implement a method that returns a stream with document data.
Stream stream = GetFileStream("markdown-file.md");

// Specify the file encoding. 
LoadOptions loadOptions = new LoadOptions(FileType.MD);

// Convert the document to PDF.
using (var viewer = new Viewer(stream, loadOptions))
{
    var viewOptions = new PdfViewOptions("output.pdf");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Render text files as HTML

Create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a text file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}).

### Create HTML files with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.ForEmbeddedResources](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method and specify the output file name.

{{< tabs "example3">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("TermsOfService.txt"))
{
    // Convert the text file to HTML.
    // {0} is replaced with the current page number in the output file names.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a text file to HTML](/viewer/net/images/rendering-basics/render-text-files/render-to-html-embedded-resources.png)

### Create HTML files with external resources

If you want to store output HTML files and additional resource files (such as fonts, images, and style sheets) separately, call the [HtmlViewOptions.ForExternalResources](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forexternalresources/index) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "example4">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("TermsOfService.txt"))
{
    // Convert the text file to HTML.
    // Specify the output file names and location of external resources.
    // {0} and {1} are replaced with the current page number and resource name, respectively.
    var viewOptions = HtmlViewOptions.ForExternalResources("page_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result. External resources are placed in a separate folder.

![Place HTML resources in a separate folder](/viewer/net/images/rendering-basics/render-text-files/render-to-html-external-resources.png)

### Create a single HTML page

If you need to display the entire document content on a single HTML page, enable the [HtmlViewOptions.RenderToSinglePage](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/properties/rendertosinglepage) option, as shown below:

{{< tabs "example5">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("TermsOfService.txt"))
{
    // Convert the text file to HTML.
    // Specify the output file name.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("output.html");
    // Render the file to a single page. 
    viewOptions.RenderToSinglePage = true;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Render text files as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a text file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example6">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("TermsOfService.txt"))
{
    // Convert the text file to PDF.
    var viewOptions = new PdfViewOptions("output.pdf");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a text file to PDF](/viewer/net/images/rendering-basics/render-text-files/render-to-pdf.png)

## Render text files as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a text file to PNG. Use the [PngViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example7">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("TermsOfService.txt"))
{
    // Convert the text file to PNG.
    // {0} is replaced with the current page number in the output image names.
    var viewOptions = new PngViewOptions("output_{0}.png");
    // Set width and height.
    viewOptions.Width = 800;
    viewOptions.Height = 900;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render a text file to PNG](/viewer/net/images/rendering-basics/render-text-files/render-to-png-image.png)

## Render text files as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a text file to JPEG. Use the [JpgViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example8">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("TermsOfService.txt"))
{
    // Convert the text file to JPEG.
    // {0} is replaced with the current page number in the output image names.
    var viewOptions = new JpgViewOptions("output_{0}.jpg");
    // Set width and height.
    viewOptions.Width = 800;
    viewOptions.Height = 1000;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Detect text files encoding

To detect text file encoding automatically, enable the [LoadOptions.DetectEncoding](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/loadoptions/detectencoding/) property. When Viewer fails to detect encoding it falls back to [LoadOptions.Encoding](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/loadoptions/encoding/) property value.

{{< tabs "example9">}}
{{< tab "C#" >}}
```cs
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...
var loadOptions = new LoadOptions();
loadOptions.DetectEncoding = true;
using (var viewer = new Viewer("message.txt", loadOptions))
{
    var viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}          
```
{{< /tab >}}
{{< /tabs >}}

## Specify rendering options

GroupDocs.Viewer supports the [TextOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/textoptions) class that allows you to specify different options for rendering text files. To access these options, use the [TextOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/baseviewoptions/properties/textoptions) property for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)

The `TextOptions` class contains the following properties:

* [MaxRowsPerPage](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/textoptions/properties/maxrowsperpage)---Specifies the maximum number of rows per page. The default value is **55**.

* [MaxCharsPerRow](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/textoptions/properties/maxcharsperrow)---Specifies the maximum number of characters per row. The default value is **85**.

The following example demonstrates how to change the number of rows displayed on each HTML page:

{{< tabs "example10">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("TermsOfService.txt"))
{
    // Convert the text file to HTML.
    // {0} is replaced with the current page number in the output file names.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    // Set the maximum number of rows per page.
    viewOptions.TextOptions.MaxRowsPerPage = 30;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below illustrates the result:

![Specify the number of rows per page](/viewer/net/images/rendering-basics/render-text-files/set-max-rows-per-page.png)
 