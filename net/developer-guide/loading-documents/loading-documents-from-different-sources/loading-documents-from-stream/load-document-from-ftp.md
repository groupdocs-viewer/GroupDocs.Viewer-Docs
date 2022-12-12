---
id: load-document-from-ftp
url: viewer/net/load-document-from-ftp
title: Load from FTP
weight: 4
description: "This article explains how to load a document from FTP storage with GroupDocs.Viewer within your .NET applications."
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
The following code snippet shows how to load a document from FTP.

{{< tabs "example1">}}
{{< tab "C#" >}}
```cs
static void LoadDocumentFromFtp()
{
    Stream stream = GetFileFromFtp("sample.docx");
    using (Viewer viewer = new Viewer(stream))
    {
        HtmlViewOptions viewOptions = HtmlViewOptions.ForEmbeddedResources();                
        viewer.View(viewOptions);
    }
}
        
static Stream GetFileFromFtp(string filePath)
{
    Uri uri = new Uri(filePath);
    FtpWebRequest request = CreateRequest(uri);
    using (WebResponse response = request.GetResponse())
        return GetFileStream(response);
}

static FtpWebRequest CreateRequest(Uri uri)
{
    FtpWebRequest request = (FtpWebRequest)WebRequest.Create(uri);
    request.Method = WebRequestMethods.Ftp.DownloadFile;
    return request;
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
