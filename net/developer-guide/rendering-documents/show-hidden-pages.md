---
id: show-hidden-pages
url: viewer/net/show-hidden-pages
title: Render hidden pages
weight: 4
description: "Learn how to render hidden pages on website or in other c# applications with GroupDocs.Viewer for .NET"
keywords: hidden pages, hidden pages on website
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
By default, GroupDocs.Viewer does not render hidden items. To render them, set the RenderHiddenPages property of the [ViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/viewoptions/) class to `true`.

This feature is supported for the following format families:

* Visio documents (for hidden pages)
* PowerPoint presentations (for hidden slides)
* Spreadsheets files (for hidden worksheets)

The following code snippet shows how to enable rendering of hidden items:

{{< tabs "show-hidden-pages">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

using (Viewer viewer = new Viewer("sample.pptx"))
{
    // Create view options.
    var viewOptions = HtmlViewOptions.ForEmbeddedResources();

    // Enable rendering of hidden items.
    viewOptions.RenderHiddenPages = true;
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
        Using viewer As Viewer = New Viewer("sample.pptx")
            ' Create view options.
            Dim viewOptions = HtmlViewOptions.ForEmbeddedResources()
        
            ' Enable rendering of hidden items.
            viewOptions.RenderHiddenPages = True
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< tab "sample.pptx" >}}
{{< tab-text >}}
`sample.pptx` is the sample file used in this example. Click [here](/viewer/net/_sample_files/developer-guide/rendering-documents/show-hidden-pages/sample.pptx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "show-hidden-pages.zip" >}}  
```text
p_1.html (467 KB)
p_2.html (329 KB)
p_3.html (344 KB)
p_4.html (343 KB)
p_5.html (347 KB)
p_6.html (333 KB)
p_7.html (327 KB)
p_8.html (330 KB)
```
[Download full output](/viewer/net/_output_files/developer-guide/rendering-documents/show-hidden-pages/ShowHiddenPages/show-hidden-pages.zip)
{{< /tab >}}
{{< /tabs >}}