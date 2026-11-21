---
id: optimization-pdf-remove-annotations
url: viewer/net/optimization-pdf-remove-annotations
title: Remove annotations
linkTitle: Remove annotations
weight: 1
description: "This topic describes how to remove annotations from PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size, remove annotations
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
If the output PDF file contains annotations, you can remove them to reduce the file size.

To remove annotations, set the [RemoveAnnotations](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/removeannotations/) property to `true`.

The following code snippet shows how to remove annotations from the file:

{{< tabs "remove-annotations">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("order_form.pdf"))
{
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.PdfOptimizationOptions = new PdfOptimizationOptions();
    viewOptions.PdfOptimizationOptions.RemoveAnnotations = true;

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
        Using viewer = New Viewer("order_form.pdf")
            Dim viewOptions As PdfViewOptions = New PdfViewOptions()
            viewOptions.PdfOptimizationOptions = New PdfOptimizationOptions()
            viewOptions.PdfOptimizationOptions.RemoveAnnotations = True
        
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "order_form.pdf" >}}
{{< tab-text >}}
`order_form.pdf` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/optimize-content/optimization-pdf-remove-annotations/order_form.pdf) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "output.pdf" >}}  
```text
Binary file (PDF, 207 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/rendering-documents/rendering-to-pdf/optimization-pdf-options/optimize-content/optimization-pdf-remove-annotations/RemoveAnnotations/output.pdf)
{{< /tab >}}
{{< /tabs >}}
