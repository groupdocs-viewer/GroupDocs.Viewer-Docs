---
id: image-viewer-get-text-coordinates
url: viewer/net/image-viewer-get-text-coordinates
title: Get text coordinates
weight: 4
description: "Learn how to obtain text coordinates when rendering your documents with Image Viewer by GroupDocs and place text over rendered document page image."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
Use the [ExtractText](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewinfooptions/properties/extracttext) property of the [ViewInfoOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewinfooptions) class to get the text contained in a source document and its coordinates. Then you can use this data to add a selectable text over the image or to implement a text search in image-based rendering.

The following code snippet shows how to retrieve and print out text ([lines](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.results/page/properties/lines)/[words](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.results/line/properties/words)/[characters](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.results/word/properties/characters)) on each document [page](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.results/page) with coordinates:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using System;
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
using GroupDocs.Viewer.Results;
// ...

using (Viewer viewer = new Viewer("sample.docx"))
{
    // Get the file information and extract it text.
    bool extractText = true;
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForPngView(extractText);
    ViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions);

    // Display the file information and text.
    foreach (Page page in viewInfo.Pages)
    {
        Console.WriteLine($"Page: {page.Number}");
        Console.WriteLine("Text lines/words/characters:");

        foreach (Line line in page.Lines)
        {
            Console.WriteLine(line);
            foreach (Word word in line.Words)
            {
                Console.WriteLine($"\t{word}");
                foreach (Character character in word.Characters)
                {
                    Console.WriteLine($"\t\t{character}");
                }
            }
        }
    }
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports System
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
Imports GroupDocs.Viewer.Results
' ...

Module Program
    Sub Main(args As String())
        Using viewer As Viewer = New Viewer("sample.docx")
            ' Get the file information and extract it text.
            Dim extractText As Boolean = True
            Dim viewInfoOptions As ViewInfoOptions = ViewInfoOptions.ForPngView(extractText)
            Dim viewInfo As ViewInfo = viewer.GetViewInfo(viewInfoOptions)
        
            ' Display the file information and text.
            For Each page As Page In viewInfo.Pages
                Console.WriteLine($"Page: {page.Number}")
                Console.WriteLine("Text lines/words/characters:")
        
                For Each line As Line In page.Lines
                    Console.WriteLine(line)
                    For Each word As Word In line.Words
                        Console.WriteLine($"	{word}")
                        For Each character As Character In word.Characters
                            Console.WriteLine($"		{character}")
                        Next
                    Next
                Next
            Next
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/net/images/image-viewer-get-text-coordinates.png)