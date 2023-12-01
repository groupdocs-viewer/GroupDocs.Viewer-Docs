---
id: load-password-protected-document
url: viewer/python-net/load-password-protected-document
title: Load password-protected documents
weight: 2
keywords: groupdocs.viewer, password protected document
description: "This article explains how to open password-protected document with GroupDocs.Viewer within your Python applications."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
---

The encryption protects data and allows only authorized people to open the file. When a file is encrypted, the password must be specified to open the file. To learn how to identify the encrypted file, please refer to the [Check if a file is encrypted]({{< ref "viewer/python-net/developer-guide/retrieving-document-information/how-to-check-if-file-is-encrypted.md" >}}) page.

To load and render an encrypted document, follow these steps:

1. Instantiate the [HtmlViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/htmlviewoptions) (or [PngViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pngviewoptions), or [JpgViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/jpgviewoptions), or [PdfViewOptions](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/pdfviewoptions)) object.
2. Set a password in the [LoadOptions.Password](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.options/loadoptions/properties/password) property.
{{< alert style="info" >}}
If the password is not specified, GroupDocs.Viewer throws [PasswordRequiredException](https://reference.groupdocs.com/viewer/python-net/groupdocs.viewer.exceptions/passwordrequiredexception).
{{< /alert >}}
3. Call the [View](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/viewer/methods/view) method.

The following code snippet shows how to load and render an encrypted document:

{{< tabs "example1">}}
{{< tab "Python" >}}
```python
# Specify a password.
load_options = gvo.LoadOptions()
load_options.password = "12345"
# Render a file.
with gv.Viewer(test_files.sample_docx_with_password, load_options) as viewer:
    options = gvo.HtmlViewOptions.for_embedded_resources(page_file_path_format)
    viewer.view(options)
```
{{< /tab >}}
{{< /tabs >}}

