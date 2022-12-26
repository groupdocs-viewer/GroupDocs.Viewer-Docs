---
id: how-to-install-asian-fonts-on-ubuntu
url: viewer/net/how-to-install-asian-fonts-on-ubuntu
title: How to install Asian Fonts on Ubuntu
weight: 2
description: "This article will guide you through the installation of Asian Fonts on Ubuntu."
keywords: Ubuntu, Asian Fonts
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
This page describes the installation of the Asian Fonts on [Ubuntu 20.04 LTS](https://wiki.ubuntu.com/Releases) using the [apt-get](https://wiki.debian.org/apt-get) utility. On the previous versions of Ubuntu, the process is quite the same.

To install Asian Fonts on Ubuntu, follow these steps:

1. Browse to [packages.ubuntu.com](https://packages.ubuntu.com/).

2. At [packages.ubuntu.com/focal/translations/](https://packages.ubuntu.com/focal/translations/), search for the Japanese language support packages. Find all entries starting with "language-pack-" and containing "Japanese" as follows:

	![](/viewer/net/images/how-to-install-asian-fonts-on-ubuntu.png)

3. Install the [language-pack-ja](https://packages.ubuntu.com/focal/translations/language-pack-ja) package. The language-pack-ja-base package is installed automatically as first one depends on it. To do this, follow these steps: 

	1. Run Ubuntu in a Docker container:

		![](/viewer/net/images/how-to-install-asian-fonts-on-ubuntu_1.png)

	2. Execute the following command to update the packages list with updates and new packages:

		```csharp
		$ apt-get update
		```

		![](/viewer/net/images/how-to-install-asian-fonts-on-ubuntu_2.png)

	3. Excecute the following command to install the Japanese language support:

		```csharp
		$ apt-get install -y language-pack-ja
		```

		![](/viewer/net/images/how-to-install-asian-fonts-on-ubuntu_3.png)

	4. Wait for the message "Generation complete."

		![](/viewer/net/images/how-to-install-asian-fonts-on-ubuntu_4.png)

To install other Asian languages, use the following commands:

```csharp
$ apt-get install -y language-pack-zh*
$ apt-get install -y language-pack-ko
```