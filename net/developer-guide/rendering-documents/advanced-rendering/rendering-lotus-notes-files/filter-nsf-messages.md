---
id: filter-nsf-messages
url: viewer/net/filter-nsf-messages
title: Filter database messages
weight: 1
description: "This article explains how to filter messages when rendering Lotus Notes Files with GroupDocs.Viewer within your .NET applications."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
 Lotus Notes allows filtering messages inside folders by some text value from message content and by part of the sender's or recipient's address.

![Filter NSF messages](viewer/net/images/filter-nsf-messages/filter-nsf-messages.jpg)

GroupDocs.Viewer also allows filtering the rendered messages using the following filters:

* Filter by subject and content using [LotusNotesOptions.TextFilter](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/lotusnotesoptions/properties/textfilter)*;*
* Filter by the sender's and recipient's email addresses using [LotusNotesOptions.](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/lotusnotesoptions/properties/addressfilter)[AddressFilter](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/lotusnotesoptions/properties/addressfilter)*;*

As an example, when setting [LotusNotesOptions.TextFilter](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/lotusnotesoptions/properties/textfilter)as 'Microsoft'  the API will render all messages that contain the text 'Microsoft' in the message's subject or body. Whereas, setting [LotusNotesOptions.](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/lotusnotesoptions/properties/addressfilter)[AddressFilter](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer.options/lotusnotesoptions/properties/addressfilter)as 'susan' will filter messages that contain 'susan' as a part of the sender's or recipient's address. The following code samples show how to filter the messages.

```csharp
using (Viewer viewer = new Viewer("sample.nsf"))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();
    HtmlViewOptions options = HtmlViewOptions.ForEmbeddedResources(pageFilePathFormat);
    options.LotusNotesOptions.TextFilter = "April 2015";
    options.LotusNotesOptions.AddressFilter = "test@test.com";
    viewer.View(viewOptions);
}
```

