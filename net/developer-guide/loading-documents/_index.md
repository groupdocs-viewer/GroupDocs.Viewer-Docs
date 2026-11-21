---
id: loading
url: viewer/net/loading
title: Load documents
weight: 1
keywords: document loading, GroupDocs.Viewer
description: "Document loading use cases with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
To render documents, you must load them first. This section describes ways to load documents implemented in GroupDocs.Viewer.

You can also define document loading options, such as a document type or a password for a password-protected document. To do this, use the constructor parameters and properties of the [LoadOptions](https://reference.groupdocs.com/viewer/net/groupdocs.viewer.options/loadoptions) class.

![A file on disk is passed to new Viewer(source, loadOptions) by its path; a document from a URL, an FTP server, Amazon S3 or Azure Blob Storage as a stream your code opens. LoadOptions set the file type, the password, the encoding and external resources. Then viewer.View renders the pages](/viewer/net/images/developer-guide/loading-documents/loading-documents.svg)

For details, please refer to the following pages:
