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

We are hosting all Java class-libraries at [GroupDocs Artifact Repository](https://repository.groupdocs.com/). You can easily reference GroupDocs.Viewer for Java API directly in your Maven project using following steps.

### Add GroupDocs Artifact Repository

First, you need to specify repository configuration/location in your Maven `pom.xml` as follows:

```xml
<repositories>
    <repository>
        <id>GroupDocs Artifact Repository</id>
        <name>GroupDocs Artifact Repository</name>
        <url>https://repository.groupdocs.com/repo/</url>
    </repository>
</repositories>
```

### Add GroupDocs.Viewer as a dependency

Then define GroupDocs.Viewer for Java API dependency in your `pom.xml` as follows:

```xml
<dependencies>
    <dependency>
        <groupId>com.groupdocs</groupId>
        <artifactId>groupdocs-viewer</artifactId>
        <version>21.11.1</version> 
    </dependency>
</dependencies>
```
  
After performing the above-mentioned steps, GroupDocs.Viewer for Java dependency will finally be added to your Maven project.

## Install manually

You can follow the steps below to reference GroupDocs.Viewer for Java downloaded from official [Downloads Downloads](https://downloads.groupdocs.com/viewer/java) website:

1. Unpack zip archive.
2. Navigate to **lib** folder.
3. Run **install.bat** (on Windows) or **install.sh** (on Linux) file to install the library in your local maven repository.
4. After this you add the GroupDocs.Viewer for Java **dependency** block to your pom.xml project file.
