---
id: load-password-protected-document
url: viewer/net/load-password-protected-document
title: Load password-protected documents
weight: 2
keywords: groupdocs.viewer, password protected document
description: "This article explains how to load password-protected document with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

The encryption is used to protect data and allow only authorized persons to open the file. When a file is encrypted the passwords must be specified to open the file. To learn how to check if the file is encrypted please refer to [How to check if file is encrypted]({{< ref "viewer/net/developer-guide/retrieving-document-information/how-to-check-if-file-is-encrypted.md" >}}) documentation article.

The following are the steps to convert encrypted documents:

* Instantiate the [HtmlViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions) (or [PngViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions), or [JpgViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions), or [PdfViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions)) object;
* Set password in [LoadOptions.Password](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/loadoptions/properties/password) property;
* Call [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method.

The following code sample shows how to convert encrypted documents:

```csharp
LoadOptions loadOptions = new LoadOptions();
loadOptions.Password = "123456";

using (Viewer viewer = new Viewer("encrypted.docx", loadOptions))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}
```

{{< alert style="info" >}}
In case the password is not specified GroupDocs.Viewer will throw [PasswordRequiredException](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.exceptions/passwordrequiredexception).
{{< /alert >}}
