---
id: features-overview
url: viewer/java/features-overview
title: Features Overview
weight: 1
description: "With GroupDocs.Viewer for Java you can render files to HTML, PNG, JPEG and PDF formats, list and save attachments, embedded files and compressed files, extract document text and detect file type by it's content."
keywords: "render, viewer, render to html, render to png, render to jpeg, render to pdf"
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
  
## Rendering Documents

We use the term ["rendering"]({{< ref "viewer/java/developer-guide/rendering-documents/_index.md" >}}) in GroupDocs.Viewer to describe the process of converting a document into a file format, paginated, or that has the concept of pages. For example, when you have a DOCX file with three pages then after rendering this file to HTML you'll get three HTML files on the output that represent each of the pages in the document.

![Rendering diagram](viewer/java/images/getting-started/features-overview/rendering.png)

### Rendering to HTML

Rendering to HTML will suit the best when you have the following requirements:

* You are writing a web-based application;
* Document content should be displayed inside web-browser;
* You need an ability to interact with rendered document text - select, copy or search;
* You want to view document pages separately;
* Zooming in a document without quality loss for most cases;
* You want to rotate, reorder pages or add watermarks.

GroupDocs.Viewer for Java provides two resources management options for CSS, fonts, images, etc.:

* Rendering to **HTML with external resources** - stores page resources near to HTML which allows to reuse common resources across separate pages and dramatically reduce page size and loading speed.
* Rendering to **HTML with embedded resources** - integrates page resources into HTML and makes each document page self-sufficient. The drawback is that page size and loading speed may decrease.

### Rendering to PNG or JPEG

Rendering to PNG or JPEG will suit the best when you have the following requirements:

* You are writing any type of application;
* You don’t need to render textual content or want to restrict interaction with rendered document text. For example: prevent text copying. There is still an ability for you to extract document text if you want to add selectable text layer over the page image (described below).
* You want to view document pages separately;
* You want to rotate, reorder pages or add watermarks.

Following is a brief description of both image formats which may help you to choose the most suitable for your case.  

* **PNG** **format** is a lossless raster graphics file format that works with full-color images and supports transparency. There is no ability to adjust the quality of saved PNG image. PNG is a good choice for storing line drawings, text, and iconic graphics at small file sizes.
* **JPEG** **format** is a lossy compressed file format which allows to adjust the quality of the saved image — when it is reduced, the details are removed and noise is added to the image, but the size becomes more compact. JPEG is optimal for images with a large number of colors (for example, for photos). It’s is a common choice to use JPEG on the Web because of its compression.

### Rendering to PDF

GroupDocs.Viewer renders a document to a single PDF document, so rendering to PDF will suit the best when you have the following requirements:

* You are going to print documents;
* You want to send documents via email.
* You don’t want to display document pages separately since all pages of a source document are rendered as a single PDF document.

## Retrieving Document Information

GroupDocs.Viewer for Java allows to obtain basic information about source documents such as file type, pages count, text with coordinates, etc.

For the following document formats additional information can also be extracted:

* Archive – list of folders contained in archive;
* CAD - list of layers and layouts in a CAD document;
* Email – list of folders contained in an Outlook data file document;
* PDF – information about document printing restrictions;
* Project Management – project start and end dates.

### Text extraction

You can opt to extract document text when rendering to PNG or JPEG, document text can be extracted along with separate words coordinates.

This may be helpful when you want to add selectable text layer over the page image.

## Processing attachments

We use the term "attachments" in GroupDocs.Viewer for email attachments, embedded files, and compressed files.

With GroupDocs.Viewer you can list and save:

* Email attachments;
* Files that are embedded in PDF files;
* Email messages contained by Outlook and LotusNotes data files;
* Compressed files.

## Output transformation

GroupDocs.Viewer for Java provides a set of options to apply different document page transformations:

* Rotate pages - change page orientation when rendering to HTML, JPG, PNG and PDF.
* Add text watermark - add text watermark to each of the rendered pages.
* Reorder pages - render pages in order you prefer or reorder pages when rendering to PDF.

## Caching results

GroupDocs.Viewer for Java provides a document viewer API that supports caching in order to boost document loading speed and optimize application performance.

Documents cache is saved to a local disk by default. However, document viewer API also provides document cache interfaces that can be implemented for 3rd party storage support - FTP, Amazon S3, Dropbox, Google Drive, Microsoft Azure, Redis or any other.
