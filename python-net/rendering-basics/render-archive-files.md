---
id: render-archive-files
url: viewer/python-net/render-archive-files
title: Render archives as HTML, PDF, and image files
linkTitle: Render Archive files
weight: 15
description: "Convert archive files (ZIP, RAR, etc.) to HTML, PDF, PNG, or JPEG using GroupDocs.Viewer for Python."
productName: GroupDocs.Viewer for Python via .Net
keywords: zip conversion, PDF conversion, HTML conversion, image conversion, archive rendering, GroupDocs.Viewer, file rendering
hideChildren: False
toc: True
aliases:
    - /viewer/python-net/how-to-convert-and-view-7z-files
    - /viewer/python-net/view-archive-files
    - /viewer/python-net/how-to-convert-and-view-archive-files
    - /viewer/python-net/how-to-convert-and-view-tgz-files
    - /viewer/python-net/how-to-convert-and-view-txz-files
    - /viewer/python-net/how-to-convert-and-view-xz-files
    - /viewer/python-net/how-to-list-archive-folders
    - /viewer/python-net/render-archive-folder
    - /viewer/python-net/navigation-in-archive-files
    - /viewer/python-net/how-to-convert-archive-files-to-html
    - /viewer/python-net/set-filename-when-rendering-archive-files
---
[GroupDocs.Viewer for Python via .Net](https://products.groupdocs.com/viewer/python-net) allows you to view the contents of archive files in HTML, PDF, PNG, and JPEG formats. You do not need to use third-party file archiver and compression software to display archive file contents within your .NET application (web or desktop). 

To start using the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) class instance. Pass an archive file you want to view to the class constructor. You can load the archive from a file or stream. Call one of the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method overloads to convert the archive file to HTML, PDF, or image format.

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

GroupDocs.Viewer can detect the archive file format automatically based on information in the file header.

## Render archive files as HTML

To convert an archive file to HTML, call the [HtmlViewOptions.for_embedded_resources](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#methods) method to create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions) class instance and pass this instance to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method.

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer("Documents.zip") as viewer:
    # Create an HTML file for the top folder and each subfolder in the archive.
    # {0} is replaced with the current page number in the output file name.
    viewOptions = gvo.HtmlViewOptions.for_embedded_resources("page_{0}.html")
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an archive file to HTML](/viewer/python-net/images/rendering-basics/render-archive-files/render-archive-to-html-embedded-resources.png)

### Specify the number of items to render

GroupDocs.Viewer supports the [HtmlViewOptions.archive_options.items_per_page](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/archiveoptions/#properties) option that allows you to specify the number of archive items to display on each HTML page. The default property value is **16**.

The following example demonstrates how to set this option in code:

{{< tabs "example2">}}
{{< tab "Python" >}}
```python
with gv.Viewer("Documents.zip") as viewer:
    # Create an HTML file for the top folder and each subfolder in the archive.
    # {0} is replaced with the current page number in the output file name.
    viewOptions = gvo.HtmlViewOptions.for_embedded_resources("page_{0}.html")
    # Specify the number of items to display on each HTML page.
    viewOptions.archive_options.items_per_page = 10
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

### Create a single HTML page

If you need to display the contents of an archive file on a single HTML page, enable the [HtmlViewOptions.render_to_single_page](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions/#properties) option, as shown below:

{{< tabs "example3">}}
{{< tab "Python" >}}
```python
with gv.Viewer("Documents.zip") as viewer:
    # Create an HTML file.
    viewOptions = gvo.HtmlViewOptions.for_embedded_resources("output.html")
    # Render the archive file to a single page.
    viewOptions.render_to_single_page = True
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The animation below demonstrates the result. You can navigate between the archive folders. Click on a particular folder to see its contents. To go backward, click the required folder name in the navigation bar at the top of the web page.

![Navigate between folders in the archive](/viewer/python-net/images/rendering-basics/render-archive-files/navigate-between-archive-files.gif)

## Render archive files as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert an archive file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file or reorder its pages. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/python-net/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example4">}}
{{< tab "Python" >}}
```python
with gv.Viewer("Documents.zip") as viewer:
    # Create a PDF file.
    viewOptions = gvo.PdfViewOptions("output.pdf")
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an archive file to PDF](/viewer/python-net/images/rendering-basics/render-archive-files/render-archive-to-pdf.png)

## Render archive files as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert an archive file to PNG. Use the [PngViewOptions.height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/#properties) and [PngViewOptions.width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions/#properties) properties to specify the output image size in pixels.

{{< tabs "example5">}}
{{< tab "Python" >}}
```python
with gv.Viewer("Documents.zip") as viewer:
    # Create a PNG image for the top folder and each subfolder in the archive.
    # {0} is replaced with the current page number in the image name.
    viewOptions = gvo.PngViewOptions("output_{0}.png")
    # Set width and height.
    viewOptions.width = 800
    viewOptions.height = 1000
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an archive file to PNG](/viewer/python-net/images/rendering-basics/render-archive-files/render-archive-to-png-image.png)

## Render archive files as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method to convert an archive file to JPEG. Use the [JpgViewOptions.height](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/#properties) and [JpgViewOptions.width](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions/#properties) properties to specify the output image size in pixels.

{{< tabs "example6">}}
{{< tab "Python" >}}
```python
with gv.Viewer("Documents.zip") as viewer:
    # Create a JPEG image for the top folder and each subfolder in the archive.
    # {0} is replaced with the current page number in the image name.
    viewOptions = gvo.JpgViewOptions("output_{0}.jpg")
    # Set width and height.
    viewOptions.width = 800
    viewOptions.height = 1000
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

## Obtain information about folders in an archive file

Follow the steps below to obtain information about folders contained in an archive file. You can use this information to [specify which folder to display in the output file](#render-a-specific-folder).

1. Create a [ViewInfoOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/viewinfooptions) instance for a specific view.
2. Call the [Viewer.get_view_info](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer/viewer/#methods) method, pass the `ViewInfoOptions` instance to this method as a parameter, and cast the returned object to the [ArchiveViewInfo](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.results/archiveviewinfo) type.
3. Use the [ArchiveViewInfo.folders](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.results/archiveviewinfo/#properties) property to obtain the lists of folders in the archive file.

{{< tabs "example7">}}
{{< tab "Python" >}}
```python
import groupdocs.viewer as gv
import groupdocs.viewer.options as gvo
import groupdocs.viewer.results as gvr

with gv.Viewer("Documents.zip") as viewer:
    info = viewer.get_view_info(gvo.ViewInfoOptions.for_html_view())

    print("File type:", info.file_type)
    print("The number of pages:", len(info.pages))

    print("Folders:")
    print(" - /")

    root_folder = ""
    read_folders(viewer, root_folder)

def read_folders(viewer, folder):
    options = gvo.ViewInfoOptions.for_html_view()
    options.archive_options.folder = folder

    view_info = viewer.get_view_info(options)
    archive_view_info = cast(gvr.ArchiveViewInfo, view_info)
    
    for sub_folder in archive_view_info.folders:
        print(f" - {sub_folder}")
        read_folders(viewer, sub_folder)
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![Get information about an archive file](/viewer/python-net/images/rendering-basics/render-archive-files/retrieve-archive-information.png)

GroupDocs.Viewer also allows you to list and extract all files contained in the archive. Refer to the following help topics for details:

* [List attachments](/viewer/python-net/how-to-list-attachments/)
* [Save attachments](/viewer/python-net/how-to-extract-and-save-attachments/)

## Render a specific folder

When you convert an archive file to HTML, PDF, or image format, GroupDocs.Viewer renders items from all folders contained in the archive. If you need to render items from a specific folder, specify the [ArchiveOptions.folder](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/archiveoptions/#properties) property for one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/python-net/viewer/groupdocs.viewer.options/jpgviewoptions)

{{< tabs "example8">}}
{{< tab "Python" >}}
```python
with gv.Viewer("Documents.zip") as viewer:
    # Create an HTML file.
    viewOptions = gvo.HtmlViewOptions.for_embedded_resources("output.html")
    options.archive_options.folder = "Documents/CAD files"
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

## Specify the archive file name

When rendering an archive file, GroupDocs.Viewer displays the archive file name in the header of each page. If you need to change or hide this name, define the [archive_options.file_name](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/archiveoptions/#properties) property for a target view. You can set this option to one of the following values:

* [FileName.SOURCE](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/filename/#properties)--- Returns the name of the source file (this name is used by default).
* [FileName.EMPTY](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/filename/#properties)---Specifies an empty name. Use this value to hide the archive file name in the output file.
* A [FileName](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/filename/) instance with a custom name you want to display in the output file.

The following code snippet demonstrates how to use a custom name when rendering an archive file to HTML:

{{< tabs "example9">}}
{{< tab "Python" >}}
```python
with gv.Viewer("Documents.zip") as viewer:
    # Create an HTML file for the top folder and each subfolder in the archive.
    # {0} is replaced with the current page number in the output file name.
    viewOptions = gvo.HtmlViewOptions.for_embedded_resources("page_{0}.html")
    # Specify a custom filename
    options.archive_options.file_name = gvo.FileName("Sample Files")
    viewer.view(viewOptions)
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result.

![Set a custom archive name](/viewer/python-net/images/rendering-basics/render-archive-files/set-archive-name.png)
