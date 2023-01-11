---
id: adjust-jpeg-images-quality
url: viewer/net/adjust-jpeg-images-quality
title: Specify the JPEG image quality
weight: 3
description: "Adjust JPEG images quality when rendering documents to PDF with GroupDocs.Viewer for .NET"
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Decreasing the JPG images quality reduces the size of the output file.

To adjust images quality, set the [JpgQuality](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions/properties/jpgquality) property of the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) class. The value must be between 1 (minimum quality) and 100. The default value is 90.

To set the image quality, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class. Specify the source document path as a constructor parameter.
1. Instantiate the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) object.
2. Set the [PdfViewOptions.JpgQuality](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions/properties/jpgquality) value.
3. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method of the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) object as the parameter.

The following code snippet shows how to adjust JPG image quality in the output PDF document:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    // Create a PDF file.
    PdfViewOptions viewOptions = new PdfViewOptions();
    // Specify the JPG image quality.
    viewOptions.JpgQuality = 50;
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
