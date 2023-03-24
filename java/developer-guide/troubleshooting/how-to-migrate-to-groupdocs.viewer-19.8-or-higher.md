---
id: how-to-migrate-to-groupdocs-viewer-19-8-or-higher
url: viewer/java/how-to-migrate-to-groupdocs-viewer-19-8-or-higher
title: How to migrate to GroupDocs.Viewer 19.8 or higher
weight: 99
description: "This article contains information about migration from the legacy API to GroupDocs.Viewer 19.8 or higher."
keywords: "groupdocs viewer java, migration"
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
This article contains information about migration from the legacy API to [GroupDocs.Viewer](https://products.groupdocs.com/viewer) 20.1 or higher.

## Why To Migrate

Here are the key reasons to use the new updated API provided by GroupDocs.Viewer for Java since version 20.1:

* **Viewer** class introduced as a **single entry point** to manage the document rendering process to any supported file format (instead of **ViewerHtmlHander** / **ViewerImageHander** classes from previous versions).
* The overall **rendering speed improved** dramatically by saving rendered page as soon as it was rendered, not when all pages list were rendered.
* Product architecture was redesigned from scratch in order to **decreased memory usage** (from 10% to 400% approx. depending on document type).
* Document **viewing options simplified** so it’s easy to instantiate proper options class and control over document rendering and saving processes.

## How To Migrate

Here is a brief comparison of how to display document into HTML form using old and new API.  

### Using legacy API

```java
    //Get Configurations
    ViewerConfig config = Utilities.getConfigurations();

    // Create html handler
    ViewerHtmlHandler htmlHandler = new ViewerHtmlHandler(config);

    // Guid implies that unique document name 
    String guid = "sample.docx";

    // Document password
    String documentPassword = "password";

    //Instantiate the HtmlOptions object
    HtmlOptions options = new HtmlOptions();

    //to get html representations of pages with embedded resources
    options.setResourcesEmbedded(true);

    // Set password if document is password protected. 
    if (documentPassword != null && !documentPassword.isEmpty()) {
        options.setPassword(documentPassword);
    }

    //Get document pages in html form
    List<PageHtml> pages = htmlHandler.getPages(guid, options);

    for (PageHtml page : pages) {
        //Save each page at disk
        Utilities.saveAsHtml(page.getPageNumber() + "_" + documentName, page.getHtmlContent());
    }
```

### Using new API

```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
import com.groupdocs.viewer.options.LoadOptions;
// ...

LoadOptions loadOptions = new LoadOptions();
loadOptions.setPassword("123456");

try (Viewer viewer = new Viewer("sample.docx", loadOptions)) {
    HtmlViewOptions options = HtmlViewOptions.forEmbeddedResources();
    viewer.view(options);
}
```
