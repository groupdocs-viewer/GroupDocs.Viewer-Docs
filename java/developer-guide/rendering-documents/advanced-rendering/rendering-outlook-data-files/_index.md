---
id: view-outlook-data-files
url: viewer/java/view-outlook-data-files
title: Rendering Outlook Data Files
weight: 20
description: "This article contains use-cases of viewing Outlook Data Files with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
Outlook Data Files are created and used by Microsoft Outlook to store messages, contacts, calendars, and other account information.

## Supported Outlook Data Files

The following Outlook Data Files are supported by the GroupDocs.Viewer for Java.

Auto Detection means that GroupDocs.Viewer can determine the type of the Outlook Data file by reading the information in the file header.

| File Extension | File Type | Auto Detection |
| --- | --- | --- |
| [.OST](https://docs.fileformat.com/email/ost) | [Microsoft Outlook Offline Storage Table](https://docs.fileformat.com/email/ost) | Yes |
| [.PST](https://docs.fileformat.com/email/pst) | [Microsoft Outlook Personal Storage Table](https://docs.fileformat.com/email/pst) | Yes |

## Rendering OST and PST files

In case you need to view a PST/OST file in a browser or in a standard image or PDF viewer application, you can convert it to HTML, JPEG, PNG  PDF format with GroupDocs.Viewer for Java.

![](viewer/java/images/how-to-convert-and-view-ost-and-pst-files.png)

### Rendering OST and PST to HTML

To convert OST and PST files to HTML with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.pst")) {
        HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources("output.html");
    
        viewer.view(options);
    }
```

The following screenshot shows the output HTML file opened in a browser.

![](viewer/java/images/how-to-convert-and-view-ost-and-pst-files_1.png)

### Rendering OST and PST to JPG

To convert OST and PST files to JPG with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.pst")) {
        JpgViewOptions options = new JpgViewOptions("output.jpg");
    
        viewer.view(options);
    }
```

The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![](viewer/java/images/how-to-convert-and-view-ost-and-pst-files_2.png)

### Rendering OST and PST to PNG

To convert OST and PST files to PNG with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.pst")) {
        PngViewOptions options = new PngViewOptions("output.png");
    
        viewer.view(options);
    }
```

The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![](viewer/java/images/how-to-convert-and-view-ost-and-pst-files_3.png)

### Rendering OST and PST files to PDF

To convert OST/PST files to PDF with GroupDocs.Viewer for Java use following code:

```java
    try (Viewer viewer = new Viewer("sample.pst")) {
        PdfViewOptions options = new PdfViewOptions("output.pdf");
    
        viewer.view(options);
    }
```

The following screenshot shows the output PDF file opened in a browser.

![](viewer/java/images/how-to-convert-and-view-ost-and-pst-files_4.png)

## More resources

The articles given in this section describes the usage of GroupDocs.Viewer to convert Outlook Data files with different available options.
