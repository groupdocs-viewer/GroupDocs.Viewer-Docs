---
id: optimization-pdf-spreadsheets
url: viewer/net/optimization-pdf-spreadsheets
title: Optimize spreadsheets in a PDF file
linkTitle: Optimize spreadsheets in a PDF file
weight: 3
description: "This topic describes how to optimize spreadsheets in a PDF file using the GroupDocs.Viewer .NET API (C#)."
keywords: convert to pdf, optimize browser, optimize web
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
This optimization allows to reduce the output file size by setting up border lines. Besides that, it removes the Arial and Times New Roman characters of 32-127 codes.

The default value is `false`.


The following code snippet shows how to optimize spreadsheets in a PDF file:

{{< tabs "Example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (var viewer = new Viewer("invoice.xlsx"))
{
    PdfViewOptions viewOptions = new PdfViewOptions();
    viewOptions.PdfOptimizationOptions = new PdfOptimizationOptions 
    {
        OptimizeSpreadsheets = true
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
        Using viewer = New Viewer("invoice.xlsx")
            Dim viewOptions As PdfViewOptions = New PdfViewOptions()
            viewOptions.PdfOptimizationOptions = New PdfOptimizationOptions With {
                .OptimizeSpreadsheets = True
                }

            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}
