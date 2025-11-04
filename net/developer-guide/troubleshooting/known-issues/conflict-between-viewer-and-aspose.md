---
id: conflict-between-viewer-and-aspose
url: viewer/net/conflict-between-viewer-and-aspose
title: Conflict when using GroupDocs.Viewer and some Aspose library in single project
weight: 3
description: "This article is about the possible conflicts, which may occur when GroupDocs.Viewer is used with some Aspose product in a single project simultaneously"
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---

**Issue**

When using the GroupDocs.Viewer together with one or more Aspose products (like Aspose.Pdf) in a single project on Windows 11, undefined unexpected conflicts may occurs, mostly in form of runtime exceptions of different types.

**Cause**

The problem occurrs because the project with GroupDocs.Viewer and Aspose product is running within a 32-bit IDE (this may include JetBrains Rider) on a 64-bit Windows 11 system. This mismatch between the IDE and the operating system caused conflicts in code execution and library loading.

**Resolution**

Reinstall the IDE by installing a corect version, which [bitness](https://en.wiktionary.org/wiki/bitness) matches the bitness of the operating system. In particular, 32-bit IDE for 32-bit operating system, and 64-bit IDE for 64-bit operating system.