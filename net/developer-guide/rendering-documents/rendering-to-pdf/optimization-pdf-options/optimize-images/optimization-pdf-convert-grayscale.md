---
id: optimization-pdf-convert-grayscale
url: viewer/net/optimization-pdf-convert-grayscale
title: Convert to grayscale
linkTitle: Convert to grayscale
weight: 3
description: "This topic describes how to convert PDF file to grayscale using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size, convert to grayscale
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
To speed up the printing of a PDF file and reduce its size, you can convert it from RGB color space to grayscale.

To convert a PDF file to grayscale, set the [ConvertToGrayScale](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/converttograyscale) property to `true`.

The following code snippet shows how to convert a PDF file to grayscale:

{{< tabs "convert-to-grayscale">}}
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
        ConvertToGrayScale = true
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
                .ConvertToGrayScale = True
                }
    
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/optimize-images/optimization-pdf-convert-grayscale/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
```text
Binary file (PDF, 1.3 MB)
```
[Download full output](/viewer/net/_output_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/optimize-images/optimization-pdf-convert-grayscale/ConvertToGrayscale/output.pdf)
{{< /tab >}}
{{< /tabs >}}
