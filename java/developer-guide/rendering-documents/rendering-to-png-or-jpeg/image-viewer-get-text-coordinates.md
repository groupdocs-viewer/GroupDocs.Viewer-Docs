---
id: image-viewer-get-text-coordinates
url: viewer/java/image-viewer-get-text-coordinates
title: Get text coordinates
weight: 4
description: "Learn how to obtain text coordinates when rendering your documents with Image Viewer by GroupDocs and place text over rendered document page image."
productName: GroupDocs.Viewer for Java
hideChildren: False
---
Use the [setExtractText()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/viewinfooptions/#setExtractText-boolean-) method of the [ViewInfoOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/viewinfooptions/) class to get the text contained in a source document and its coordinates. Then you can use this data to add a selectable text over the image or to implement a text search in image-based rendering.

The following code snippet shows how to retrieve and print out text ([lines](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/page/#getLines--)/[words](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/line/#getWords--)/[characters](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/word/#getCharacters--)) on each document [page](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/page/) with coordinates:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.ViewInfoOptions;
import com.groupdocs.viewer.results.Character;
import com.groupdocs.viewer.results.Line;
import com.groupdocs.viewer.results.Page;
import com.groupdocs.viewer.results.ViewInfo;
import com.groupdocs.viewer.results.Word;
// ...

try (Viewer viewer = new Viewer("sample.docx")) {
    ViewInfoOptions viewInfoOptions = ViewInfoOptions.forPngView(true);
    ViewInfo viewInfo = viewer.getViewInfo(viewInfoOptions);

    for (Page page : viewInfo.getPages()) {
        System.out.println("Page: " + page.getNumber());
        System.out.println("Text lines/words/characters:");

        for (Line line : page.getLines()) {
            System.out.println(line);
            for (Word word : line.getWords()) {
                System.out.println("\t" + word);
                for (Character character : word.getCharacters()) {
                    System.out.println("\t\t" + character);
                }
            }
        }
    }
}
```
{{< /tab >}}
{{< /tabs >}}

The following image shows a sample console output:

![](/viewer/java/images/image-viewer-get-text-coordinates.png)