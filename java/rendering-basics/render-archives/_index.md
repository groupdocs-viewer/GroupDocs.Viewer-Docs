---
id: render-archive-files
url: viewer/java/render-archive-files
title: Render archives as HTML, PDF, and image files
linkTitle: Render archive files
weight: 18
description: "This topic describes how to use the GroupDocs.Viewer Java API to display a list of archive content in HTML, PDF, PNG, and JPEG formats and to extract arbitrary file from archive."
productName: GroupDocs.Viewer for Java
keywords: zip to pdf, zip to html, zip to png, zip to jpeg, rar to pdf, rar to html, rar to png, rar to jpeg, tar to pdf, tar to html, tar to png, tar to jpeg, zstandard to html, 7z to html
hideChildren: False
toc: True
aliases:
    - /viewer/java/render-archives
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
[GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) allows to view the list of content of archive files and represent it in HTML, PDF, PNG and JPEG formats. It also allows to extract any arbitrary file from the archive. It does not require to use any third-party file archiver and/or compression software to display archive file contents within a Java application (web or desktop).

Displaying a list of content of  archive files in GroupDocs.Viewer is similar to other formats. You need to create an instance of the [`Viewer`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) class, and specify an archive document in its constructor [as a path to the file or a byte stream](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#Viewer-java.lang.String-). Optionally, you can pass a load options, where a password for opening an encoded archive document can be specified. Then you need to select a desired output format, in which the archive content will be represented: HTML ([`HtmlViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/)), PDF ([`PdfViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/)), PNG ([`PngViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/)), or JPEG ([`JpgViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/)). Finally, call the [`Viewer.view()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#view-com.groupdocs.viewer.options.ViewOptions-) instance method to obtain a result.

GroupDocs.Viewer for Java had support of archive formats from its very beginning. However, starting from the [version 25.6](https://releases.groupdocs.com/viewer/java/release-notes/2025/groupdocs-viewer-for-java-25-6-release-notes/) the archive processing module was completely reworked. In short, the way of displaying a list of entries from the archive was completely changed, as well as a final representation. Also, the performance was drastically improved. The public options are left the same, the only change in a public API is an `setItemsPerPage()` property of [`ArchiveOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/archiveoptions/) class, which now is marked as obsolete because it has no effect now. This article explains and displays the new archive processing module. If you’re using the older versions of the GroupDocs.Viewer before the 25.6, the old version of this article can be found [here]({{< ref "/viewer/java/rendering-basics/render-archives/old-render-archive-files.md" >}}).

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
* [.ZST / .TAR.ZST / .TZST (Zstandard)](https://docs.fileformat.com/compression/zst/)
* [.ISO (Optical Disk Image ISO-9660)](https://docs.fileformat.com/compression/iso/)
* [.CAB (Cabinet)](https://en.wikipedia.org/wiki/Cabinet_(file_format))
* [.WIM (Windows Imaging Format file)](https://docs.fileformat.com/disc-and-media/wim/)

GroupDocs.Viewer can detect the archive file format automatically based on information in the file header.

## Loading archives

The 1st stage of document processing using the GroupDocs.Viewer is loading the document, and archives are not the exceptions. The simplest way is just to path the absolute or relative path of the archive file to the [constructor](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#constructors) of the [`Viewer`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) class. If an archive document is represented as a [InputStream](https://docs.oracle.com/javase/8/docs/api/java/io/InputStream.html), this stream can be specified in the overload of the constructor of the [`Viewer`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer/viewer) class as well, but make sure that this stream is readable ([`available()`](https://docs.oracle.com/javase/8/docs/api/java/io/InputStream.html#available--)) and its position points to the correct place. Finally, if an archive is encoded and password-protected, and you know this password, it should be specified in the [`LoadOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/loadoptions/), or a [`GroupDocsViewerException`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.exception/groupdocsviewerexception/) exception will be thrown instead.

Code sample below shows loading of two archive files into two Viewer instances: 1st file is specified by path, while 2nd — by a stream and with load options with password.

{{< tabs "code-example">}}
{{< tab "LoadingArchive.java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.LoadOptions;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

public class LoadingArchive {
    public static void view() throws FileNotFoundException {
        String inputArchivePath = "Archive.zip";
        try (Viewer viewer1 = new Viewer(inputArchivePath))
        {
            // view it
        }

        InputStream inputArchiveStream = new FileInputStream(inputArchivePath);

        LoadOptions loadOptions = new LoadOptions();
        loadOptions.setPassword("password");

        try (Viewer viewer2 = new Viewer(inputArchiveStream, loadOptions))
        {
            // view it
        }
    }
}
```
{{< /tab >}}
{{< tab "Archive.zip" >}}  
{{< tab-text >}}
`Archive.zip` is sample archive used in this example. Click [here](/viewer/java/sample-files/rendering-basics/render-archives/Archive.zip) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Representation

After the archive document is loaded and an instance of the [`Viewer`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) class is created, it can be viewed using a [`Viewer.view()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#view-com.groupdocs.viewer.options.ViewOptions-) instance method. The “viewing” means displaying a list of content, stored within an archive, in desired output format. In general, this is a tree view, with folders and files, stored within these folders, sorted by default Windows-based order. This means that within one folder all subfolders are located first, sorted in [lexicographic order](https://en.wikipedia.org/wiki/Lexicographic_order), followed by files, also sorted in lexicographic order. However, the GroupDocs.Viewer implements not a “pure” lexicographic order, but a Windows-like “natural” order, where “file10.txt” is located _after_ the “file9.txt”, but not before it.

Like for all supported formats, GroupDocs.Viewer supports 4 output formats for the representation: HTML, PDF, PNG, and JPEG.

### Render archive files as HTML

For saving the documents (including archives) to the HTML format the GroupDocs.Viewer provides a [`HtmlViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/) class. Currently, there is only one way to create an instance of this class: by using the [`forEmbeddedResources()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#forEmbeddedResources--) static method. When using this ([`forEmbeddedResources()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#forEmbeddedResources--) method, all the resources (stylesheets, raster and vector images, and fonts) are stored inside the HTML markup in base64 encoding.

In the context of archive documents and their rendering to HTML format, the resultant HTML document, which contains a list of files and folders within the archive, contains only stylesheet and icons, representing the folder or format of the particular file, as SVG vector graphics. When saved with embedded resources, the stylesheet is placed in the `STYLE` element in the `HTML` -> `HEAD` section, while SVG images are located inside this stylesheet in base64 encoding. When saved with external resources, the stylesheet is also placed in the `STYLE` element in the `HTML` -> `HEAD` section, but it contains the references to the SVG images that are stored separately. Need to mention that the HTML document contains only those SVG icons, which are necessary for displaying the formats of only those files, which are present in the archive. For example, if a particular archive does not contain the PDF file(s), there will be no SVG icon, which represents the PDF format, in the HTML resources.

GroupDocs.Viewer by default produces paged HTML results — input documents are splitted on pages, and each page is represented by a separate HTML document. There is also a [`HtmlViewOptions.setRenderToSinglePage()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#setRenderToSinglePage-boolean-) boolean property (flag) in the [`HtmlViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/) class — when enabled, the GroupDocs.Viewer produces a single HTML document for the whole input document with all its pages. But archives are pageless in their nature — they store files and folders, and have no concept of “pages” like PDF documents, for example. That’s why for any input archive document the GroupDocs.Viewer produces only a single output HTML document, and there is no matter which value has the [`setRenderToSinglePage()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/#setRenderToSinglePage-boolean-) boolean flag.

The code example below demonstrates how to render an input archive file to an HTML document with embedded resources.

{{< tabs "code-example1">}}
{{< tab "RenderToHTML.java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;

public class RenderToHTML {
    public static void view() {
        HtmlViewOptions htmlEmbeddedOptions = HtmlViewOptions.forEmbeddedResources("Embedded.html");
        try (Viewer viewer = new Viewer("SingleRootFolder.zip"))
        {
            viewer.view(htmlEmbeddedOptions);
        }
    }
}
```
{{< /tab >}}
{{< tab "SingleRootFolder.zip" >}}  
{{< tab-text >}}
`SingleRootFolder.zip` is sample archive used in this example. Click [here](/viewer/java/sample-files/rendering-basics/render-archives/SingleRootFolder.zip) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "Embedded.html" >}}  
{{< tab-text >}}
`Embedded.html` is rendered HTML document. Click [here](/viewer/java/sample-files/rendering-basics/render-archives/Embedded.html) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

Screenshot below shows how the output HTML document looks like in a web browser for the archive with a huge amount of files and folders and deep nesting level, when the GroupDocs.Viewer works in licensed mode. Take a note that the GroupDocs.Viewer displays a metadata for the files: a size in bytes and modification date. The modification date can be displayed not for all archive formats, but only for those, which support it.

![Generate HTML view for input archive](/viewer/net/images/rendering-basics/render-archive-files/Archive-to-HTML.png)

Also please note that for the archive documents the HTML rendering mode is the highest quality among all the others and also has the best performance.

### Render archive files as PDF

PDF format by its nature has pages, so the list of files and folders from the archive is paginated when rendering to PDF format. Number of pages in this output PDF cannot be specified and it depends only on the number of entries (files and folders) within the input archive.

[`PdfViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/) class must be used in order to render archive documents as PDF. All standard PDF-related operations like protecting, watermarking, reordering pages, tuning the images quality and size, can be applied to the output PDF document and are described in the article “[Render to PDF]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-pdf/_index.md" >}})” and its sub-articles.

Code example below shows how to display the list of content of a specified archive file in PDF format.

{{< tabs "code-example2">}}
{{< tab "RenderToPdf.java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;

public class RenderToPdf {
    public static void view() {
        PdfViewOptions pdfOptions = new PdfViewOptions("Output.pdf");

        try (Viewer viewer = new Viewer("SingleRootFolder.zip"))
        {
            viewer.view(pdfOptions);
        }
    }
}
```
{{< /tab >}}
{{< tab "SingleRootFolder.zip" >}}  
{{< tab-text >}}
`SingleRootFolder.zip` is sample archive used in this example. Click [here](/viewer/java/sample-files/rendering-basics/render-archives/SingleRootFolder.zip) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "Output.pdf" >}}  
{{< tab-text >}}
`Output.pdf` is rendered Pdf document. Click [here](/viewer/java/sample-files/rendering-basics/render-archives/Output.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

Screenshot below shows how the output PDF looks like in a PDF Reader for the archive with a huge amount of files and folders and deep nesting level, when the GroupDocs.Viewer works in licensed mode. Take note how a list of entries is splitted on several pages.

![Generate paginated PDF view for input archive](/viewer/java/images/rendering-basics/render-archive-files/ArchiveToPdf.png)

### Render archive files as PNG and JPEG images

[`PngViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/) and [`JpgViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/) are responsible for saving archives to the PNG and JPEG raster image formats respectively. Like for the PDF, if the list of archive content cannot fit into the area of one image, it will be paginated and spread across multiple images.

Size of the output images will be calculated automatically based on the specific archive and its content, but it is possible to change the image size using the `Width`, `Height`, `MaxWidth`, and `MaxHeight` properties of the [`PngViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/) and [`JpgViewOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions/) classes. An article “[Render to PNG or JPEG]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-png-or-jpeg/_index.md" >}})” describes the tuning and post-processing of PNG and JPEG images in detail.

Because one PNG or JPEG image may contain only the one “page”, for the archives with a significant number of folders and files there will be created several “pages” and thus produced several images. The constructors of the [`PngViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/) and [`JpgViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/) classes have overload, which allows to specify the template string for the output image files, and the GroupDocs.Viewer fills this template while saving with a sequential page number, which starts from “1”.

Code example below shows rendering of the same input archive file to the two folders with images: one folder with “PNG” name contains page images in PNG format, while another with “JPEG” name — in JPEG format. For both formats the same amount of “page-images” will be generated.

{{< tabs "code-example3">}}
{{< tab "RenderToPNGJPEG.java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.JpgViewOptions;
import com.groupdocs.viewer.options.PngViewOptions;

public class RenderToPNGJPEG {
    public static void view() {
        String pngFolderPath = "PNG";
        String jpegFolderPath = "JPEG";
        PngViewOptions pngOptions = new PngViewOptions(pngFolderPath + "\\page-{0}.png");
        JpgViewOptions jpegOptions = new JpgViewOptions(jpegFolderPath + "\\page-{0}.jpeg");
        try (Viewer viewer = new Viewer("SingleRootFolder.zip"))
        {
            viewer.view(pngOptions);
            viewer.view(jpegOptions);
        }
    }
}
```
{{< /tab >}}
{{< tab "SingleRootFolder.zip" >}}  
{{< tab-text >}}
`SingleRootFolder.zip` is sample archive used in this example. Click [here](/viewer/java/sample-files/rendering-basics/render-archives/SingleRootFolder.zip) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "PNG.zip" >}}  
{{< tab-text >}}
`PNG.zip` is an archive that contains rendered .png files. Click [here](/viewer/java/sample-files/rendering-basics/render-archives/PNG.zip) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "JPEG.zip" >}}  
{{< tab-text >}}
`JPEG.zip` is an archive that contains rendered .jpeg files. Click [here](/viewer/java/sample-files/rendering-basics/render-archives/JPEG.zip) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Tuning the Archive options

All 4 option classes — [`HtmlViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/), [`PdfViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/), [`PngViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/), and [`JpgViewOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/) — contain a [`ArchiveOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/archiveoptions/) property of the [`ArchiveOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/archiveoptions/) type. This class has two properties, which allow users to modify a rendering of the list of archive content and are described below.

### Render a specific folder

By default the GroupDocs.Viewer displays all content inside the archive — all folders, subfolders and files with any nesting level till the end. However, in some cases it is required to display only a part of the list of archive content, for example, only content of some specific folder (including its subfolders), which is located in the given archive.

The [`setFolder()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/archiveoptions/#setFolder-java.lang.String-) property of a [`String`](https://docs.oracle.com/javase/8/docs/api/java/lang/String.html) type allows to do that. It obtains a folder name or relative path, which is located inside the given archive, and if the archive truly contains such a folder — only its content will be displayed. Otherwise, if no folder with such name or path was found in the archive, the whole archive content will be listed, as usual.

### Specify the archive document name

When GroupDocs.Viewer renders a list of archive content, it displays the archive document name at the top of the output document, as a root node for all folders and files inside an archive. When an archive document is specified as a file, its filename will be used as the archive document name. If an archive document is specified as a stream, a standard template name will be used.

With the [`setFileName()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/archiveoptions/#setFileName-com.groupdocs.viewer.options.FileName-) property of the [`ArchiveOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/archiveoptions/) type it is possible to specify a displayed archive document name explicitly. Just create an instance of the [`FileName`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/filename/) class, specify desired archive name in its constructor, and assign this instance to the [`ArchiveOptions.setFileName()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/archiveoptions/#setFileName-com.groupdocs.viewer.options.FileName-) property.

### Example

Code sample below shows using the [`setFolder()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/archiveoptions/#setFolder-java.lang.String-) property and [`setFileName()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/archiveoptions/#setFileName-com.groupdocs.viewer.options.FileName-) property simultaneously for the same loaded archive file. Rendering is performed to the HTML format with embedded resources. It is assumed that a valid license is set.

{{< tabs "code-example4">}}
{{< tab "RenderToHTMLWithOptions.java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.FileName;
import com.groupdocs.viewer.options.HtmlViewOptions;

public class RenderToHTMLWithOptions {
    public static void view() {
        HtmlViewOptions htmlEmbeddedOptions = HtmlViewOptions.forEmbeddedResources("FolderAndFileName.html");
        htmlEmbeddedOptions.getArchiveOptions().setFolder("Markdown/Html");
        htmlEmbeddedOptions.getArchiveOptions().setFileName(new FileName("The '/Markdown/Html/' subfolder with all its content is displayed"));

        try (Viewer viewer = new Viewer("ManyFilesAndFolders.7z"))
        {
            viewer.view(htmlEmbeddedOptions);
        }
    }
}
```
{{< /tab >}}
{{< tab "ManyFilesAndFolders.7z" >}}  
{{< tab-text >}}
`ManyFilesAndFolders.7z` is sample archive used in this example. Click [here](/viewer/java/sample-files/rendering-basics/render-archives/ManyFilesAndFolders.7z) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "FolderAndFileName.html" >}}  
{{< tab-text >}}
`FolderAndFileName.html` is rendered HTML document. Click [here](/viewer/java/sample-files/rendering-basics/render-archives/FolderAndFileName.html) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

Despite code sample above shows using the [`Folder`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/archiveoptions/folder/) and [`FileName`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/archiveoptions/filename/) properties when displaying the archive content in HTML format, but these properties are working the same when displaying the archive content in all other formats — PDF, PNG, and JPEG.

Screenshot below shows the result of the code sample above.

![Generate HTML view with custom archive options](/viewer/net/images/rendering-basics/render-archive-files/Archive-to-HTML-with-options.png)

## Extracting files from archives

While displaying a list of files and folders inside the archives is the main purpose of the GroupDocs.Viewer, it also allows to extract files from archives by their paths. In the GroupDocs.Viewer terminology the files inside archives are so-called “attachments”.

In general, the extracting of specific attachment (file) from the given archive document is made in the next steps:

1. Create a [`Viewer`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) instance and load an archive document into its constructor. Use [`LoadOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/loadoptions/) if necessary.
2. Get a list of all attachments (files), stored inside an archive, by calling a [`Viewer.getAttachments()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#getAttachments--) parameterless method or its cancellable overload.
3. Find and select a particular [`Attachment`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/attachment/) instance from the list, which you want to save.
4. Prepare a destination `OutputStream` where you want to write the attachment. Make sure the stream is not null, is writable, and supports seeking if required.
5. Write the previously selected attachment to a prepared stream using the [`Viewer.saveAttachment(Attachment, java.io.OutputStream)`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#saveAttachment-com.groupdocs.viewer.results.Attachment-java.io.OutputStream-) method or its cancellable overload.
6. Alternatively, if you want to extract and save all files from the given archive, just iterate over the list of attachments and call a [`Viewer.saveAttachment()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#saveAttachment-com.groupdocs.viewer.results.Attachment-java.io.OutputStream-) method for every attachment in a step.

Take note that extracting files from the archive and viewing its content are different operations, which are not dependent on each other — you may render the list of archive contents without extracting the files, and vice versa.

Also technically step #2 is not necessary — if you know the exact full name (this includes its relative path) of the desired file to extract, there is no need to get a list of all attachments, because the instance of the Attachment class can be created manually and passed directly to the [`Viewer.saveAttachment()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#saveAttachment-com.groupdocs.viewer.results.Attachment-java.io.OutputStream-) method.

Code example below shows all the described operations with the attachments.

{{< tabs "code-example5">}}
{{< tab "ExtractingFiles.java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.caching.extra.CacheableFactory;
import com.groupdocs.viewer.results.Attachment;
import java.io.*;
import java.util.List;

public class ExtractingFiles {
    public static void view() {
        try (ByteArrayOutputStream attachmentStream = new ByteArrayOutputStream();
             Viewer viewer = new Viewer("ManyFilesAndFolders.7z"))
        {
            List<Attachment> allAttachments = viewer.getAttachments();

            //Iterate over all attachments and save them
            for (Attachment attachment : allAttachments)
            {
                System.out.println("- "+attachment.getFilePath()+" - "+attachment.getFileType()+" - "+attachment.getSize()+" bytes");
                viewer.saveAttachment(attachment, attachmentStream);
            }

            //Create one Attachment manually and save it
            Attachment oneAttachment = CacheableFactory.getInstance().newAttachment("/Images/PNG/Watermark.png", "/Images/PNG/Watermark.png");
            try (OutputStream extractedFile = new FileOutputStream("Watermark.png"))
            {
                viewer.saveAttachment(oneAttachment, extractedFile);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
```
{{< /tab >}}
{{< tab "ManyFilesAndFolders.7z" >}}  
{{< tab-text >}}
`ManyFilesAndFolders.7z` is sample archive used in this example. Click [here](/viewer/java/sample-files/rendering-basics/render-archives/ManyFilesAndFolders.7z) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "Watermark.png" >}}  
{{< tab-text >}}
`Watermark.png` is rendered PNG file. Click [here](/viewer/java/sample-files/rendering-basics/render-archives/Watermark.png) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Retrieving information about archives

Like for all other supported formats, the GroupDocs.Viewer supports getting the view info for the archive documents. This means that for the loaded archive a GroupDocs.Viewer can grab metadata like exact format, whether or not it is password-protected, list of folders inside archive, and a number of pages, which the GroupDcos.Viewer will produce in case when rendering to PDF, PNG, or JPEG will be selected. More info about retrieving the document information in general may be found in the corresponding [article]({{< ref "/viewer/java/developer-guide/retrieving-document-information/_index.md" >}}).

In order to retrieve metadata about specific archive, the [`Viewer.getViewInfo()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#getViewInfo-com.groupdocs.viewer.options.ViewInfoOptions-) method must be called. This method obtains an instance of [`ViewInfoOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/viewinfooptions/) class, which can be created from its own or from existing view options. The GroupDocs.Viewer constructs the metadata about the archive in accordance to the passed [`ViewInfoOptions`](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/viewinfooptions/) and its specific settings. For example, for the HTML-based info options the number of returned [`getPages`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/viewinfo/#setPages-java.util.List-com.groupdocs.viewer.results.Page--) is always "1" (because the displaying to the HTML format is pageless), while for the PDF, PNG and JPEG there will be some specific page number depending on count of files and folders within the archive.

In the context of archives the [`Viewer.getViewInfo()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#getViewInfo-com.groupdocs.viewer.options.ViewInfoOptions-) method returns an instance of the [`ArchiveViewInfo`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/archiveviewinfo/) class, which is the direct inheritor of the [`ViewInfo`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/viewinfo/) class. Except for the properties present in the [`ViewInfo`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/viewinfo/), the [`ArchiveViewInfo`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/archiveviewinfo/) provides a [`getFolders()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/archiveviewinfo/#getFolders--) property of `List<String>` type — it contains a list of all folders, stored in the archive. Please note that the GroupDocs.Viewer creates a new `List` with folder names every time when method [`Viewer.getViewInfo()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#getViewInfo-com.groupdocs.viewer.options.ViewInfoOptions-) is called. Also [`ArchiveViewInfo.getFolders()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/archiveviewinfo/#getFolders--) property does not take into account the value of the [`ArchiveOptions.getFolder()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/archiveoptions/#getFolder--) property, even if [`ViewInfoOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/viewinfooptions/) was created from such an option — so [`ArchiveViewInfo.getFolders()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/archiveviewinfo/#getFolders--) always returns a complete list of folders inside the archive.

Concluding: to get the [`ArchiveViewInfo`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/archiveviewinfo/), just load the archive document to the [`Viewer`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/) [constructor](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#constructors), create a relevant [`ViewInfoOptions`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/viewinfooptions/), call the [`Viewer.getViewInfo()`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#getViewInfo-com.groupdocs.viewer.options.ViewInfoOptions-) and cast the returned [`ViewInfo`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/viewinfo/) instance to the [`ArchiveViewInfo`](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/archiveviewinfo/) type.

Code sample below demonstrates all the described information.

{{< tabs "code-example6">}}
{{< tab "GetArchiveViewInfo" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.ViewInfoOptions;
import com.groupdocs.viewer.results.ArchiveViewInfo;
import com.groupdocs.viewer.results.FileInfo;
import com.groupdocs.viewer.results.Page;


public class GetArchiveViewInfo {
    public static void run() {
        ViewInfoOptions viewInfoOptions = ViewInfoOptions.forPdfView();

        try (Viewer viewer = new Viewer("E:\\GitHub_Examples\\GroupDocs.Viewer-Docs\\java\\sample-files\\rendering-basics\\render-archives\\MixedContent.7z"))
        {
            FileInfo fileInfo = viewer.getFileInfo();
            System.out.printf("Encrypted: %s%n", fileInfo.isEncrypted() ? "yes" : "no");

            ArchiveViewInfo viewInfo = (ArchiveViewInfo)viewer.getViewInfo(viewInfoOptions);

            System.out.printf("Archive format: %s%n", viewInfo.getFileType());
            System.out.printf("Number of pages when saving to PDF: %s%n", viewInfo.getPages().size());

            System.out.println("List of all pages with their metadata, when rendering to PDF:");
            for (Page page : viewInfo.getPages())
            {
                System.out.printf(" - Page #%d - %dx%dpx%n", page.getNumber(), page.getWidth(), page.getHeight());
            }

            System.out.println("List of folders in the archive document:");
            for(String folder : viewInfo.getFolders())
            {
                System.out.printf(" - %s%n", folder);
            }
        }
    }
}
```
{{< /tab >}}
{{< tab "Expected output" >}}  
```yaml
Encrypted: no
Archive format: 7Zip (.7z)
Number of pages when saving to PDF: 1
List of all pages with their metadata, when rendering to PDF:
 - Page #1 - 793x1122px
List of folders in the archive document:
 - /CHM/
 - /CSS/
 - /Images/
 - /Images/ICO/
 - /Images/JPEG/

```
{{< /tab >}}
{{< tab "MixedContent.7z" >}}  
{{< tab-text >}}
`MixedContent.7z` is sample archive used in this example. Click [here](/viewer/java/sample-files/rendering-basics/render-archives/MixedContent.7z) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

## Conclusion

Before the [version 25.6](https://releases.groupdocs.com/viewer/java/release-notes/2025/groupdocs-viewer-for-java-25-6-release-notes/) the archive documents were supported by the GroupDocs.Viewer in a specific way, without showing the tree hierarchy, only with a paged view, showing only one folder at a page. Performance was also not so good as it could be, especially on big archives.

Starting from the version 25.6, the completely new archive processing mechanism has completely replaced the old one. Now the list of contents of archives is rendered as archive entries are actually stored, in tree-like pageless view, where separation on pages are done only for paged formats like PDF, PNG, and JPEG, and now this page splitting is not dependent on specific folders. Performance was also drastically improved, especially while rendering archives to HTML.
