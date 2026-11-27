---
id: render-text-files
url: viewer/net/render-text-files
title: Render text documents as HTML, PDF, and image files
linkTitle: Render text documents
weight: 12
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
* [.YAML (YAML Document)](https://docs.fileformat.com/programming/yaml/)

When you load a text document from a file or [FileStream](https://learn.microsoft.com/en-us/dotnet/api/system.io.filestream), GroupDocs.Viewer detects the document's format based on the filename extension. If you use other stream types to load your document (such as [MemoryStream](https://learn.microsoft.com/en-us/dotnet/api/system.io.memorystream) or [NetworkStream](https://learn.microsoft.com/en-us/dotnet/api/system.net.sockets.networkstream)), GroupDocs.Viewer can determine the file format only for the following document types: TXT, CS, and VB. For other file types, you should explicitly specify their format. To do this, create a [LoadOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/loadoptions) class instance with the [FileType](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/filetype) parameter and pass this instance to the [Viewer](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class constructor.

{{< tabs "render-text-with-load-options">}}
{{< tab "C#" >}}
```csharp
using System.IO;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

Stream stream = File.OpenRead("terms_of_service.md");

// Specify the file encoding. 
LoadOptions loadOptions = new LoadOptions(FileType.MD);

// Convert the document to PDF.
using (var viewer = new Viewer(stream, loadOptions))
{
    var viewOptions = new PdfViewOptions("render-text-with-load-options.pdf");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports System.IO
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
            Dim stream As Stream = File.OpenRead("terms_of_service.md")
        
            ' Specify the file encoding. 
            Dim loadOptions As LoadOptions = New LoadOptions(FileType.MD)
        
            ' Convert the document to PDF.
            Using viewer = New Viewer(stream, loadOptions)
                Dim viewOptions = New PdfViewOptions("render-text-with-load-options.pdf")
                viewer.View(viewOptions)
            End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "terms_of_service.md" >}}
{{< tab-text >}}
`terms_of_service.md` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-text-files/terms_of_service.md) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-text-with-load-options.pdf" >}}  
```text
Binary file (PDF, 85 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-text-files/RenderTextWithLoadOptions/render-text-with-load-options.pdf)
{{< /tab >}}
{{< /tabs >}}

## Render text files as HTML

Create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a text file to HTML. The `HtmlViewOptions` class properties allow you to control the conversion process. For instance, you can embed all external resources in the generated HTML file, minify the output file, and optimize it for printing. Refer to the following documentation section for details: [Rendering to HTML]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-html/_index.md" >}}).

### Create HTML files with embedded resources

To save all elements of an HTML page (including text, graphics, and stylesheets) into a single file, call the [HtmlViewOptions.ForEmbeddedResources](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method and specify the output file name.

{{< tabs "render-text-to-html">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("terms_of_service.txt"))
{
    // Convert the text file to HTML.
    // {0} is replaced with the current page number in the output file names.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("render-text-to-html_{0}.html");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("terms_of_service.txt")
            ' Convert the text file to HTML.
            ' {0} is replaced with the current page number in the output file names.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("render-text-to-html_{0}.html")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "terms_of_service.txt" >}}
{{< tab-text >}}
`terms_of_service.txt` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-text-files/terms_of_service.txt) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-text-to-html.zip" >}}  
```text
render-text-to-html_1.html (2 KB)
render-text-to-html_2.html (3 KB)
render-text-to-html_3.html (2 KB)
render-text-to-html_4.html (1 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-text-files/RenderTextToHtml/render-text-to-html.zip)
{{< /tab >}}
{{< /tabs >}}

### Create HTML files with external resources

If you want to store output HTML files and additional resource files (such as fonts, images, and style sheets) separately, call the [HtmlViewOptions.ForExternalResources](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forexternalresources/index) method and pass the following parameters:

  * The output file path format
  * The path format for the folder with external resources
  * The resource URL format

{{< tabs "render-text-to-html-external">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("terms_of_service.txt"))
{
    // Convert the text file to HTML.
    // Specify the output file names and location of external resources.
    // {0} and {1} are replaced with the current page number and resource name, respectively.
    var viewOptions = HtmlViewOptions.ForExternalResources("render-text-to-html-external_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("terms_of_service.txt")
            ' Convert the text file to HTML.
            ' Specify the output file names and location of external resources.
            ' {0} and {1} are replaced with the current page number and resource name, respectively.
            Dim viewOptions = HtmlViewOptions.ForExternalResources("render-text-to-html-external_{0}.html", "page_{0}/resource_{0}_{1}", "page_{0}/resource_{0}_{1}")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "terms_of_service.txt" >}}
{{< tab-text >}}
`terms_of_service.txt` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-text-files/terms_of_service.txt) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-text-to-html-external.zip" >}}  
```text
page_1/resource_1_s.css (109 bytes)
page_2/resource_2_s.css (109 bytes)
page_3/resource_3_s.css (109 bytes)
page_4/resource_4_s.css (109 bytes)
render-text-to-html-external_1.html (2 KB)
render-text-to-html-external_2.html (2 KB)
render-text-to-html-external_3.html (2 KB)
render-text-to-html-external_4.html (1 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-text-files/RenderTextToHtmlExternal/render-text-to-html-external.zip)
{{< /tab >}}
{{< /tabs >}}

External resources are placed in a separate folder.

### Create a single HTML page

If you need to display the entire document content on a single HTML page, enable the [HtmlViewOptions.RenderToSinglePage](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/properties/rendertosinglepage) option, as shown below:

{{< tabs "render-text-to-single-html">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("terms_of_service.txt"))
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
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("terms_of_service.txt")
            ' Convert the text file to HTML.
            ' Specify the output file name.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("output.html")
            ' Render the file to a single page. 
            viewOptions.RenderToSinglePage = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "terms_of_service.txt" >}}
{{< tab-text >}}
`terms_of_service.txt` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-text-files/terms_of_service.txt) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.html" >}}  
```text
HTML file (7 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-text-files/RenderTextToSingleHtml/output.html)
{{< /tab >}}
{{< /tabs >}}

## Render text files as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a text file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file, reorder its pages, and specify the quality of document images. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "render-text-to-pdf">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("terms_of_service.txt"))
{
    // Convert the text file to PDF.
    var viewOptions = new PdfViewOptions("render-text-to-pdf.pdf");
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("terms_of_service.txt")
            ' Convert the text file to PDF.
            Dim viewOptions = New PdfViewOptions("render-text-to-pdf.pdf")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "terms_of_service.txt" >}}
{{< tab-text >}}
`terms_of_service.txt` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-text-files/terms_of_service.txt) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-text-to-pdf.pdf" >}}  
```text
Binary file (PDF, 109 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-text-files/RenderTextToPdf/render-text-to-pdf.pdf)
{{< /tab >}}
{{< /tabs >}}

## Render text files as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a text file to PNG. Use the [PngViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "render-text-to-png">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("terms_of_service.txt"))
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
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("terms_of_service.txt")
            ' Convert the text file to PNG.
            ' {0} is replaced with the current page number in the output image names.
            Dim viewOptions = New PngViewOptions("output_{0}.png")
            ' Set width and height.
            viewOptions.Width = 800
            viewOptions.Height = 900
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "terms_of_service.txt" >}}
{{< tab-text >}}
`terms_of_service.txt` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-text-files/terms_of_service.txt) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-text-to-png.zip" >}}  
```text
output_1.png (120 KB)
output_2.png (134 KB)
output_3.png (118 KB)
output_4.png (63 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-text-files/RenderTextToPng/render-text-to-png.zip)
{{< /tab >}}
{{< /tabs >}}

## Render text files as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert a text file to JPEG. Use the [JpgViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "render-text-to-jpg">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("terms_of_service.txt"))
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
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("terms_of_service.txt")
            ' Convert the text file to JPEG.
            ' {0} is replaced with the current page number in the output image names.
            Dim viewOptions = New JpgViewOptions("output_{0}.jpg")
            ' Set width and height.
            viewOptions.Width = 800
            viewOptions.Height = 1000
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "terms_of_service.txt" >}}
{{< tab-text >}}
`terms_of_service.txt` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-text-files/terms_of_service.txt) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-text-to-jpg.zip" >}}  
```text
output_1.jpg (126 KB)
output_2.jpg (145 KB)
output_3.jpg (128 KB)
output_4.jpg (70 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-text-files/RenderTextToJpg/render-text-to-jpg.zip)
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

{{< tabs "render-text-with-options">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("terms_of_service.txt"))
{
    // Convert the text file to HTML.
    // {0} is replaced with the current page number in the output file names.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("render-text-with-options_{0}.html");
    // Set the maximum number of rows per page.
    viewOptions.TextOptions.MaxRowsPerPage = 30;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("terms_of_service.txt")
            ' Convert the text file to HTML.
            ' {0} is replaced with the current page number in the output file names.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("render-text-with-options_{0}.html")
            ' Set the maximum number of rows per page.
            viewOptions.TextOptions.MaxRowsPerPage = 30
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "terms_of_service.txt" >}}
{{< tab-text >}}
`terms_of_service.txt` is the sample file used in this example. Click [here](/viewer/net/_sample_files/rendering-basics/render-text-files/terms_of_service.txt) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "render-text-with-options.zip" >}}  
```text
render-text-with-options_1.html (1 KB)
render-text-with-options_2.html (1 KB)
render-text-with-options_3.html (2 KB)
render-text-with-options_4.html (2 KB)
render-text-with-options_5.html (1 KB)
render-text-with-options_6.html (1 KB)
render-text-with-options_7.html (1 KB)
```
[Download full output](/viewer/net/_output_files/rendering-basics/render-text-files/RenderTextWithOptions/render-text-with-options.zip)
{{< /tab >}}
{{< /tabs >}}
