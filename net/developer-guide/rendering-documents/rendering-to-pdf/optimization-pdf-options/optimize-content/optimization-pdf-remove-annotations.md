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

{{< tabs "Example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("sample.docx"))
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
        Using viewer = New Viewer("sample.docx")
            Dim viewOptions As PdfViewOptions = New PdfViewOptions()
            viewOptions.PdfOptimizationOptions = New PdfOptimizationOptions()
            viewOptions.PdfOptimizationOptions.RemoveAnnotations = True
        
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result:

![Remove annotations](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-remove-annotations.png)
