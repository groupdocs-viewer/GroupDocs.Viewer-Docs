---
id: optimization-pdf-set-max-resolution
url: viewer/net/optimization-pdf-set-max-resolution
title: Set image resolution
linkTitle: Set image resolution
weight: 2
description: "This topic describes how to set image resolution in PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size, set resolution
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
If the output PDF file contains images, you can reduce its resolution.

To allow changing the image resolution, set the [CompressImages](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/compressimages/) and [ResizeImages](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/resizeimages/) properties to `true`. The GroupDocs.Viewer compresses all images in the file. The [MaxResolution](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/maxresolution/) property determines the maximum resolution. 

The following code snippet shows how to reduce image resolution in the file:

{{< tabs "set-max-resolution">}}
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
        ImageQuality = 50,
        ResizeImages = true,
        MaxResolution = 100
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
                .ImageQuality = 50,
                .ResizeImages = True,
                .MaxResolution = 100
                }

            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/optimize-images/optimization-pdf-set-max-resolution/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
```text
Binary file (PDF, 189 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/optimize-images/optimization-pdf-set-max-resolution/SetMaxResolution/output.pdf)
{{< /tab >}}
{{< /tabs >}}
