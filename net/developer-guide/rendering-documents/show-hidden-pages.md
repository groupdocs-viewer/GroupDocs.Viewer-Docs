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

{{< tabs "example1">}}
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
{{< /tabs >}}