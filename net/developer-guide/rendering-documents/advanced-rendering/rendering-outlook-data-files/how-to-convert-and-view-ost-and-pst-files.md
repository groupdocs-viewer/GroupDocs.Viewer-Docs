---
id: how-to-convert-and-view-ost-and-pst-files
url: viewer/net/how-to-convert-and-view-ost-and-pst-files
title: Render OST and PST files
weight: 2
description: "This article explains how to filter messages when rendering Outlook Data Files with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

OST (Offline Storage Table) and PST (Personal Storage Table) are formats of Personal Folder File (PFF). Both formats contains e-mail messages, contacts and appointments.  
PST files - contain data of user personal Outlook folders  
OST files - contain data, that downloaded from Exchange Server.

## View OST and PST files

The OST/PST can be opened with Microsoft Outlook.
In case you need to view a PST/OST file in a browser or in a standard image or PDF viewer application, you can convert it to HTML, JPEG, PNG  PDF format with GroupDocs.Viewer for .NET.
![](/viewer/net/images/how-to-convert-and-view-ost-and-pst-files.png)

### Convert OST and PST to HTML

To convert OST and PST files to HTML with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.pst"))
{
       HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("output.html");

       viewer.View(options);
}
```

The following screenshot shows the output HTML file opened in a browser.

![](/viewer/net/images/how-to-convert-and-view-ost-and-pst-files_1.png)

### Convert OST and PST to JPG

To convert OST and PST files to JPG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.pst"))
{
       JpgViewOptions options = new JpgViewOptions("output.jpg");

       viewer.View(options);
}
```

The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![](/viewer/net/images/how-to-convert-and-view-ost-and-pst-files_2.png)

### Convert OST and PST to PNG

To convert OST and PST files to PNG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.pst"))
{
       PngViewOptions options = new PngViewOptions("output.png");
       viewer.View(options);
}
```

The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![](/viewer/net/images/how-to-convert-and-view-ost-and-pst-files_3.png)

### Convert OST and PST files to PDF

To convert OST/PST files to PDF with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.pst"))
{
       PdfViewOptions options = new PdfViewOptions("output.pdf");
       viewer.View(options);
}
```

The following screenshot shows the output PDF file opened in a browser.

![](/viewer/net/images/how-to-convert-and-view-ost-and-pst-files_4.png)
