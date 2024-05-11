---
id: rendering-to-pdf
url: viewer/net/rendering-to-pdf
title: Render to PDF
weight: 13
description: "Rendering files to PDF with GroupDocs.Viewer for .NET. It means that you can embed PDF in websites or applications by using this C# API"
keywords: embed pdf in website, rendering to pdf, c# api, rendering pdf
productName: GroupDocs.Viewer for .NET
hideChildren: False
---  
When rendering to PDF, GroupDocs.Viewer renders all pages of the source document as a single PDF document.

To render files to PDF, follow these steps:

1. Create an instance of the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class. Specify the source document path as a constructor parameter.
2. Instantiate the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) object. Specify a path to save the rendered file.
3. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method of the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) object as the parameter.

The following code snippet shows how to render a .docx document to PDF:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer;
// ...

using (Viewer viewer = new Viewer("sample.docx"))
{
	// Create a PDF file.
	PdfViewOptions viewOptions = new PdfViewOptions();
	viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer.Options
Imports GroupDocs.Viewer
' ...

Module Program
    Sub Main(args As String())
        Using viewer As Viewer = New Viewer("sample.docx")
            ' Create a PDF file.
            Dim viewOptions As PdfViewOptions = New PdfViewOptions()
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

For details, please refer to the following pages:
