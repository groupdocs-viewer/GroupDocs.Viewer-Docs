---
id: load-password-protected-document
url: viewer/java/load-password-protected-document
title: Load password-protected document
weight: 2
description: "This article explains how to load password-protected document with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---

The encryption is used to protect data and allow only authorized persons to open the file. When a file is encrypted, the passwords must be specified to open the file. [GroupDocs.Viewer](https://products.groupdocs.com/viewer) supports rendering documents that are protected with a password. To learn how to check if the file is encrypted please refer to [How to check if file is encrypted]({{< ref "viewer/java/developer-guide/retrieving-document-information/how-to-check-if-file-is-encrypted.md" >}}) documentation article.

The following code sample shows how to render password-protected documents.

```java
    LoadOptions loadOptions = new LoadOptions();
    loadOptions.setPassword("123456");

    try (Viewer viewer = new Viewer("sample.docx", loadOptions)) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewer.view(viewOptions);
    }
```

## Exceptions

* Password is not specified - GroupDocs.Viewer throws [PasswordRequiredException](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.exception/PasswordRequiredException)

* Incorrect password set - GroupDocs.Viewer for Java throws [IncorrectPasswordException](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.exception/IncorrectPasswordException)
