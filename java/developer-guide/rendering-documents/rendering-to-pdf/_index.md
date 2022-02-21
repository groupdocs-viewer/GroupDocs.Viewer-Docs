---
id: rendering-to-pdf
url: viewer/java/rendering-to-pdf
title: Rendering to PDF
weight: 103
description: "Following this guide you will to learn how to display documents of more than 100 types in PDF format with PDF Viewer by GroupDocs."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: True
---  
Document viewer can operate in different rendering modes, HTML, Image and PDF (see [Features Overview]({{< ref "viewer/java/getting-started/features-overview.md" >}}) for more information).

This article will describe on how to view documents in PDF mode with PDF Viewer. When rendering to PDF format with GroupDocs.Viewer, it saves all pages of source document as a single target PDF document.  
Here are the steps for rendering to PDF with GroupDocs.Viewer for Java:
* Create new instance of [Viewer](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class and pass source document path as a constructor parameter.
* Instantiate the [PdfViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) object and specify saving path format for rendered document.
* Call [view()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method of [Viewer](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class instance and pass [PdfViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) to it.

The following code sample shows how to get **PDF** representation of the document.

```java
try (Viewer viewer = new Viewer("sample.docx")) {
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewer.view(viewOptions);
}
```

{{< alert style="info" >}}GroupDocs.Viewer also provides an ability to customize rendering to PDF by setting additional options. To learn more about caching customization please refer to the following guides: [Adjust quality for JPG images]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-pdf/pdf-viewer-adjust-quality-for-jpg-images.md" >}}) and [PDF Viewer - Protect PDF document]({{< ref "viewer/java/developer-guide/rendering-documents/rendering-to-pdf/pdf-viewer-protect-pdf-document.md" >}}){{< /alert >}}
