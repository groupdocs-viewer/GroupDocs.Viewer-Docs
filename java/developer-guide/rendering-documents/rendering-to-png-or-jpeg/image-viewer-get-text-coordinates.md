---
id: image-viewer-get-text-coordinates
url: viewer/java/image-viewer-get-text-coordinates
title: Get text coordinates
weight: 4
description: "Learn how to obtain text coordinates when viewing your documents with Image Viewer by GroupDocs and place text over rendered document page image."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer provides the feature of getting text coordinates. This feature is useful if you want to add selectable text over the image or implement a text search in image-based rendering.

The [isExtractText()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ViewInfoOptions#isExtractText()) property of [ViewInfoOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ViewInfoOptions) class enables you to get the text contained in a source document with coordinates. To change the property you have to create class [ViewInfoOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ViewInfoOptions) using static method [forJpgView()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ViewInfoOptions#forJpgView(boolean)) or [forPngView()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/ViewInfoOptions#forPngView(boolean)) with appropriate parameter (true or false).

Following code sample shows how to retrieve and print out text ([lines](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/Page#getLines()) / [words](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/Line#getWords()) / [characters](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/Word#getCharacters())) of each document [page](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.results/Page) with coordinates.

```java
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
