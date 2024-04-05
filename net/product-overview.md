---
id: product-overview
url: viewer/net/product-overview
title: GroupDocs.Viewer for .NET overview
linkTitle: Product overview
weight: 1
description: "GroupDocs.Viewer for .NET allows you to render documents in various formats as HTML, PDF, JPEG, and PNG files. You do not need to use third-party software to view files within your .NET application."
keywords: convert files, render files, view files, HTML, PDF, PNG, JPEG
productName: GroupDocs.Viewer for .NET
toc: True
---
GroupDocs.Viewer for .NET is a high-performance and cross-platform library that allows you to build desktop and web [file viewer applications](https://en.wikipedia.org/wiki/File_viewer).

With its powerful and straightforward API, you can execute the following actions:

* View documents in the [most popular file formats](/viewer/net/supported-document-formats/) (DOCX, XLSX, PPTX, PDF, DWG, PSD, HTML, ZIP, and more) by rendering them as HTML, PDF, PNG, and JPEG files. You no longer need third-party software to view files within your .NET application.
* Load documents from [different sources](/viewer/net/loading-documents-from-different-sources/) (a file, a stream, a URL, an FTP server, Amazon S3, Azure Blob Storage, and so on).
* Open [password-protected documents](/viewer/net/load-password-protected-document/).
* Render the entire document or specific pages.
* Embed all external resources in the output HTML files, generate [responsive](/viewer/net/render-with-responsive-layout/) and [minified](/viewer/net/minify-html/) HTML pages.
* [Protect](/viewer/net/protect-pdf-documents/) the output PDF files and [reorder their pages](/viewer/net/reorder-pages/).
* [Rotate pages](/viewer/net/flip-or-rotate-pages/) in the output files.
* Specify whether to render notes and comments contained in the source document.
* Extract text from PDF files and images.
* [Extract archive contents](/viewer/net/how-to-extract-and-save-attachments/) and [save files](/viewer/net/how-to-extract-and-save-attachments/) attached to PDF documents, email messages, and Outlook data files.
* [Obtain basic information](/viewer/net/how-to-get-file-type-and-pages-count/) about the source document (the file type, number of pages, and page information).
* [Replace missing document fonts](/viewer/net/replace-missing-font/) or [specify a folder](/viewer/net/set-custom-fonts/) where GroupDocs.Viewer should look for these fonts.
* [Add text watermarks](/viewer/net/add-text-watermark/) to the output HTML, PDF, and image files.
* [Implement caching](/viewer/net/caching-results/) to increase document loading speed and optimize application performance.

You can use GroupDocs.Viewer across multiple platforms and operation systems. There are two versions of the GroupDocs.Viewer — a "classic" GroupDocs.Viewer for .NET and a new GroupDocs.Viewer.CrossPlatform, which was released on March 2024.

GroupDocs.Viewer for .NET supports the maximum variety of operating systems and target platforms:

* Windows, Linux, and macOS
* .NET Framework 4.6.2 and higher
* .NET 6 and higher

However, it internally utilizes a System.Drawing library and thus [cannot be used on Linux on .NET 6.0 and above](https://learn.microsoft.com/en-us/dotnet/core/compatibility/core-libraries/6.0/system-drawing-common-windows-only).

That's why the GroupDocs.Viewer.CrossPlatform was created — it is a System.Drawing-free and may be used on Linux on .NET 6.0 and above. However, it does not support .NET Framework, .NET Core and .NET 5.0.

## Get started with GroupDocs.Viewer for .NET

If you are new to GroupDocs.Viewer, see the following topics first:

* [System requirements](/viewer/net/system-requirements/)
* [Installation](/viewer/net/installation/)
* [Licensing](/viewer/net/licensing-and-subscription/)
* [Document rendering basics](/viewer/net/document-rendering-basics/)

## Technical support

If you encounter an issue while using GroupDocs.Viewer or have a technical question, feel free to create a post in our [Free Support Forum](https://forum.groupdocs.com/c/viewer/9). If free support is not sufficient, you can submit a ticket to our [Paid Support Helpdesk](https://helpdesk.groupdocs.com/).
