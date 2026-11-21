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

To adjust images quality, enable the [CompressImages](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/compressimages/) property and set the [ImageQuality](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/imagequality/) property of the [PdfOptimizationOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/) class. The value must be between 1 (minimum quality) and 100. The default value is 90. Without `CompressImages`, the quality has no effect.

To set the image quality, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class. Specify the source document path as a constructor parameter.
1. Instantiate the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) object.
2. Set the [PdfViewOptions.PdfOptimizationOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions/pdfoptimizationoptions/) value to a new [PdfOptimizationOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/) object.
3. Set its [CompressImages](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/compressimages/) value to `true` and its [ImageQuality](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/imagequality/) value.
4. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method of the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) object as the parameter.

The following code snippet shows how to adjust JPG image quality in the output PDF document:

{{< tabs "adjust-jpeg-quality">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (Viewer viewer = new Viewer("sample.docx"))
{
    // Create view options.
    PdfViewOptions viewOptions = new PdfViewOptions();

    // Specify the JPG image quality.
    viewOptions.PdfOptimizationOptions = new PdfOptimizationOptions();
    viewOptions.PdfOptimizationOptions.CompressImages = true;
    viewOptions.PdfOptimizationOptions.ImageQuality = 50;
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
        Using viewer As Viewer = New Viewer("sample.docx")
            ' Create view options.
            Dim viewOptions As PdfViewOptions = New PdfViewOptions()

            ' Specify the JPG image quality.
            viewOptions.PdfOptimizationOptions = New PdfOptimizationOptions()
            viewOptions.PdfOptimizationOptions.CompressImages = True
            viewOptions.PdfOptimizationOptions.ImageQuality = 50
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/rendering-to-pdf/adjust-jpeg-images-quality/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
```text
Binary file (PDF, 483 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/rendering-documents/rendering-to-pdf/adjust-jpeg-images-quality/AdjustJpegQuality/output.pdf)
{{< /tab >}}
{{< /tabs >}}
