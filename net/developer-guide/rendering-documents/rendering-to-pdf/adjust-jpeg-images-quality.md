---
id: adjust-jpeg-images-quality
url: viewer/net/adjust-jpeg-images-quality
title: Specify the JPEG image quality
weight: 3
description: "Adjust JPEG images quality when rendering documents to PDF with GroupDocs.Viewer for .NET"
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
When rendering documents to PDF format that contains JPG images it may be reasonable to reduce size of the output file by adjusting quality of the JPG images. GroupDocs.Viewer enables you to adjust quality of images in the output PDF document with [JpgQuality](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions/properties/jpgquality) setting of [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) class. The supported values range of [JpgQuality](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions/properties/jpgquality) is from 1 to 100. Default value is 90.

The following steps are to be followed in order to set image quality.

* Initialize the object of [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions);
* Set [PdfViewOptions.JpgQuality](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions/properties/jpgquality) value;
* Pass [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) object to *View* function.

The following code sample shows how to adjust JPG image quality in the output PDF document.

```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{               
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.JpgQuality = 50;
    viewer.View(viewOptions);
}
```
