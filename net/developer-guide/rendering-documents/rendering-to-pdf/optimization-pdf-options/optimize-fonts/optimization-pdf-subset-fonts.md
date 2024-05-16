---
id: optimization-pdf-subset-fonts
url: viewer/net/optimization-pdf-subset-fonts
title: Subset fonts
linkTitle: Subset fonts
weight: 2
description: "This topic describes how to subset fonts in PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize size, pdf reduce size, subset fonts
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
Not optimized files may contain embedded fonts. GroupDocs.Viewer can remove unused instructions in embedded fonts to reduce the file size.

To subset fonts in a PDF file, set the [SubsetFonts](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfoptimizationoptions/subsetfonts) property to `true`.

The following code snippet shows how to subset fonts in a PDF file:

{{< tabs "Example1">}}
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
        SubsetFonts = true
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
                .SubsetFonts = True
                }
    
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

The following image demonstrates the result. There is no difference in appearance:

![No difference in appearance](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-subset-fonts-appearance.png)

But there is the significant difference in size:

![Significant difference in size](/viewer/net/images/developer-guide/pdf-rendering/optimization/optimization-pdf-subset-fonts-size.png)
