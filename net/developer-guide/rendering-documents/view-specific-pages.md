---
id: view-specific-pages
url: viewer/net/view-specific-pages
title: Render specific pages
weight: 1
description: "This article explains how to view specific pages when processing documents with GroupDocs.Viewer within your .NET applications."
keywords: specific pages, view specific pages
productName: GroupDocs.Viewer for .NET
hideChildren: False
toc: True
---
You can render part of the document pages only. You can specify a list of the document pages in the following ways:
* [Specify a list of pages as parameters of the View method](#specify-pages-as-parameters)
* [Specify a list of pages by using an array](#specify-pages-by-using-an-array)

## Specify pages as parameters

To specify pages as the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method parameters, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object.
2. Instantiate the [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) (or the [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), or the [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions), or the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)) object.
3. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method. Specify the page numbers as the last parameters.

The following code snippet shows how to render the first and third pages of a document:

{{< tabs "view-specific-pages">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (Viewer viewer = new Viewer("sample.docx"))
{
    // Create view options.
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources("view-specific-pages_{0}.html");

    // Specify the page numbers.
    viewer.View(viewOptions, 1, 3);
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
    Using viewer As Viewer = New Viewer("sample.docx")
        ' Create view options.
        Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources("view-specific-pages_{0}.html")
    
        ' Specify the page numbers.
        viewer.View(viewOptions, 1, 3)
    End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/view-specific-pages/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "view-specific-pages.zip" >}}  
```text
view-specific-pages_1.html (253 KB)
view-specific-pages_3.html (148 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/rendering-documents/view-specific-pages/ViewSpecificPages/view-specific-pages.zip)
{{< /tab >}}
{{< /tabs >}}

## Specify pages by using an array

To specify pages by using an array, follow these steps:

1. Instantiate the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object;
2. Instantiate the [HtmlViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) (or the [JpgViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), or the [PngViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions), or the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)) object;
3. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method. Specify the page numbers array as the second parameter.

The following code snippet shows how to render the 1st, 2nd, and 4th pages of a document:

{{< tabs "view-pages-from-array">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

// Create an array and specify page numbers.
int[] pageNumbers = new int[] { 1, 2, 4 };

using (Viewer viewer = new Viewer("sample.docx"))
{
   // Create view options.
   var viewOptions = HtmlViewOptions.ForEmbeddedResources("view-pages-from-array_{0}.html");

   // Use array to render specific pages.
   viewer.View(viewOptions, pageNumbers);
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
        ' Create an array and specify page numbers.
        Dim pageNumbers = New Integer() {1, 2, 4}
    
        Using viewer As Viewer = New Viewer("sample.docx")
            ' Create view options.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources("view-pages-from-array_{0}.html")
    
            ' Use array to render specific pages.
            viewer.View(viewOptions, pageNumbers)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.docx" >}}
{{< tab-text >}}
`sample.docx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/view-specific-pages/sample.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "view-pages-from-array.zip" >}}  
```text
view-pages-from-array_1.html (253 KB)
view-pages-from-array_2.html (110 KB)
view-pages-from-array_4.html (1001 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/rendering-documents/view-specific-pages/ViewPagesFromArray/view-pages-from-array.zip)
{{< /tab >}}
{{< /tabs >}}