---
id: filter-nsf-messages
url: viewer/java/filter-nsf-messages
title: Filter database messages
weight: 1
description: "This article explains how to filter messages when viewing Lotus Notes Files with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
Lotus Notes allows filtering messages inside folders by some text value from message content and by part of the sender's or recipient's address.

![Filter NSF messages](/viewer/java/images/filter-nsf-messages/filter-nsf-messages.jpg)

GroupDocs.Viewer also allows filtering the rendered messages using the following filters:

* Filter by subject and content using [lotusNotesOptions.setTextFilter()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/LotusNotesOptions#setTextFilter(java.lang.String))*;*
* Filter by the sender's and recipient's email addresses using [lotusNotesOptions.setAddressFilter()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/LotusNotesOptions#setAddressFilter(java.lang.String))*;*

As an example, when setting [lotusNotesOptions.setTextFilter()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/LotusNotesOptions#setTextFilter(java.lang.String)) as `Microsoft`  the API will render all messages that contain the text `Microsoft` in the message's subject or body. 
Whereas, setting [lotusNotesOptions.setAddressFilter()](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/LotusNotesOptions#setAddressFilter(java.lang.String)) as `susan` will filter messages that contain `susan` as a part of the sender's or recipient's address. The following code samples show how to filter the messages.

```java
    try (Viewer viewer = new Viewer("sample.nsf")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources(pageFilePathFormat);
        options.getLotusNotesOptions().setTextFilter("April 2015");
        options.getLotusNotesOptions().setAddressFilter("test@test.com");
        viewer.view(viewOptions);
    }
```
