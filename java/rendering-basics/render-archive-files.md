---
id: render-archive-files
url: viewer/java/render-archive-files
title: Render archives as HTML, PDF, and image files
linkTitle: Render archive files
weight: 15
description: "This topic describes how to use the GroupDocs.Viewer Java API to convert archive files to HTML, PDF, PNG, and JPEG formats."
productName: GroupDocs.Viewer for Java
keywords: zip to pdf, zip to html, zip to png, zip to jpeg, rar to pdf, rar to html, rar to png, rar to jpeg, tar to pdf, tar to html, tar to png, tar to jpeg
hideChildren: False
toc: True
aliases:
    - /viewer/java/how-to-convert-and-view-7z-files
    - /viewer/java/view-archive-files
    - /viewer/java/how-to-convert-and-view-archive-files
    - /viewer/java/how-to-convert-and-view-tgz-files
    - /viewer/java/how-to-convert-and-view-txz-files
    - /viewer/java/how-to-convert-and-view-xz-files
    - /viewer/java/how-to-list-archive-folders
    - /viewer/java/render-archive-folder
    - /viewer/java/navigation-in-archive-files
    - /viewer/java/how-to-convert-archive-files-to-html
    - /viewer/java/set-filename-when-rendering-archive-files
---
[GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) allows you to view the contents of archive files in HTML, PDF, PNG, and JPEG formats. You do not need to use third-party file archiver and compression software to display archive file contents within your Java application (web or desktop). 

To start using the GroupDocs.Viewer API, create a [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer) class instance. Pass an archive file you want to view to the class constructor. You can load the archive from a file or stream. Call one of the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method overloads to convert the archive file to HTML, PDF, or image format.

{{< button style="primary" link="https://products.groupdocs.app/viewer/archive" >}} {{< icon "gdoc_person" >}} View archive files online {{< /button >}} {{< button style="primary" link="https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java" >}} {{< icon "gdoc_github" >}} View demos and examples on GitHub {{< /button >}}

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

To convert an archive file to HTML, call the [HtmlViewOptions.forEmbeddedResources](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#forEmbeddedResources--) method to create an [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions) class instance and pass this instance to the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method.

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("Documents.zip")) {
    // Create an HTML file for top folder and each subfolder in the archive.
    // {0} is replaced with the current page number in the file name.
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("page_{0}.html");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an archive file to HTML](/viewer/java/images/rendering-basics/render-archive-files/render-archive-to-html-embedded-resources.png)

### Specify the number of items to render

GroupDocs.Viewer supports the [HtmlViewOptions.ArchiveOptions.setItemsPerPage](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/archiveoptions/#setItemsPerPage-int-) method that allows you to specify the number of archive items to display on each HTML page. The default property value is **16**.

The following example demonstrates how to set this option in code:

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("Documents.zip")) {
{
    // Create an HTML file for the top folder and each subfolder in the archive.
    // {0} is replaced with the current page number in the output file name.
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("page_{0}.html");
    // Specify the number of items to display on each HTML page.
    viewOptions.ArchiveOptions.setItemsPerPage(10);
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

### Create a single HTML page

If you need to display the contents of an archive file on a single HTML page, use the [HtmlViewOptions.setRenderToSinglePage](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#setRenderToSinglePage-boolean-) method, as shown below:

{{< tabs "example3">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("Documents.zip")) {
{
    // Create an HTML file for the top folder and each subfolder in the archive.
    // {0} is replaced with the current page number in the output file name.
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("page_{0}.html");
    // Render the archive file to a single page.
    viewOptions.setRenderToSinglePage(true);
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The animation below demonstrates the result. You can navigate between the archive folders. Click on a particular folder to see its contents. To go backward, click the required folder name in the navigation bar at the top of the web page.

![Navigate between folders in the archive](/viewer/java/images/rendering-basics/render-archive-files/navigate-between-archive-files.gif)

## Render archive files as PDF

Create a [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method to convert an archive file to PDF. The `PdfViewOptions` class properties allow you to control the conversion process. For instance, you can protect the output PDF file or reorder its pages. Refer to the following documentation section for details: [Rendering to PDF]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}}).

{{< tabs "example4">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
// ...

try (Viewer viewer = new Viewer("Documents.zip")) {PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Render an archive file to PDF](/viewer/java/images/rendering-basics/render-archive-files/render-archive-to-pdf.png)

## Render archive files as PNG

Create a [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method to convert an archive file to PNG. Use the [PngViewOptions.setHeight](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/#setHeight-int-) and [PngViewOptions.setWidth](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/#setWidth-int-) methods to specify the output image size in pixels.

{{< tabs "example5">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PngViewOptions;
// ...

try (Viewer viewer = new Viewer("Documents.zip")) {
    // Create a PNG image for the top folder and each subfolder in the archive.
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

![Render an archive file to PNG](/viewer/java/images/rendering-basics/render-archive-files/render-archive-to-png-image.png)

## Render archive files as JPEG

Create a [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions) class instance and pass it to the [Viewer.view](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) method to convert an archive file to JPEG. Use the [JpgViewOptions.setHeight](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/#setHeight-int-) and [JpgViewOptions.setWidth](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/#setWidth-int-) methods to specify the output image size in pixels.

{{< tabs "example6">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.JpgViewOptions;
// ...

try (Viewer viewer = new Viewer("Documents.zip")) {
    // Create a JPG image for the top folder and each subfolder in the archive.
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

## Obtain information about folders in an archive file

Follow the steps below to obtain information about folders contained in an archive file. You can use this information to [specify which folder to display in the output file](#render-a-specific-folder).

1. Create a [ViewInfoOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/viewinfooptions) instance for a specific view.
2. Call the [Viewer.getViewInfo](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#getViewInfo-com.groupdocs.viewer.options.ViewInfoOptions-) method, pass the `ViewInfoOptions` instance to this method as a parameter, and cast the returned object to the [ArchiveViewInfo](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/archiveviewinfo/) type.
3. Use the [ArchiveViewInfo.getFolders](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/archiveviewinfo/#getFolders--) method to obtain the lists of folders in the archive file.

{{< tabs "example7">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.ViewInfoOptions;
import com.groupdocs.viewer.results.ArchiveViewInfo;
import com.groupdocs.viewer.results.ViewInfo;

public class GetViewInfoForArchiveFile {

    /**
     * This example demonstrates how to get view info for Archive files.
     */
    public static void run() {
        try (Viewer viewer = new Viewer(TestFiles.SAMPLE_ZIP_WITH_FOLDERS)) {
            ViewInfo viewInfo = viewer.getViewInfo(ViewInfoOptions.forHtmlView());

            System.out.println("File type: " + viewInfo.getFileType());
            System.out.println("Pages count: " + viewInfo.getPages().size());
            System.out.println("Folders: ");
            System.out.println(" - /");

            String rootFolder = "";
            readFolders(viewer, rootFolder);
        }

        System.out.println("\nView info retrieved successfully.");
    }

    private static void readFolders(Viewer viewer, String folder) {
        ViewInfoOptions viewInfoOptions = ViewInfoOptions.forHtmlView();
        viewInfoOptions.getArchiveOptions().setFolder(folder);

        ArchiveViewInfo viewInfo = (ArchiveViewInfo) viewer.getViewInfo(viewInfoOptions);

        for (String subFolder : viewInfo.getFolders()) {
            System.out.println(" - " + subFolder);

            readFolders(viewer, subFolder);
        }
    }
}
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![Get information about an archive file](/viewer/java/images/rendering-basics/render-archive-files/retrieve-archive-information.png)

GroupDocs.Viewer also allows you to list and extract all files contained in the archive. Refer to the following help topics for details:

* [List attachments](/viewer/java/how-to-list-attachments/)
* [Save attachments](/viewer/java/how-to-extract-and-save-attachments/)

## Render a specific folder

When you convert an archive file to HTML, PDF, or image format, GroupDocs.Viewer renders items from all folders contained in the archive. If you need to render items from a specific folder, use the [ArchiveOptions.setFolder](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/archiveoptions/#setFolder-java.lang.String-) method of one of the following classes (depending on the output file format):

* [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions) 
* [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions)
* [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions)
* [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions)

{{< tabs "example8">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("page_{0}.html");
viewOptions.getArchiveOptions().setFolder("Documents/CAD files");

try (Viewer viewer = new Viewer("Documents.zip")) {
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

## Specify the archive file name

When rendering an archive file, GroupDocs.Viewer displays the archive file name in the header of each page. If you need to change or hide this name, use the [ArchiveOptions.setFileName](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/archiveoptions/#setFileName-com.groupdocs.viewer.options.FileName-) method for a target view. You can set this option to one of the following values:

* [FileName.Source](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/filename/#SOURCE)--- Returns the name of the source file (this name is used by default).
* [FileName.Empty](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/filename/#EMPTY)---Specifies an empty name. Use this value to hide the archive file name in the output file.
* A [FileName](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/filename) instance with a custom name you want to display in the output file.

The following code snippet demonstrates how to use a custom name when rendering an archive file to HTML:

{{< tabs "example9">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
// ...

try (Viewer viewer = new Viewer("Documents.zip")) {
   HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("page_{0}.html");
    viewOptions.getArchiveOptions().setFileName(new FileName("Sample Files"));

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

The image below demonstrates the result.

![Set a custom archive name](/viewer/java/images/rendering-basics/render-archive-files/set-archive-name.png)
