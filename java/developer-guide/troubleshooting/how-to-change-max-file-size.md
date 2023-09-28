---
id: how-to-change-max-file-size
url: viewer/java/how-to-change-max-file-size
title: How to change the maximum size of a file
weight: 6
description: "This article shows how to change the maximum size of a file."
keywords: "file, size, signed, limit"
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
Due to the numerous resources and `.class` files in the JAR file, the `MANIFEST.MF` file has become huge. For instance, it iss approximately 19.7 Mb for GroupDocs.Viewer v21.2 and 22.5 Mb for GroupDocs.Viewer v23.7. 

That is why you may get errors similar to the one below:

```sh
error: error reading /home/jenkins/.gradle/caches/modules-2/files-2.1/com.groupdocs/groupdocs-viewer/21.2/541f695e50f5ed475786402ce0be5978db3a8bb2/groupdocs-viewer-21.2.jar; Unsupported size: 19732345 for JarEntry META-INF/MANIFEST.MF. Allowed max size: 8000000 bytes
```

The issue arises from Java's file size limit, which is set at 8,000,000 bytes by default. You can resolve this using the `-Djdk.jar.maxSignatureFileSize=8000000` option in your Virtual Machine settings. Change the `8,000,000` to the required file size limit.


{{< tabs "example1">}}
{{< tab "Settings" >}}
```sh
export MAVEN_OPTS="-Djdk.jar.maxSignatureFileSize=25000000"
mvn clean compile spring-boot:run
```
{{< /tab >}}
{{< /tabs >}}