---
id: classnotfoundexception-bouncycastleprovider
url: viewer/java/classnotfoundexception-bouncycastleprovider
title: ClassNotFoundException BouncyCastleProvider exception
weight: 1
description: "This article is about ClassNotFoundException: BouncyCastleProvider exception"
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---

GroupDocs.Viewer for Java  API depends on Bouncy Castle for encryption and decryption features, that is; if the program is required to load or save encrypted spreadsheets, it is required to add reference of `bcprov-jdk16-1.46.jar` in the project’s class path.

## Symptoms

You may get exception like `java.lang.ClassNotFoundException: org.bouncycastle.jce.provider.BouncyCastleProvider`.

## Solution

The solution is actually very simple as detailed below.

* Download `bcprov-jdk16-1.46.jar` library as JAR file from [Maven repository](https://mvnrepository.com/artifact/org.bouncycastle/bcprov-jdk16/1.46).
* Put the file into your project directory.
* Reference the `bcprov-jdk16-1.46.jar` in the class path of the project.

Alternatively, you can add the dependency in the pom.xml and let the project resolve the dependency via maven.

```xml
<dependency>
    <groupId>org.bouncycastle</groupId>
    <artifactId>bcprov-jdk16</artifactId>
    <version>1.46</version>
</dependency>
```
