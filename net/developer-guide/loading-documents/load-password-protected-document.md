---
id: load-password-protected-document
url: viewer/net/load-password-protected-document
title: Load password-protected documents
weight: 2
keywords: groupdocs.viewer, password protected document
description: "This article explains how to open password-protected document with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

The encryption protects data and allows only authorized people to open the file. When a file is encrypted, the password must be specified to open the file. To learn how to identify the encrypted file, please refer to the [Check if a file is encrypted]({{< ref "viewer/net/developer-guide/retrieving-document-information/how-to-check-if-file-is-encrypted.md" >}}) page.

To load and render an encrypted document, follow these steps:

1. Instantiate the [HtmlViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/htmlviewoptions) (or [PngViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pngviewoptions), or [JpgViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/jpgviewoptions), or [PdfViewOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/pdfviewoptions)) object.
2. Set a password in the [LoadOptions.Password](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/loadoptions/properties/password) property.
{{< alert style="info" >}}
If the password is not specified, GroupDocs.Viewer throws [PasswordRequiredException](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.exceptions/passwordrequiredexception).
{{< /alert >}}
3. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method.

The following code snippet shows how to load and render an encrypted document:

{{< tabs "example1">}}
{{< tab "C#" >}}
```csharp
using GroupDocs.Viewer;
using GroupDocs.Viewer.Options;
// ...

// Specify a password.
LoadOptions loadOptions = new LoadOptions();
loadOptions.Password = "123456";
// Render a file.
using (Viewer viewer = new Viewer("encrypted.docx", loadOptions))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewer.View(viewOptions);
}
```
{{< /tab >}}
{{< tab "VB.NET">}}
```vb
Imports GroupDocs.Viewer
Imports GroupDocs.Viewer.Options
' ...

Module Program
    Sub Main(args As String())
        ' Specify a password.
        Dim loadOptions As LoadOptions = New LoadOptions()
        loadOptions.Password = "123456"
        ' Render a file.
        Using viewer As Viewer = New Viewer("encrypted.docx", loadOptions)
            Dim viewOptions As HtmlViewOptions = HtmlViewOptions.ForEmbeddedResources()
            viewer.View(viewOptions)
        End Using
    End Sub
End Module
```
{{< /tab >}}
{{< /tabs >}}

