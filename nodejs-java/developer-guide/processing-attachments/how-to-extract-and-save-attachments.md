---
id: how-to-extract-and-save-attachments
url: viewer/nodejs-java/how-to-extract-and-save-attachments
title: Save attachments
weight: 2
description: "Save attachments and embedded files from PDF, Outlook data file or email"
keywords: Save attachments, embedded files from PDF, Outlook data file
productName: GroupDocs.Viewer for Java
hideChildren: False
---
To get and save attachments, follow these steps:

1. Instantiate the [Viewer](#) object. Specify a file that contains attachments.
2. Call the [getAttachments](#) method. It returns the attachment collection.
3. Iterate through the collection. To save an attachment, call the [saveAttachment](#) method.

The following code snippet shows how to get and save all attachments from the MSG file:

{{< alert style="info" >}}NOTE: provided code snippet suits all format families that support attachments: emails, Outlook data files, archives, and PDF documents.{{< /alert >}}

{{< tabs "example1">}}
{{< tab "JavaScript" >}}
```js
const viewer = new groupdocs.viewer.Viewer("with_attachments.msg")
const attachments = viewer.getAttachments();
console.log('Attachments:\n');

for(let i = 0; i < attachments.size(); i++ ){
    console.log(attachments.get(i).toString());
}
console.log('\nAttachments retrieved successfully.');
```
{{< /tab >}}
{{< /tabs >}}
