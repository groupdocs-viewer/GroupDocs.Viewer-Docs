---
id: noclassdeffounderror-javaxxmlbind
url: viewer/java/noclassdeffounderror-javaxxmlbind
title: NoClassDefFoundError javax/xml/bind/DatatypeConverter
weight: 2
description: "This article is about NoClassDefFoundError: javax/xml/bind/DatatypeConverter"
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
## Summary

[GroupDocs.Viewer for Java](https://products.groupdocs.com/viewer/java) API depends on javax.xml.bind for working with PDF files, that is; in case of using Java 9 and above and if the program is required to work with PDF file types, it is required to add reference of `javax.xml.bind` in the project’s class path, because the library was removed from standard Java library.

## Symptoms

You may get exception like `java.lang.NoClassDefFoundError: javax/xml/bind/DatatypeConverter`.

## Solution

The solution is actually very simple as detailed below.

* Download `jaxb-api-2.3.0.jar` library as JAR file from [Maven repository](https://mvnrepository.com/artifact/javax.xml.bind).
* Put the file into your project directory.
* Reference the `jaxb-api-2.3.0.jar` in the class path of the project.

Alternatively, you can add the dependency in the pom.xml and let the project resolve the dependency via maven.
```xml
<dependency>
    <groupId>javax.xml.bind</groupId>
    <artifactId>jaxb-api</artifactId>
    <version>2.3.0</version>
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
