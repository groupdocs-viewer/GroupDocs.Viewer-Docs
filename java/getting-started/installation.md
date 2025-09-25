---
id: installation
url: viewer/java/installation
title: Install GroupDocs.Viewer for Java
linkTitle: Installation
weight: 4
keywords: installation, maven, java
description: "This topic describes how to install GroupDocs.Viewer for Java."
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---

{{< alert style="info" >}}

Starting from [GroupDocs.Viewer for Java 24.4](https://releases.groupdocs.com/viewer/java/release-notes/2024/groupdocs-viewer-for-java-24-4-release-notes/), the JAR package is signed using a GPG signature. You can find the public key in the [GPG-KEYS.txt](https://releases.groupdocs.com/java/repo/com/groupdocs/GPG-KEYS.txt) file. Learn more about verifying signatures in the [Making and verifying signatures](https://www.gnupg.org/gph/en/manual/x135.html) article.

{{< /alert >}}

## Install using Maven

All GroupDocs packages are hosted at [GroupDocs Artifact Repository](https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-viewer/). You can download packages or reference GroupDocs.Viewer for Java API directly in your Maven project using following steps. 

{{< alert style="tip" >}}

[Download](/viewer/java/sample-apps/getting-started/installation/maven-app.zip) a sample Maven application that demonstrates using GroupDocs.Viewer for Java. You can run the application locally with `mvn exec:java` command.

{{< /alert >}}

### Add GroupDocs Artifact Repository

Add GroupDocs Artifact Repository to your `pom.xml` file:

{{< tabs "pom-repository">}}
{{< tab "pom.xml" >}}
```xml
<repositories>
    <repository>
        <id>GroupDocs Artifact Repository</id>
        <name>GroupDocs Artifact Repository</name>
        <url>https://releases.groupdocs.com/java/repo/</url>
    </repository>
</repositories>
```
{{< /tab >}}
{{< /tabs >}}

### Add GroupDocs.Viewer as a dependency

Define GroupDocs.Viewer for Java API dependency in your `pom.xml`:

{{< tabs "pom-dependency">}}
{{< tab "pom.xml" >}}
```xml
<dependencies>
    <dependency>
        <groupId>com.groupdocs</groupId>
        <artifactId>groupdocs-viewer</artifactId>
        <version>25.9</version> 
    </dependency>
</dependencies>
```
{{< /tab >}}
{{< /tabs >}}

## Reference in Java application

To get started, download the latest version of GroupDocs.Viewer for Java (JAR file) from [GroupDocs Artifact Repository](https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-viewer/). Also, make sure you have [Java](https://www.oracle.com/java/technologies/downloads/) installed.

### Create application

{{< alert style="tip" >}}

You can [download](/viewer/java/sample-apps/getting-started/installation/java-app.zip) the sample application and proceed to building it.

{{< /alert >}}

{{< tabs "java-app">}}
{{< tab "App.java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.*;

public class App {
    public static void main(String[] args) throws Exception {
        Viewer viewer = new Viewer("formatting.docx");
        viewer.view(HtmlViewOptions.forEmbeddedResources());
        viewer.close();
    }
}
```
{{< /tab >}}
{{< tab "formatting.docx" >}}
{{< tab-text >}}
`formatting.docx` is sample DOCX file that we're going to use in this example. Click [here](/viewer/java/sample-files/getting-started/installation/formatting.docx) to download it.
{{< /tab-text >}}
{{< /tab >}}
{{< tab "groupdocs-viewer.jar" >}}
{{< tab-text >}}
`groupdocs-viewer.jar` is GroupDocs.Viewer for Java JAR file e.g., [groupdocs-viewer-24.4.jar](https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-viewer/24.4/groupdocs-viewer-24.4.jar).
{{< /tab-text >}}
{{< /tab >}}
{{< /tabs >}}

Your folder tree should look similar to the following directory structure:

```Directory
📂 java-app
 ├──App.java
 ├──formatting.docx
 └──groupdocs-viewer.jar
```

### Build application

To build Java application run the command below. This comand compiles the application and creates `App.class` file in the current directory.

{{< tabs "java-app-build">}}
{{< tab "Windows" >}}
```bash
javac -d . -cp ".;./groupdocs-viewer.jar" App.java
```
{{< /tab >}}
{{< tab "Linux" >}}
```bash
javac -d . -cp ".:./groupdocs-viewer.jar" App.java
```
{{< /tab >}}
{{< /tabs >}}

### Run application

To run the application type the command below. As a result two HTML documents will be created in the current directory for the first two pages of the document.

{{< tabs "java-app-run">}}
{{< tab "Windows" >}}
```bash
java -cp ".;./groupdocs-viewer.jar" App
```
{{< /tab >}}
{{< tab "Linux" >}}
```bash
java -Djava.awt.headless=true -cp ".:./groupdocs-viewer.jar" App
```

{{< tab-text >}}
Please note that `-Djava.awt.headless=true` required when your Java installation does not inlude GUI libraries.
{{< /tab-text >}}

{{< /tab >}}
{{< /tabs >}}
