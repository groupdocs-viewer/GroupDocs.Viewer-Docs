---
id: load-document-from-ftp
url: viewer/java/load-document-from-ftp
title: Load from FTP
weight: 4
description: "This article explains how to load a document from FTP storage with GroupDocs.Viewer within your Java applications."
productName: GroupDocs.Viewer for Java
hideChildren: False
---

{{< alert style="info" >}}

Install the [Apache Commons Net library](https://mvnrepository.com/artifact/commons-net/commons-net/3.9.0) to use the FTP client.

{{< /alert >}}

The following code snippet shows how to load a document from FTP:

{{< tabs "example1">}}
{{< tab "Java" >}}
```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;
import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
// ...

FTPClient ftpClient = new FTPClient();

ftpClient.connect(server, 21);
ftpClient.login(ftpUser, ftpPassword);
ftpClient.setFileType(FTP.BINARY_FILE_TYPE);

try (final InputStream inputStream = ftpClient.retrieveFileStream(remoteFile);
     Viewer viewer = new Viewer(inputStream)) {
    HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
    viewer.view(viewOptions);
}
```
{{< /tab >}}
{{< /tabs >}}
