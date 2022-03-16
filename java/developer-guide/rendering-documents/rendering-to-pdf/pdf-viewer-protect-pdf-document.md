---
id: pdf-viewer-protect-pdf-document
url: viewer/java/pdf-viewer-protect-pdf-document
title: Protect PDF document
weight: 2
description: "Check this guide and learn how to view protected PDF documents inside your Java application using PDF Viewer by GroupDocs."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
GroupDocs.Viewer enables you to protect PDF document by setting permissions, password for opening and password for changing permissions.

The following steps are to be followed in order to set PDF document permissions.

* Create a new instance of the [Viewer](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class and pass the source document path as a constructor parameter.
* Initialize the instance of [Security](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/Security) class;
* Set [setDocumentOpenPassword()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/Security#setDocumentOpenPassword(java.lang.String)) property if password is required to open PDF document;
* Set [setPermissionsPassword()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/Security#setPermissionsPassword(java.lang.String)) property if it is required to change restrictions applied to PDF document; 
* Set [setPermissions()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/Security#setPermissions(int)) property to specify exact permissions that should be applied to document;
* Instantiate the [PdfViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) object and specify saving path format for rendered document.
* Initialize [setSecurity()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions#setSecurity(com.groupdocs.viewer.options.Security)) property of [PdfViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) with object created at previous steps;
* Pass [PdfViewOptions](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/PdfViewOptions) object to [view()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer#view(com.groupdocs.viewer.options.ViewOptions)) method of [Viewer](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer/Viewer) class.

Following example demonstrates how to protect output PDF document.

```java
try (Viewer viewer = new Viewer("sample.docx")) {
    Security security = new Security();
    security.setDocumentOpenPassword("o123");
    security.setPermissionsPassword("p123");
    security.setPermissions(Permissions.ALLOW_ALL ^ Permissions.DENY_PRINTING);

    PdfViewOptions viewOptions = new PdfViewOptions(filePath);
    viewOptions.setSecurity(security);

    viewer.view(viewOptions);
}
```
