---
id: control-temporary-files
url: viewer/java/control-temporary-files
title: Control temporary files
weight: 7
description: "By following this guide, you will learn how to control temporary files used by GroupDocs.Viewer for Java."
keywords: control temporary files
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
structuredData:
  showOrganization: True
  application:
    name: Document Viewer
    description: Manage temporary files creation in GroupDocs.Viewer for Java
    productCode: viewer
    productPlatform: java
  showVideo: True
  howTo:
    name: How to control temporary files creation in GroupDocs.Viewer for Java
    description: Learn how to control temporary files creation in GroupDocs.Viewer for Java
    steps:
      - name: Create a class to control temporary files
        text: Create a class that will implement TemporaryFileManager interface with it's methods.
      - name: Setup GroupDocs.Viewer for Java to use the class
        text: Use method setInstance of TemporaryFileManagerFactory class to make it use custom TemporaryFileManager implementation.
---

[GroupDocs.Viewer](https://products.groupdocs.com/viewer/java) allows you to control a way temporary files and directories is created. Follow these steps to implement custom logic for creating temporary files and folders:

1. Create a class that implements the `com.groupdocs.viewer.common.tempfiles.TemporaryFileManager` interface and its methods:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
class CustomTemporaryFileManager implements TemporaryFileManager {

    @Override
    public Path createTempDirectory() {
        // Implementation
    }

    @Override
    public Path createTempDirectory(String... pathsAsStrings) {
        // Implementation
    }

    @Override
    public Path createTempDirectory(Path... paths) {
        // Implementation
    }

    @Override
    public Path createTempFile() {
        // Implementation
    }

    @Override
    public Path createTempFile(String... pathsAsStrings) {
        // Implementation
    }

    @Override
    public Path createTempFile(Path... paths) {
        // Implementation
    }

    @Override
    public void delete(Path path) {
        // Implementation
    }

    @Override
    public void cleanup() {
        // Implementation
    }
}
```
{{< /tab >}}
{{< /tabs >}}

2. Create an object of the class and specify it as a parameter of the `setInstance` method of `TemporaryFileManagerFactory`:
{{< tabs "example2">}}
{{< tab "Java" >}}
```java
final CustomTemporaryFileManager customTemporaryFileManager = new CustomTemporaryFileManager();
TemporaryFileManagerFactory.setInstance(customTemporaryFileManager);
```
{{< /tab >}}
{{< /tabs >}}
   Now [GroupDocs.Viewer](https://products.groupdocs.com/viewer/java) uses this implementation for creating temporary files and directories.
 
3. Use the implementation for your needs as follows:
 
{{< tabs "example3">}}
{{< tab "Java" >}}
```java
final TemporaryFileManager temporaryFileManager = TemporaryFileManagerFactory.getInstance();
final Path tempFile = temporaryFileManager.createTempFile("temp.txt");
// Do something with the file
temporaryFileManager.delete(tempFile);
```
{{< /tab >}}
{{< /tabs >}}

{{< alert style="info" >}}

Default implementation creates the temporary files and directories in a directory specified by the `java.io.tmpdir` property.

{{< /alert >}}