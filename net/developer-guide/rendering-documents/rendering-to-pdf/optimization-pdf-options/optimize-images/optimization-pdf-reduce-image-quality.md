---
id: optimization-pdf-reduce-image-quality
url: viewer/net/optimization-pdf-reduce-image-quality
title: Reduce image quality
linkTitle: Reduce image quality
weight: 1
description: "This topic describes how to compress images in PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size, compress images
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---

If the output PDF file contains images, you can reduce its size using image compression.

To enable image compression, set the [CompressImages](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/compressimages/) property to `true`. The GroupDocs.Viewer compresses all images in the file.

The [ImageQuality](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/imagequality/) property determines the compression ratio. It is a quality value in percent. 100% means original quality.

The following code snippet shows how to compress images in the file:

{{< tabs "reduce-image-quality">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.docx"))
{
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.PdfOptimizationOptions = new PdfOptimizationOptions
    {
        CompressImages = true,
        ImageQuality = 50
    };
     
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
        Using viewer = New Viewer("sample.docx")
            Dim viewOptions As PdfViewOptions = New PdfViewOptions()
            viewOptions.PdfOptimizationOptions = New PdfOptimizationOptions With {
                .CompressImages = True,
                .ImageQuality = 50
                }

            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/optimize-images/optimization-pdf-reduce-image-quality/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
```text
Binary file (PDF, 483 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/optimize-images/optimization-pdf-reduce-image-quality/ReduceImageQuality/output.pdf)
{{< /tab >}}
{{< /tabs >}}
