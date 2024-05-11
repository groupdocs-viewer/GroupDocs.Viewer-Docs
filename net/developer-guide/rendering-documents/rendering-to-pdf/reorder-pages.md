---
id: reorder-pages
url: viewer/net/reorder-pages
title: Reorder pages
weight: 1
description: "Reorder pages when rendering documents to PDF with GroupDocs.Viewer for .NET"
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
GroupDocs.Viewer preserves the page order in the source document. Instead, you may reorder pages in the output PDF document.

To reorder pages, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object.
2. Create the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) object.
3. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method of the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify the new page order in the last parameters.

The following code snippet shows how to reorder pages:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer;
// ...

using (Viewer viewer = new Viewer("sample.docx"))            
{     
    // Create view options.
    PdfViewOptions viewOptions = new PdfViewOptions();

    // Pass page numbers in the order you want to render them.                
    viewer.View(viewOptions, 2, 1);
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
            ' Create view options.
            Dim viewOptions As PdfViewOptions = New PdfViewOptions()

            ' Pass page numbers in the order you want to render them.                
            viewer.View(viewOptions, 2, 1)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}
