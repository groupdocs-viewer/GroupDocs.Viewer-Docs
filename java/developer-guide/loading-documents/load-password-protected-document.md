---
id: load-password-protected-document
url: viewer/java/load-password-protected-document
title: Load password-protected documents
weight: 2
keywords: groupdocs.viewer, password protected document
description: "This article explains how to open password-protected document with GroupDocs.Viewer within your Java applications."
productName: GroupDocs.Viewer for Java
hideChildren: False
---

The encryption protects data and allows only authorized people to open the file. When a file is encrypted, the password must be specified to open the file. To learn how to identify the encrypted file, please refer to the [Check if a file is encrypted]({{< ref "viewer/java/developer-guide/retrieving-document-information/how-to-check-if-file-is-encrypted.md" >}}) page.

To load and render an encrypted document, follow these steps:

1. Instantiate the [HtmlViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/htmlviewoptions/) (or [PngViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pngviewoptions/), or [JpgViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/jpgviewoptions/), or [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/)) object.
2. Set a password using the [LoadOptions.setPassword()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/loadoptions/#setPassword-java.lang.String-) method.
{{< alert style="info" >}}
If the password is not specified, GroupDocs.Viewer throws [PasswordRequiredException](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.exception/PasswordRequiredException).
If the incorrect password is specified, GroupDocs.Viewer throws [IncorrectPasswordException](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.exception/IncorrectPasswordException).
{{< /alert >}}
3. Call the [View.view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#view-com.groupdocs.viewer.options.ViewOptions-) method.

The following code snippet shows how to load and render an encrypted document:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
import com.groupdocs.viewer.options.LoadOptions;
// ...

LoadOptions loadOptions = new LoadOptions();
// Specify a password.
loadOptions.setPassword("123456");

// Render the file.
try (Viewer viewer = new Viewer("sample.docx", loadOptions)) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}

