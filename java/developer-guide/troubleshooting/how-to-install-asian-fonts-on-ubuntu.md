---
id: how-to-install-asian-fonts-on-ubuntu
url: viewer/java/how-to-install-asian-fonts-on-ubuntu
title: How to install Asian Fonts on Ubuntu
weight: 4
description: "This article will guide you through the installation of Asian Fonts on Ubuntu."
keywords: Ubuntu, Asian Fonts
productName: GroupDocs.Viewer for Java
hideChildren: False
---
This page describes the installation of the Asian Fonts on [Ubuntu 20.04 LTS](https://wiki.ubuntu.com/Releases) using the [apt-get](https://wiki.debian.org/apt-get) utility. On the previous versions of Ubuntu, the process is quite the same.

To install Asian Fonts on Ubuntu, follow these steps:

1. Browse to [packages.ubuntu.com](https://packages.ubuntu.com/).

2. At [packages.ubuntu.com/focal/translations/](https://packages.ubuntu.com/focal/translations/), search for the Japanese language support packages. Find all entries starting with "language-pack-" and containing "Japanese" as follows:

![](/viewer/java/images/how-to-install-asian-fonts-on-ubuntu.png)

3. Install the [language-pack-ja](https://packages.ubuntu.com/focal/translations/language-pack-ja) package. The language-pack-ja-base package is installed automatically as first one depends on it.

4. Run Ubuntu in a Docker container:

![](/viewer/java/images/how-to-install-asian-fonts-on-ubuntu_1.png)

5. Execute the following command to update the packages list with updates and new packages:

{{< tabs "example1">}}
{{< tab "Shell" >}}
```sh
apt-get update
```
{{< /tab >}}
{{< /tabs >}}

![](/viewer/java/images/how-to-install-asian-fonts-on-ubuntu_2.png)

6. Excecute the following command to install the Japanese language support:

{{< tabs "example2">}}
{{< tab "Shell" >}}
```sh
apt-get install -y language-pack-ja
```
{{< /tab >}}
{{< /tabs >}}

![](/viewer/java/images/how-to-install-asian-fonts-on-ubuntu_3.png)

7. Wait for the message "Generation complete."

![](/viewer/java/images/how-to-install-asian-fonts-on-ubuntu_4.png)

To install other Asian languages, use the following commands:

{{< tabs "example3">}}
{{< tab "Shell" >}}
```sh
apt-get install -y language-pack-zh*
apt-get install -y language-pack-ko
```
{{< /tab >}}
{{< /tabs >}}