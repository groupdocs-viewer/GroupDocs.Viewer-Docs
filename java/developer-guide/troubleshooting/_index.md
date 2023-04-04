---
id: troubleshooting
url: viewer/java/troubleshooting
title: Troubleshooting
weight: 7
description: "This section contains issues that you may face and solutions for them when processing files with GroupDocs.Viewer."
keywords: "groupdocs viewer java, troubleshooting, known issues"
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
This section contains issues that you may face and solutions for them when processing files with GroupDocs.Viewer.

## Chinese characters are garbled or rendered as boxes on Linux

Typically it happens because language support is not installed and therefore there are no required fonts that can be used to display the characters correctly. Please refer to the following articles that guide through the installation process of the Asian language support.

* [How to install Asian Fonts on CentOS]({{< ref "viewer/java/developer-guide/troubleshooting/how-to-install-asian-fonts-on-centos.md" >}})
* [How to install Asian Fonts on Ubuntu]({{< ref "viewer/java/developer-guide/troubleshooting/how-to-install-asian-fonts-on-ubuntu.md" >}})

## Incorrect fonts when running on Linux

Because of the lack of Windows fonts in target OS (Android, macOS, Linux, etc), fonts used in documents are substituted with available fonts, this might lead to inaccurate document layout when rendering the document to PNG, JPG, and PDF.

Please refer to the following articles that guide through installing Windows fonts on Linux.

* [How to install Windows fonts on Ubuntu]({{< ref "viewer/java/developer-guide/troubleshooting/how-to-install-windows-fonts-on-ubuntu.md" >}})

## Related articles

Please refer to the related articles for more details:
