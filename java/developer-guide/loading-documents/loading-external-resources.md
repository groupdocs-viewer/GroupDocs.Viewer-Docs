---
id: loading-external-resources
url: viewer/java/loading-external-resources
title: Loading of external resources containing by a document
weight: 5
keywords: set timeout, Groupdocs.Viewer
description: "This article explains how to manage loading of external resources contained by a document with GroupDocs.Viewer within your Java applications."
productName: GroupDocs.Viewer for Java
hideChildren: False
---

If the document contains external resources, such as images, GroupDocs.Viewer loads them when rendering a document. This allows the document to display correctly, but is a potential security risk.

GroupDocs.Viewer allows you to manage loading of external resources contained by a document. These features are supported for the following formats:
- [Word Processing File Formats](https://docs.fileformat.com/word-processing/)
- [Web File Formats](https://docs.fileformat.com/web/)
- [SpreadSheet File Formats](https://docs.fileformat.com/spreadsheet/)

Use the [LoadOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/loadoptions/) object to manage loading of external resources.

## Skip loading of external resources

The following code snippet shows how to deny loading of external resources:

{{< tabs "example3">}}
{{< tab "Java" >}}
```java
LoadOptions loadOptions = new LoadOptions();
loadOptions.setSkipExternalResources(true); // Skip loading of external resources

try (Viewer viewer = new Viewer("business-flyer.docx", loadOptions)) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< tab "Kotlin">}}
```kotlin
val loadOptions = LoadOptions()
loadOptions.isSkipExternalResources = true // Skip loading of external resources

Viewer("business-flyer.docx", loadOptions).use { viewer ->
    val viewOptions = HtmlViewOptions.forEmbeddedResources()

    viewer.view(viewOptions)
}
```
{{< /tab >}}
{{< /tabs >}}

The following images show the output file with and without external resources (see top right corner):

| loadOptions.setSkipExternalResources(false)               | loadOptions.setSkipExternalResources(true)                  |
|-----------------------------------------------------------|-------------------------------------------------------------|
| ![False](/viewer/java/images/with-external-resources.png) | ![True](/viewer/java/images/without-external-resources.png) |

## Manage a safelist for loading external resources

The following code snippet shows how to allow loading of external resources from specific URLs:

{{< tabs "example2">}}
{{< tab "Java" >}}
```java
LoadOptions loadOptions = new LoadOptions();
loadOptions.setSkipExternalResources(true); // Skip loading of all external resources
loadOptions.getWhitelistedResources().add("avatars.githubusercontent.com"); // Enable loading of external resources that has `avatars.githubusercontent.com` fragment in resource URL.

try (Viewer viewer = new Viewer("business-flyer.docx", loadOptions)) {
   HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
   viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< tab "Kotlin">}}
```kotlin
val loadOptions = LoadOptions()
loadOptions.isSkipExternalResources = true // Skip loading of all external resources
loadOptions.whitelistedResources.add("avatars.githubusercontent.com") // Enable loading of external resources that has `avatars.githubusercontent.com` fragment in resource URL.

val viewer = Viewer("business-flyer.docx", loadOptions)
val viewOptions = HtmlViewOptions.forEmbeddedResources()
viewer.use {
    it.view(viewOptions)
}
```
{{< /tab >}}
{{< /tabs >}}

## Set timeout for loading of external resources

The default timeout is 10 seconds. GroupDocs.Viewer allows you to change this value.

The following code snippet shows how to set a timeout to load external resources:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
// Specify a timeout.
LoadOptions loadOptions = new LoadOptions();
loadOptions.setResourceLoadingTimeout(5000);
// Render a file.
try (Viewer viewer = new Viewer("sample.docx", loadOptions)) {
   HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
   viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< tab "Kotlin">}}
```kotlin
// Specify a timeout.
val loadOptions = LoadOptions()
loadOptions.setResourceLoadingTimeout(5000)
// Render a file.
Viewer("sample.docx", loadOptions).use { viewer ->
   val viewOptions = HtmlViewOptions.forEmbeddedResources()
   viewer.view(viewOptions)
}

```
{{< /tab >}}
{{< /tabs >}}
