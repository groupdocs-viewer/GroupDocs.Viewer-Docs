---
id: pdf-viewer-protect-pdf-documents
url: viewer/java/protect-pdf-documents
title: Protect PDF document
weight: 2
description: "Protect PDF documents when rendering documents using GroupDocs.Viewer for Java"
productName: GroupDocs.Viewer for Java
hideChildren: False
---
You can protect a PDF document by setting the following parameters:

* permissions
* password to open document
* password to change permissions

To protect a PDF document, follow these steps:

1. Create an instance of the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class. Specify the source document path as a constructor parameter.
2. Instantiate the [Security](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/security/) class.
3. To specify a password to open the document, call the [setDocumentOpenPassword()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/security/#setDocumentOpenPassword-java.lang.String-) method.
4. To specify a password to change restrictions, call the [setPermissionsPassword()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/security/#setPermissionsPassword-java.lang.String-) method. 
5. To specify the document permissions, call the [setPermissions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/security/#setPermissions-int-) method.
6. Instantiate the [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/) object. Specify the saving path format for the rendered document.
7. Call the [setSecurity](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/#setSecurity-com.groupdocs.viewer.options.Security-) method of the [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/) class. Specify object created in steps 2-5.
8. Call the [View.view()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/viewer/#view-com.groupdocs.viewer.options.ViewOptions-) method of the [Viewer](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) object. Specify the [PdfViewOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/pdfviewoptions/) object as the parameter.

The following code snippet shows how to protect the output PDF document:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.PdfViewOptions;
import com.groupdocs.viewer.options.Permissions;
import com.groupdocs.viewer.options.Security;
// ...

try (Viewer viewer = new Viewer("sample.docx")) {
    // Specify the security settings.
    Security security = new Security();
    security.setDocumentOpenPassword("o123");
    security.setPermissionsPassword("p123");
    security.setPermissions(Permissions.ALLOW_ALL ^ Permissions.DENY_PRINTING);
    // Create a PDF file.
    PdfViewOptions viewOptions = new PdfViewOptions("output.pdf");
    // Apply the security settings.
    viewOptions.setSecurity(security);

    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}