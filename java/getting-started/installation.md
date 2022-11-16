---
id: installation
url: viewer/java/installation
title: Installation
weight: 4
description: "GroupDocs.Viewer for Java installation"
keywords: "groupdocs viewer java, installation, maven"
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---

## Install using Maven

All Java packages are hosted at [GroupDocs Artifact Repository](https://repository.groupdocs.com/). You can easily reference GroupDocs.Viewer for Java API directly in your Maven project using following steps.

### Add GroupDocs Artifact Repository

First, you need to specify repository configuration/location in your Maven `pom.xml` as follows:

{{< tabs "example1">}}
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

Then define GroupDocs.Viewer for Java API dependency in your `pom.xml` as follows:

{{< tabs "example2">}}
{{< tab "pom.xml" >}}
```xml
<dependencies>
    <dependency>
        <groupId>com.groupdocs</groupId>
        <artifactId>groupdocs-viewer</artifactId>
        <version>21.11.1</version> 
    </dependency>
</dependencies>
```
{{< /tab >}}
{{< /tabs >}}
