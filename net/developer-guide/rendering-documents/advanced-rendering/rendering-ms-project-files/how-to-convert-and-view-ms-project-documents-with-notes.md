---
id: how-to-convert-and-view-ms-project-documents-with-notes
url: viewer/net/how-to-convert-and-view-ms-project-documents-with-notes
title: Render notes
weight: 2
description: "In this article we show render MS Project Documents with notes with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
MPP is Microsoft Project file. It contains tasks with timelines, budjets, employee resources information, and also tasks may contain user notes.

## View MPP files with notes

The MPP can be opened with desktop application like e.g. Microsoft Project.

In case you need to view a MPP file in a browser or in a standard image or PDF viewer application, you can convert it to HTML, JPEG, PNG  PDF format with GroupDocs.Viewer for .NET. 

![](viewer/net/images/how-to-convert-and-view-ms-project-documents-with-notes.png)

### Convert MPP to HTML with notes

To convert MPP files to HTML with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.mpp"))
{
       HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources("output_{0}.html");
       options.RenderNotes = true;

       viewer.View(options);
}
```

The following screenshot shows the output HTML with the tasks file opened in a browser.

![](viewer/net/images/how-to-convert-and-view-ms-project-documents-with-notes_1.png)

If "RenderNotes" property set to true, notes will be rendered on a separate page.

The following screenshot shows the output HTML with the notes file opened in a browser.

![](viewer/net/images/how-to-convert-and-view-ms-project-documents-with-notes_2.png)

### Convert MPP to JPG with notes

To convert MPP files to JPG with GroupDocs.Viewer for .NET use following code:

```csharp
using (Viewer viewer = new Viewer("sample.mpp"))
{
       JpgViewOptions options = new JpgViewOptions("output.jpg");
       options.RenderNotes = true;

       viewer.View(options);
}
```

The following screenshot shows the output JPG file opened in a Windows Photo Viewer application.

![](viewer/net/images/how-to-convert-and-view-ms-project-documents-with-notes_3.png)

If "RenderNotes" property set to true, notes will be rendered on a separate page.

The following screenshot shows the output JPEG with notes file opened in a Windows Photo Viewer application.

![](viewer/net/images/how-to-convert-and-view-ms-project-documents-with-notes_4.png)

### Convert MPP to PNG with notes

To convert MPP files to PNG with GroupDocs.Viewer for .NET use following code: 

```csharp
using (Viewer viewer = new Viewer("sample.mpp"))
{
       PngViewOptions options = new PngViewOptions("output_{0}.png");
       options.RenderNotes = true;

       viewer.View(options);
}
```

The following screenshot shows the output PNG file opened in a Windows Photo Viewer application.

![](viewer/net/images/how-to-convert-and-view-ms-project-documents-with-notes_5.png)

If "RenderNotes" property set to true, notes will be rendered on a separate page.

The following screenshot shows the output PNG with notes file opened in a Windows Photo Viewer application.

![](viewer/net/images/how-to-convert-and-view-ms-project-documents-with-notes_6.png)

### Convert MPP to PDF with notes

To convert MPP files to PDF with GroupDocs.Viewer for .NET use following code: 

```csharp
using (Viewer viewer = new Viewer("sample.mpp"))
{
       PdfViewOptions options = new PdfViewOptions("output.pdf");
       options.RenderNotes = true;
       viewer.View(options);
}
```

The following screenshot shows the output PDF file opened in an Adobe Acrobat Reader.

![](viewer/net/images/how-to-convert-and-view-ms-project-documents-with-notes_7.png)

If "RenderNotes" property set to true, notes will be rendered on a separate page.

The following screenshot shows the page of output PDF with notes file opened in an Adobe Acrobat Reader.

![](viewer/net/images/how-to-convert-and-view-ms-project-documents-with-notes_8.png)
