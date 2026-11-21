---
id: optimization-pdf-resources
url: viewer/net/optimization-pdf-resources
title: Optimize the PDF file resources
linkTitle: Optimize the PDF file resources
weight: 2
description: "This topic describes how to optimize PDF file using the GroupDocs.Viewer .NET API (C#) to reduce size."
keywords: convert to pdf, optimize size, pdf reduce size
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
Resource optimization allows you to reduce the size of the output PDF file. While optimizing, GroupDocs.Viewer may reduce the image size or quality, remove notes or form fields, remove objects, fonts, or personal information from a document, and so on.

The following code snippet shows how to optimize the PDF file by default:

{{< tabs "optimize-pdf-resources">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.docx"))
{
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.PdfOptimizationOptions = new PdfOptimizationOptions();
     
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
            viewOptions.PdfOptimizationOptions = New PdfOptimizationOptions()

            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/optimization-pdf-resources/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
```text
Binary file (PDF, 719 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/optimization-pdf-resources/OptimizePdfResources/output.pdf)
{{< /tab >}}
{{< /tabs >}}
