---
id: rename-email-fields
url: viewer/java/rename-email-fields
title: Rename email fields
weight: 2
description: "This article explains how to translate fields when viewing E-Mail Messages with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
When rendering email messages, by default the API uses the English language to render field labels such as `From`, `To`, `Subject` etc. There might be the case when you want to change the label of the fields in email message's header.  
GroupDocs.Viewer is flexible enough to allow you to use the custom field labels for email header. The API provides a new property [getFieldTextMap()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/EmailOptions#getFieldTextMap()) in [EmailOptions](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/EmailOptions) class to change the field labels.  
  
Following code sample shows how to use custom field labels.

```java
    try (Viewer viewer = new Viewer("sample.msg")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources(pageFilePathFormat);
        viewOptions.getEmailOptions().getFieldTextMap().put(Field.FROM, "Sender");
        viewOptions.getEmailOptions().getFieldTextMap().put(Field.TO, "Receiver");
        viewOptions.getEmailOptions().getFieldTextMap().put(Field.SENT, "Date");
        viewOptions.getEmailOptions().getFieldTextMap().put(Field.SUBJECT, "Topic");
        viewer.view(viewOptions);
    }
```
