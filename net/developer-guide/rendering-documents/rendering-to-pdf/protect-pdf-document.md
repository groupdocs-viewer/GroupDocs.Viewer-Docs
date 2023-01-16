---
id: pdf-viewer-protect-pdf-documents
url: viewer/net/protect-pdf-documents
title: Protect PDF
weight: 2
description: "Protect PDF documents when rendering documents using GroupDocs.Viewer for .NET"
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
You can protect a PDF document by setting the following parameters:

* permissions
* password to open document
* password to change permissions

To protect a PDF document, follow these steps:

1. Create an instance of the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class. Specify the source document path as a constructor parameter.
2. Instantiate the [Security](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/security) object.
3. To specify a password to open the document, set the [DocumentOpenPassword](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/security/properties/documentopenpassword) property.
4. To specify a password to change restrictions, set the [PermissionsPassword](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/security/properties/permissionspassword) property. 
5. To specify the document permissions, set the [Permissions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/permissions) property.
6. Instantiate the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) object. Specify the saving path format for the rendered document.
7. Initialize the [Security](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions/properties/security) property of the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) object with the object created in steps 2-5.
8. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method of the [Viewer](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) object. Specify the [PdfViewOptions](https://reference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) object as the parameter.

The following code snippet shows how to protect the output PDF document:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    // Specify the security settings.
    Security security = new Security();
    security.DocumentOpenPassword = "o123";
    security.PermissionsPassword = "p123";
    security.Permissions = Permissions.AllowAll ^ Permissions.DenyPrinting;
    // Create a PDF file.
    PdfViewOptions viewOptions = new PdfViewOptions();
    // Apply the security settings
    viewOptions.Security = security;                    
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}