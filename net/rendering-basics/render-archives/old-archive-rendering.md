---
id: old-render-archive-files
url: viewer/net/old-render-archive-files
title: Render archives as HTML, PDF, and image files (old version)
weight: 5
description: "This topic describes how to use the GroupDocs.Viewer .NET API (C#) version before 24.10 to display a list of archive content in HTML, PDF, PNG, and JPEG formats and to extract arbitrary file from archive"
productName: GroupDocs.Viewer for .NET
keywords: zip to pdf, zip to html, zip to png, zip to jpeg, rar to pdf, rar to html, rar to png, rar to jpeg, tar to pdf, tar to html, tar to png, tar to jpeg
hideChildren: False
toc: True
---
{{< alert style="info" >}}This article explaing working with archives using old versions of the GroupDocs.Viewer for .NET, before the [version 24.10](https://releases.groupdocs.com/viewer/net/release-notes/2024/groupdocs-viewer-for-net-24-10-release-notes/#new-archive-converter) was released. If you're using GroupDocs.Viewer or newer, please read the [main article]({{< ref "viewer/net/rendering-basics/render-archives/_index.md" >}}).{{< /alert >}}

[GroupDocs.Viewer for .NET](https://products.groupdocs.com/viewer/net) allows you to view the contents of archive files in HTML, PDF, PNG, and JPEG formats. You do not need to use third-party file archiver and compression software to display archive file contents within your .NET application (web or desktop). 

To start using the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class instance. Pass an archive file you want to view to the class constructor. You can load the archive from a file or stream. Call one of the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method overloads to convert the archive file to HTML, PDF, or image format.

{{< button style="primary" link="https://products.groupdocs.app/viewer/archive" >}} {{< icon "gdoc_person" >}} View archive files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

## Supported archive and compressed file formats

GroupDocs.Viewer supports the following archive file formats:

* [.7Z (7-Zip Compressed File)](https://docs.fileformat.com/compression/7z)
* [.BZ2 (Bzip2 Compressed File)](https://docs.fileformat.com/compression/bz2)
* [.GZ (Gnu Zipped Archive)](https://docs.fileformat.com/compression/gz)
* [.RAR (WinRAR Compressed Archive)](https://docs.fileformat.com/compression/rar)
* [.TAR (Consolidated Unix File Archive)](https://docs.fileformat.com/compression/tar)
* [.TGZ / .TAR.GZ (Gzipped Tar File)](https://docs.fileformat.com/compression/tgz/)
* [.TXZ / .TAR.XZ (XZ Compressed Tar Archive)](https://docs.fileformat.com/compression/xz/)
* [.XZ (XZ Compressed Archive)](https://docs.fileformat.com/compression/xz/)
* [.ZIP (Zipped File)](https://docs.fileformat.com/compression/zip)
* [.ZST / .TAR.ZST / .TZST (Zstandard)](https://docs.fileformat.com/compression/zst/)
* [.ISO (Optical Disk Image ISO-9660)](https://docs.fileformat.com/compression/iso/)

GroupDocs.Viewer can detect the archive file format automatically based on information in the file header.

## Render archive files as HTML

To convert an archive file to HTML, call the [HtmlViewOptions.ForEmbeddedResources](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/methods/forembeddedresources/index) method to create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions) class instance and pass this instance to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method.

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("Documents.zip"))
{
    // Create an HTML file for the top folder and each subfolder in the archive.
    // {0} is replaced with the current page number in the output file name.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
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
        Using viewer = New Viewer("Documents.zip")
            ' Create an HTML file for the top folder and each subfolder in the archive.
            ' {0} is replaced with the current page number in the output file name.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an archive file to HTML](/viewer/net/images/rendering-basics/render-archive-files/render-archive-to-html-embedded-resources.png)

### Specify the number of items to render

GroupDocs.Viewer supports the [HtmlViewOptions.ArchiveOptions.ItemsPerPage](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/archiveoptions/itemsperpage/) option that allows you to specify the number of archive items to display on each HTML page. The default property value is **16**.

The following example demonstrates how to set this option in code:

{{< tabs "example2">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("Documents.zip"))
{
    // Create an HTML file for the top folder and each subfolder in the archive.
    // {0} is replaced with the current page number in the output file name.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    // Specify the number of items to display on each HTML page.
    viewOptions.ArchiveOptions.ItemsPerPage = 10;
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
        Using viewer = New Viewer("Documents.zip")
            ' Create an HTML file for the top folder and each subfolder in the archive.
            ' {0} is replaced with the current page number in the output file name.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html")
            ' Specify the number of items to display on each HTML page.
            viewOptions.ArchiveOptions.ItemsPerPage = 10
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

### Create a single HTML page

If you need to display the contents of an archive file on a single HTML page, enable the [HtmlViewOptions.RenderToSinglePage](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions/rendertosinglepage/) option, as shown below:

{{< tabs "example3">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("Documents.zip"))
{
    // Create an HTML file.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("output.html");
    // Render the archive file to a single page.
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
        Using viewer = New Viewer("Documents.zip")
            ' Create an HTML file.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("output.html")
            ' Render the archive file to a single page.
            viewOptions.RenderToSinglePage = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

The animation below demonstrates the result. You can navigate between the archive folders. Click on a particular folder to see its contents. To go backward, click the required folder name in the navigation bar at the top of the web page.

![Navigate between folders in the archive](/viewer/net/images/rendering-basics/render-archive-files/navigate-between-archive-files.gif)

## Render archive files as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an archive file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file or reorder its pages. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example4">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("Documents.zip"))
{
    // Create a PDF file.
    var viewOptions = new PdfViewOptions("output.pdf");
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
        Using viewer = New Viewer("Documents.zip")
            ' Create a PDF file.
            Dim viewOptions = New PdfViewOptions("output.pdf")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an archive file to PDF](/viewer/net/images/rendering-basics/render-archive-files/render-archive-to-pdf.png)

## Render archive files as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an archive file to PNG. Use the [PngViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/height) and [PngViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example5">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("Documents.zip"))
{
    // Create a PNG image for the top folder and each subfolder in the archive.
    // {0} is replaced with the current page number in the image name.
    var viewOptions = new PngViewOptions("output_{0}.png");
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
        Using viewer = New Viewer("Documents.zip")
            ' Create a PNG image for the top folder and each subfolder in the archive.
            ' {0} is replaced with the current page number in the image name.
            Dim viewOptions = New PngViewOptions("output_{0}.png")
            ' Set width and height.
            viewOptions.Width = 800
            viewOptions.Height = 1000
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an archive file to PNG](/viewer/net/images/rendering-basics/render-archive-files/render-archive-to-png-image.png)

## Render archive files as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.View](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer/methods/view/index) method to convert an archive file to JPEG. Use the [JpgViewOptions.Height](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/height) and [JpgViewOptions.Width](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/properties/width) properties to specify the output image size in pixels.

{{< tabs "example6">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("Documents.zip"))
{
    // Create a JPEG image for the top folder and each subfolder in the archive.
    // {0} is replaced with the current page number in the image name.
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
        Using viewer = New Viewer("Documents.zip")
            ' Create a JPEG image for the top folder and each subfolder in the archive.
            ' {0} is replaced with the current page number in the image name.
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
{{< /tabs >}}

## Obtain information about folders in an archive file

Follow the steps below to obtain information about folders contained in an archive file. You can use this information to [specify which folder to display in the output file](#render-a-specific-folder).

1. Create a [ViewInfoOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/viewinfooptions) instance for a specific view.
2. Call the [Viewer.GetViewInfo](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/getviewinfo) method, pass the `ViewInfoOptions` instance to this method as a parameter, and cast the returned object to the [ArchiveViewInfo](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.results/archiveviewinfo) type.
3. Use the [ArchiveViewInfo.Folders](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.results/archiveviewinfo/folders/) property to obtain the lists of folders in the archive file.

{{< tabs "example7">}}
{{< tab "C#" >}}
```csharp
using System;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Results;
// ...

using (var viewer = new Viewer("Documents.zip"))
{
    var viewInfoOptions = ViewInfoOptions.ForHtmlView();
    var viewInfo = viewer.GetViewInfo(viewInfoOptions) as ArchiveViewInfo;

    if (viewInfo != null)
    {
        Console.WriteLine($"File type: {viewInfo.FileType}");
        Console.WriteLine($"The number of pages: {viewInfo.Pages.Count}");
        Console.WriteLine("Folders: ");
        // Display the list of folders in the archive file.
        foreach (string folder in viewInfo.Folders)
            Console.WriteLine($" - {folder}");
    }
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports System
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
Imports GroupDocs.Viewer.Results
' ...

Module Program
    Sub Main(args As String())
        Using viewer = New Viewer("Documents.zip")
            Dim viewInfoOptions = ViewInfoOptions.ForHtmlView()
            Dim viewInfo = TryCast(viewer.GetViewInfo(viewInfoOptions), ArchiveViewInfo)

            If viewInfo IsNot Nothing Then
                Console.WriteLine($"File type: {viewInfo.FileType}")
                Console.WriteLine($"The number of pages: {viewInfo.Pages.Count}")
                Console.WriteLine("Folders: ")
                ' Display the list of folders in the archive file.
                For Each folder As String In viewInfo.Folders
                    Console.WriteLine($" - {folder}")
                Next
            End If
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![Get information about an archive file](/viewer/net/images/rendering-basics/render-archive-files/retrieve-archive-information.png)

GroupDocs.Viewer also allows you to list and extract all files contained in the archive. Refer to the following help topics for details:

* [List attachments](/viewer/net/how-to-list-attachments/)
* [Save attachments](/viewer/net/how-to-extract-and-save-attachments/)

## Render a specific folder

When you convert an archive file to HTML, PDF, or image format, GroupDocs.Viewer renders items from all folders contained in the archive. If you need to render items from a specific folder, specify the [ArchiveOptions.Folder](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/archiveoptions/properties/folder) property for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions)

{{< tabs "example8">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("Documents.zip"))
{
    // Create an HTML file.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("output.html");
    // Specify a folder to render items from.
    viewOptions.ArchiveOptions.Folder = "Documents/CAD files";
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
        Using viewer = New Viewer("Documents.zip")
            ' Create an HTML file.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("output.html")
            ' Specify a folder to render items from.
            viewOptions.ArchiveOptions.Folder = "Documents/CAD files"
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

## Specify the archive file name

When rendering an archive file, GroupDocs.Viewer displays the archive file name in the header of each page. If you need to change or hide this name, define the [ArchiveOptions.FileName](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/archiveoptions/filename/) property for a target view. You can set this option to one of the following values:

* [FileName.Source](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/filename/source/)--- Returns the name of the source file (this name is used by default).
* [FileName.Empty](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/archiveoptions/properties/filename/empty)---Specifies an empty name. Use this value to hide the archive file name in the output file.
* A [FileName](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/filename/filename/) instance with a custom name you want to display in the output file.

The following code snippet demonstrates how to use a custom name when rendering an archive file to HTML:

{{< tabs "example9">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("Documents.zip"))
{
    // Create an HTML file for the top folder and each subfolder in the archive.
    // {0} is replaced with the current page number in the output file name.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html");
    // Specify a custom filename
    viewOptions.ArchiveOptions.FileName = new FileName("Sample Files");
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
        Using viewer = New Viewer("Documents.zip")
            ' Create an HTML file for the top folder and each subfolder in the archive.
            ' {0} is replaced with the current page number in the output file name.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("page_{0}.html")
            ' Specify a custom filename
            viewOptions.ArchiveOptions.FileName = New FileName("Sample Files")
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result.

![Set a custom archive name](/viewer/net/images/rendering-basics/render-archive-files/set-archive-name.png)