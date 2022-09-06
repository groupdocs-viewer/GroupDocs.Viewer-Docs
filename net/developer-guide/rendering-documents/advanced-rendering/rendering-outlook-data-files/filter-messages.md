---
id: filter-messages
url: viewer/net/filter-messages
title: Filter messages
weight: 1
description: "This article explains how to filter messages when rendering Outlook Data Files with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
MS Outlook allows to filter messages inside folders by some text value from message content and by part of the sender's or recipient's address.

![](/viewer/net/images/filter-messages.png)

GroupDocs.Viewer also allows filtering the rendered messages using the following filters:

* Filter by subject and content using [OutlookOptions.TextFilter](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/outlookoptions/properties/textfilter)*;*
* Filter by the sender's and recipient's email addresses using [OutlookOptions.](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/outlookoptions/properties/addressfilter)[AddressFilter](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/outlookoptions/properties/addressfilter)*;*

As an example, when setting [OutlookOptions.TextFilter](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/outlookoptions/properties/textfilter)as 'Microsoft'  the API will render all messages that contain the text 'Microsoft' in the message's subject or body. Whereas, setting [OutlookOptions.](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/outlookoptions/properties/addressfilter)[AddressFilter](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/outlookoptions/properties/addressfilter)as 'susan' will filter messages that contain 'susan' as a part of the sender's or recipient's address. The following code samples show how to filter the messages.

```csharp
using (Viewer viewer = new Viewer("sample.ost"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    viewOptions.OutlookOptions.TextFilter = "Microsoft";
    viewOptions.OutlookOptions.AddressFilter = "susan";
    viewer.View(viewOptions);
}
```
