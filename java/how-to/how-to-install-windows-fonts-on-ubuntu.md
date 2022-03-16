---
id: how-to-install-windows-fonts-on-ubuntu
url: viewer/java/how-to-install-windows-fonts-on-ubuntu
title: How To Install Windows Fonts on Ubuntu
weight: 3
description: "This article will show how you can install Windows fonts on Ubuntu."
keywords: "windows fonts, install, ubuntu, linux"
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
This article will guide you through the installation process of the Windows fonts on Ubuntu operating system. We'll be installing packages with [apt-get](https://wiki.debian.org/apt-get) utility on the latest (at the moment of writing this article) available version of OS that is [Ubuntu 20.04 LTS](https://wiki.ubuntu.com/Releases) but the process is quite the same for the previous versions of Ubuntu.

## What fonts are installed

Let's find out what fonts are currently installed by typing `fc-list` in your terminal.
In case the utility is not installed you can install it with `fontconfig` by typing

1. `sudo apt-get update` - Pull the lates updates.
2. `sudo apt-get install fontconfig` - Install `fontconfig` and font utilities including `fc-list`.

After you already have this utility installed type `fc-list` and check the output.
I'm running Ubuntu in a docker container and here is the output:

```bash
$ fc-list

/usr/share/fonts/truetype/dejavu/DejaVuSerif-Bold.ttf: DejaVu Serif:style=Bold
/usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf: DejaVu Sans Mono:style=Book
/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf: DejaVu Sans:style=Book
/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf: DejaVu Sans:style=Bold
/usr/share/fonts/truetype/dejavu/DejaVuSansMono-Bold.ttf: DejaVu Sans Mono:style=Bold
/usr/share/fonts/truetype/dejavu/DejaVuSerif.ttf: DejaVu Serif:style=Book
```

## Install Windows fonts

To install Windows fonts using `apt-get` utility open terminal and type:

1. `sudo apt-get update` - Pull the lates updates.
2. `sudo apt-get install ttf-mscorefonts-installer` - Install Windows fonts.
3. `sudo apt-get install fontconfig` - Install `fontconfig` library and `fc-cache` utility.
4. `sudo fc-cache -f -v` - Build fonts cache.

After installing fonts and building fonts cache we can check what fonts are actually installed by typing `fc-list`.

```bash
$ fc-list

/usr/share/fonts/truetype/msttcorefonts/comicbd.ttf: Comic Sans MS:style=Bold,Negreta,tučné,fed,Fett,Έντονα,Negrita,Lihavoitu,Gras,Félkövér,Grassetto,Vet,Halvfet,Pogrubiony,Negrito,Полужирный,Fet,Kalın,Krepko,Lodia
/usr/share/fonts/truetype/msttcorefonts/comic.ttf: Comic Sans MS:style=Regular,Normal,obyčejné,Standard,Κανονικά,Normaali,Normál,Normale,Standaard,Normalny,Обычный,Normálne,Navadno,Arrunta
/usr/share/fonts/truetype/msttcorefonts/Times_New_Roman.ttf: Times New Roman:style=Regular,Normal,obyčejné,Standard,Κανονικά,Normaali,Normál,Normale,Standaard,Normalny,Обычный,Normálne,Navadno,thường,Arrunta

(truncated)
```

In the output you'll find that `Comic Sans MS`, `Times New Roman`, and other Windows fonts are installed now.
