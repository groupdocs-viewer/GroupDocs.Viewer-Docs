---
id: classnotfoundexception-bouncycastleprovider
url: viewer/java/classnotfoundexception-bouncycastleprovider
title: ClassNotFoundException BouncyCastleProvider exception
weight: 2
description: "This article is about ClassNotFoundException: BouncyCastleProvider exception"
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
## Summary

[GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) API depends on Bouncy Castle for encryption and decryption features, that is; if the program is required to load or save encrypted spreadsheets, it is required to add reference of `bcprov-jdk16-1.46.jar` in the project’s class path.

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

## More resources

### GitHub Examples
You may easily run the code above and see the feature in action in our GitHub examples:
*   [GroupDocs.Viewer for Java examples, plugins, and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java)
*   [Document Viewer for .NET App WebForms UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-WebForms)
*   [Document Viewer for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Dropwizard)
*   [Document Viewer for Java Spring UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Spring)
*   [GroupDocs.Viewer for .NET samples, plugins and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET)
*   [Document Viewer for .NET MVC UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-MVC)

### Free Online App
Along with full-featured Java library we provide simple but powerful free Apps.
You are welcome to view Word, PDF, Excel, PowerPoint documents with free to use online **[GroupDocs Viewer App](https://products.groupdocs.app/viewer)**.
