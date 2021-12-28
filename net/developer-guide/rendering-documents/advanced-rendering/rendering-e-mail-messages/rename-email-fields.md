---
id: rename-email-fields
url: viewer/net/rename-email-fields
title: Rename email fields
weight: 2
description: "This article explains how to translate fields when rendering E-Mail Messages with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
When rendering email messages, by default the API uses the English language to render field labels such as *From, To, Subject* etc. There might be the case when you want to change the label of the fields in email message's header.  
GroupDocs.Viewer is flexible enough to allow you to use the custom field labels for email header. The API provides a new property [FieldTextMap](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/emailoptions/properties/fieldtextmap) in [EmailOptions](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/emailoptions) class to change the field labels.  
  
Following code sample shows how to use custom field labels.

```csharp
using (Viewer viewer = new Viewer("sample.msg"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources(pageFilePathFormat);
    viewOptions.EmailOptions.FieldTextMap[Field.From] = "Sender";
    viewOptions.EmailOptions.FieldTextMap[Field.To] = "Receiver";
    viewOptions.EmailOptions.FieldTextMap[Field.Sent] = "Date";
    viewOptions.EmailOptions.FieldTextMap[Field.Subject] = "Topic";
    viewer.View(viewOptions);
}
```


