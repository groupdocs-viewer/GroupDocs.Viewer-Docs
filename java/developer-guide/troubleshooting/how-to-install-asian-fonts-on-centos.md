---
id: how-to-install-asian-fonts-on-centos
url: viewer/java/how-to-install-asian-fonts-on-centos
title: How to install Asian Fonts on CentOS
weight: 3
description: "This article will guide you through the installation of Asian Fonts on CentOS 6 / 7 / 8."
keywords: CentOS, Asian Fonts
productName: GroupDocs.Viewer for Java
---
This describes the installation of the Asian Fonts on CentOS 8/7/6.

## CentOS 7/8

The installation process is the same for CentOS 7 and CentOS 8. This topic describes the installation process for Centos 8.

To install a group of packages that includes fonts for Asian languages on Centos 8/7, follow these steps:

1. Run CentOS 8 in a Docker container: 

![](/viewer/java/images/how-to-install-asian-fonts-on-centos.png)

2. Execute the following command to install the group of packages:

{{< tabs "example1">}}
{{< tab "Shell" >}}
```sh
yum group install -y Fonts
```
{{< /tab >}}
{{< /tabs >}}


![](/viewer/java/images/how-to-install-asian-fonts-on-centos_1.png)

3. Wait for the message "Complete!". Installation completed.
	
![](/viewer/java/images/how-to-install-asian-fonts-on-centos_2.png)

## CentOS 6

To install a group of packages that includes fonts for Asian languages on Centos 8/7, follow these steps:

1. Run CentOS 8 in a Docker container: 

![](/viewer/java/images/how-to-install-asian-fonts-on-centos_3.png)

2. The font packages are separated into groups. Execute the following command to list them:

{{< tabs "example2">}}
{{< tab "Shell" >}}
```sh
yum grouplist
```
{{< /tab >}}
{{< /tabs >}}

![](/viewer/java/images/how-to-install-asian-fonts-on-centos_4.png)

3. Find the "Chinese Support \[zh\]" language group. To do this, check the "Installed Language Packs" section for already installed language packages. Then check the "Available Language Groups" section that lists the package bundles you can install.

![](/viewer/java/images/how-to-install-asian-fonts-on-centos_5.png)

4. If needed, install the Chinese language support. To do this, execute the following command:

{{< tabs "example3">}}
{{< tab "Shell" >}}
```sh
yum groupinstall -y "Chinese Support"
```
{{< /tab >}}
{{< /tabs >}}

![](/viewer/java/images/how-to-install-asian-fonts-on-centos_6.png)

5. Wait for the message "Complete!". Installation completed.

![](/viewer/java/images/how-to-install-asian-fonts-on-centos_7.png)

To install other Asian languages, use the following commands:

{{< tabs "example4">}}
{{< tab "Shell" >}}
```sh
yum groupinstall -y "Japanese Support"
yum groupinstall -y "Korean Support"
yum groupinstall -y "Hindi Support"
yum groupinstall -y "Kannada Support"
```
{{< /tab >}}
{{< /tabs >}}