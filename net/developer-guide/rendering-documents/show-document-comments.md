---
id: show-document-comments
url: viewer/net/show-document-comments
title: Render comments
weight: 5
description: "The GroupDocs.Viewer enables you to control in simple markup display the contents of the comments word 2016 or other Word versions, Excel, OpenOffice Text and Spreadsheets with GroupDocs.Viewer within your .NET applications."
keywords: document comments, in simple markup display the contents of the comments word 2016, Excel, OpenOffice Text, Spreadsheets
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

Some document types like Microsoft Word, Excel, OpenOffice Text and Spreadsheet may contain comments. Your requirement to include or exclude the comments in output representation of the document may vary in different situations. GroupDocs.Viewer enables you to control the rendering of document comments.  

By default, comments are not rendered into the output document. The API provides [RenderComments](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/baseviewoptions/properties/rendercomments) property of [HtmlViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/htmlviewoptions) (or [JpgViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/jpgviewoptions), or [PngViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pngviewoptions), or [PdfViewOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/pdfviewoptions)) class that enables rendering of comments.

This feature is supported for:

* Microsoft Word documents
* Spreadsheets
* PDF documents
* Presentations

The following code sample shows how to render documents with comments.

```csharp
           
using (Viewer viewer = new Viewer("sample.docx"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.RenderComments = true;
                
    viewer.View(viewOptions);
}
```
