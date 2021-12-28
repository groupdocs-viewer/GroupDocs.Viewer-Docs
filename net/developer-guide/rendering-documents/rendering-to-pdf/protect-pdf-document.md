---
id: pdf-viewer-protect-pdf-documents
url: viewer/net/protect-pdf-documents
title: Protect PDF
weight: 2
description: "Protect PDF documents when rendering documents using GroupDocs.Viewer for .NET"
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
GroupDocs.Viewer enables you to protect PDF document by setting permissions, password for opening and password for changing permissions.

The following steps are to be followed in order to set PDF document permissions.

* Create a new instance of the [Viewer](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class and pass the source document path as a constructor parameter.
* Initialize the instance of [Security](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/security) class;
* Set [DocumentOpenPassword](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/security/properties/documentopenpassword) property if password is required to open PDF document;
* Set [PermissionsPassword](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/security/properties/permissionspassword) property if it is required to change restrictions applied to PDF document; 
* Set [Permissions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/permissions) property to specify exact permissions that should be applied to document;
* Instantiate the [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) object and specify saving path format for rendered document.
* Initialize [Security](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions/properties/security) property of [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) with object created at previous steps;
* Pass [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions) object to [View](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method of [Viewer](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/viewer) class.

Following example demonstrates how to protect output PDF document.

```csharp
using (Viewer viewer = new Viewer("sample.docx"))
{
    Security security = new Security();
    security.DocumentOpenPassword = "o123";
    security.PermissionsPassword = "p123";
    security.Permissions = Permissions.AllowAll ^ Permissions.DenyPrinting;
    
    PdfViewOptions viewOptions = new PdfViewOptions(filePath);
    viewOptions.Security = security;
                    
    viewer.View(viewOptions);
}
```
