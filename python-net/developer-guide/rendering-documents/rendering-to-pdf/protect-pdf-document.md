---
id: pdf-viewer-protect-pdf-documents
url: viewer/python-net/protect-pdf-documents
title: Protect PDF document
weight: 2
description: "Protect PDF documents when rendering documents using GroupDocs.Viewer for Python via .NET"
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---
You can protect a PDF document by setting the following parameters:

* permissions
* password to open document
* password to change permissions

To protect a PDF document, follow these steps:

1. Create an instance of the [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) class. Specify the source document path as a constructor parameter.
2. Instantiate the [Security](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/security) object.
3. To specify a password to open the document, set the [DocumentOpenPassword](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/security/#properties) property.
4. To specify a password to change restrictions, set the [PermissionsPassword](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/security/#properties) property. 
5. To specify the document permissions, set the [Permissions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/permissions) property.
6. Instantiate the [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions) object. Specify the saving path format for the rendered document.
7. Initialize the [Security](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions/#properties) property of the [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions) object with the object created in steps 2-5.
8. Call the [view](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer/#methods) method of the [Viewer](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer/viewer) object. Specify the [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions) object as the parameter.

The following code snippet shows how to protect the output PDF document:

{{< tabs "example1">}}
{{< tab "Python">}}
```python
with gv.Viewer("sample.docx") as viewer:
    # Specify the security settings.
    security = gvo.Security()
    security.document_open_password = "o123"
    security.permissions_password = "p123"
    security.permissions = gvo.Permissions.ALLOW_ALL & ~gvo.Permissions.DENY_PRINTING

    # Create a PDF file.
    pdf_options = gvo.PdfViewOptions()

    # Apply the security settings
    pdf_options.security = security
    viewer.view(pdf_options)
```
{{< /tab >}}
{{< /tabs >}}