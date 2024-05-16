---
id: how-to-install-windows-fonts-on-ubuntu
url: viewer/java/how-to-install-windows-fonts-on-ubuntu
title: How To Install Windows Fonts on Ubuntu
weight: 5
description: "This article will show how you can install Windows fonts on Ubuntu."
keywords: "windows fonts, install, ubuntu, linux"
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
This article will guide you through the installation process of the Windows fonts on Ubuntu operating system. We'll be installing packages with [apt-get](https://wiki.debian.org/apt-get) utility on the latest (at the moment of writing this article) available version of OS that is [Ubuntu 22.04 LTS](https://wiki.ubuntu.com/Releases) but the process is quite the same for the previous versions of Ubuntu.

## What fonts are installed

Let's find out what fonts are currently installed by typing `fc-list` in your terminal.
In case the utility is not installed you can install it with `fontconfig` by typing

1. `sudo apt-get update` - Pull the lates updates.
2. `sudo apt-get install fontconfig` - Install `fontconfig` and font utilities including `fc-list`.

After you already have this utility installed type `fc-list` and check the output.
I'm running Ubuntu in a docker container and here is the output:

{{< tabs "example1">}}
{{< tab "Shell" >}}
```bash
$ fc-list

/usr/share/fonts/truetype/dejavu/DejaVuSerif-Bold.ttf: DejaVu Serif:style=Bold
/usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf: DejaVu Sans Mono:style=Book
/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf: DejaVu Sans:style=Book

(truncated)
```
{{< /tab >}}
{{< /tabs >}}

## Install Windows fonts

To install Windows fonts using `apt-get` utility open terminal and type:

1. `sudo apt-get update` - Pull the lates updates.
2. `sudo apt-get install ttf-mscorefonts-installer` - Install Windows fonts.
3. `sudo apt-get install fontconfig` - Install `fontconfig` library and `fc-cache` utility.
4. `sudo fc-cache -f -v` - Build fonts cache.

In case you recieve the following error:

```log
Package ttf-mscorefonts-installer is not available, but is referred to by another package.
This may mean that the package is missing, has been obsoleted, or is only available from another source

E: Package 'ttf-mscorefonts-installer' has no installation candidate
```

you can to add it from [Linux Software Repository for Microsoft Products](https://learn.microsoft.com/linux/packages) repository:

1. `sudo wget -q https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb`
2. `sudo dpkg -i packages-microsoft-prod.deb`
3. `sudo apt-get update`
4. `sudo apt-get install ttf-mscorefonts-installer -y`
5. `sudo apt-get install fontconfig` - Install `fontconfig` library and `fc-cache` utility.
6. `sudo fc-cache -f -v` - Build fonts cache.

Please note to replace version number of your OS from `22.04` to the one you have. To get OS version type `hostnamectl | grep "Operating System"`. You can also check for the [index](https://packages.microsoft.com/config/) in your browser to find the right file. 

After installing fonts and building fonts cache we can check what fonts are actually installed by typing `fc-list`.

{{< tabs "example2">}}
{{< tab "Shell" >}}
```bash
$ fc-list | grep "msttcorefonts"

/usr/share/fonts/truetype/msttcorefonts/comicbd.ttf: Comic Sans MS:style=Bold,Negreta,tučné,fed,Fett,Έντονα,Negrita,Lihavoitu,Gras,Félkövér,Grassetto,Vet,Halvfet,Pogrubiony,Negrito,Полужирный,Fet,Kalın,Krepko,Lodia
/usr/share/fonts/truetype/msttcorefonts/comic.ttf: Comic Sans MS:style=Regular,Normal,obyčejné,Standard,Κανονικά,Normaali,Normál,Normale,Standaard,Normalny,Обычный,Normálne,Navadno,Arrunta
/usr/share/fonts/truetype/msttcorefonts/Times_New_Roman.ttf: Times New Roman:style=Regular,Normal,obyčejné,Standard,Κανονικά,Normaali,Normál,Normale,Standaard,Normalny,Обычный,Normálne,Navadno,thường,Arrunta

(truncated)
```
{{< /tab >}}
{{< /tabs >}}

In the output you'll find that `Comic Sans MS`, `Times New Roman`, and other Windows fonts are installed now.
