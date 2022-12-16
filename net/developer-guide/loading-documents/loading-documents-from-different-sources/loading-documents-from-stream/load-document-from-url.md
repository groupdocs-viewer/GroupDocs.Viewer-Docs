---
id: load-document-from-url
url: viewer/net/load-document-from-url
title: Load from URL
weight: 3
description: "This article explains how to load a document from a URL with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
The following code snippet shows how to load a document from a URL:

{{< tabs "example1">}}
{{< tab "C#" >}}
```cs
string url = "https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET/blob/master/Examples/GroupDocs.Viewer.Examples.CSharp/Resources/SampleFiles/sample.docx?raw=true";
    
Stream stream = DownloadFile(url);

using (Viewer viewer = new Viewer(stream))
{
    HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();                
        viewer.View(viewOptions);
}

        
static Stream DownloadFile(string url)
{
    WebRequest request = WebRequest.Create(url);
    using (WebResponse response = request.GetResponse())
        return GetFileStream(response);
}

static Stream GetFileStream(WebResponse response)
{
    MemoryStream fileStream = new MemoryStream();
    using (Stream responseStream = response.GetResponseStream())
        responseStream.CopyTo(fileStream);
    fileStream.Position = 0;
    return fileStream;
}
```
{{< /tab >}}
{{< /tabs >}}
