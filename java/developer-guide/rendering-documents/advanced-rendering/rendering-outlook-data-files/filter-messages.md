---
id: filter-messages
url: viewer/java/filter-messages
title: Filter messages
weight: 1
description: "This article explains how to filter messages when viewing Outlook Data Files with GroupDocs.Viewer within your Java applications."
keywords: 
productName: GroupDocs.Viewer for Java
hideChildren: False
---
 MS Outlook allows to filter messages inside folders by some text value from message content and by part of the sender's or recipient's address.

![](viewer/java/images/filter-messages.png)

GroupDocs.Viewer also allows filtering the rendered messages using the following filters:

* Filter by subject and content using [setTextFilter()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/OutlookOptions#setTextFilter(java.lang.String))
* Filter by the sender's and recipient's email addresses using [setAddressFilter()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/OutlookOptions#setAddressFilter(java.lang.String))

As an example, when setting [setTextFilter()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/OutlookOptions#setTextFilter(java.lang.String)) as `Microsoft` the API will render all messages that contain the text `Microsoft` in the message's subject or body. Whereas, setting [setAddressFilter()](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.options/OutlookOptions#setAddressFilter(java.lang.String)) as `susan` will filter messages that contain `susan` as a part of the sender's or recipient's address. The following code samples show how to filter the messages.

```java
    try (Viewer viewer = new Viewer("sample.ost")) {
        HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
        viewOptions.getOutlookOptions().setTextFilter("Microsoft");
        viewOptions.getOutlookOptions().setAddressFilter("susan");
        viewer.view(viewOptions);
    }
```
