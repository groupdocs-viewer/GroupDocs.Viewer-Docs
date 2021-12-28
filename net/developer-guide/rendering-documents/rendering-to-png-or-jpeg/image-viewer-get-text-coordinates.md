---
id: image-viewer-get-text-coordinates
url: viewer/net/image-viewer-get-text-coordinates
title: Get text coordinates
weight: 4
description: "Learn how to obtain text coordinates when rendering your documents with Image Viewer by GroupDocs and place text over rendered document page image."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
GroupDocs.Viewer provides the feature of getting text coordinates. This feature is useful if you want to add selectable text over the image or implement a text search in image-based rendering. 

The [ExtractText](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewinfooptions/properties/extracttext) property of [ViewInfoOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewinfooptions) class enables you to get the text contained in a source document with coordinates.

Following code sample shows how to retrieve and print out text ([lines](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.results/page/properties/lines) / [words](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.results/line/properties/words) / [characters](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.results/word/properties/characters)) of each document [page](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.results/page) with coordinates.

```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    bool extractText = true;
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.ForPngView(extractText);
    ViewInfo viewInfo = viewer.GetViewInfo(viewInfoOptions);

    foreach(Page page in viewInfo.Pages)
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
