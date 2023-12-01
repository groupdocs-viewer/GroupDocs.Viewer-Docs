---
id: image-viewer-get-text-coordinates
url: viewer/python-net/image-viewer-get-text-coordinates
title: Get text coordinates
weight: 4
description: "Learn how to obtain text coordinates when rendering your documents with Image Viewer by GroupDocs and place text over rendered document page image."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
Use the [ExtractText](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewinfooptions/properties/extracttext) property of the [ViewInfoOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/viewinfooptions) class to get the text contained in a source document and its coordinates. Then you can use this data to add a selectable text over the image or to implement a text search in image-based rendering.

The following code snippet shows how to retrieve and print out text ([lines](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.results/page/properties/lines)/[words](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.results/line/properties/words)/[characters](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.results/word/properties/characters)) on each document [page](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.results/page) with coordinates:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
with gv.Viewer(test_files.sample_docx) as viewer:
    # Get the file information and extract text
    extract_text = True
    view_info_options = ViewInfoOptions.for_png_view(extract_text)
    view_info = viewer.get_view_info(view_info_options)

    # Display the file information and text
    for page in view_info.pages:
        print(f"Page: {page.number}")
        print("Text lines/words/characters:")

        for line in page.lines:
            print(line)
            for word in line.words:
                print(f"\t{word}")
                for character in word.characters:
                    print(f"\t\t{character}")
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/python-net/images/image-viewer-get-text-coordinates.png)