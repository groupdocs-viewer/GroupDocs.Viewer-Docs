---
id: how-to-run-examples
url: viewer/nodejs-java/how-to-run-examples
title: How to Run Examples
weight: 6
description: "Learn how to clone, configure, and run GroupDocs.Viewer for Node.js via Java example projects."
keywords: How to run a viewer, basic usage, How to run examples
productName: GroupDocs.Viewer for Node.js via Java
hideChildren: False
toc: True
---

The complete project [GroupDocs.Viewer for Node.js via Java — Code Examples](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Node.js-via-Java) with runnable examples and sample files is hosted on GitHub. The structure and commands below are based on this repository and its README.

## Prerequisites

Before running examples, make sure your environment meets the [System Requirements]({{< ref "viewer/nodejs-java/getting-started/system-requirements" >}}) and [Installation]({{< ref "viewer/nodejs-java/getting-started/installation" >}}) guides:

- **Node.js**: 20 LTS or later
- **Java**: JRE/JDK 8+ (17 LTS recommended)
- **Java environment**: `JAVA_HOME` set and added to `PATH`

Windows PowerShell:

```powershell
$env:JAVA_HOME="C:\Program Files\Java\jdk-17"
$env:Path="$env:JAVA_HOME\bin;$env:Path"
```

Linux/macOS:

```bash
export JAVA_HOME=/usr/lib/jvm/java-17
export PATH=$JAVA_HOME/bin:$PATH
```

For more details, see the examples repository README:  
[GroupDocs.Viewer for Node.js via Java — Code Examples README](https://raw.githubusercontent.com/groupdocs-viewer/GroupDocs.Viewer-for-Node.js-via-Java/refs/heads/master/README.md).

## Run examples using npm

To get started, make sure that [Node.js](https://nodejs.org/) and Java are installed and configured as described above.

1. **Clone the repository with examples**

   ```bash
   git clone https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Node.js-via-Java.git
   cd GroupDocs.Viewer-for-Node.js-via-Java
   ```

2. **Install dependencies**

   ```bash
   npm install
   ```

   This installs the bundled `groupdocs-groupdocs.viewer-<version>.tgz` package and other dependencies defined in `package.json`.  
   If installation fails with native build errors, review the build tools section in [System Requirements]({{< ref "viewer/nodejs-java/getting-started/system-requirements" >}}).

3. **Run all examples**

   ```bash
   npm start
   ```

   Output documents are created under the `Output/` directory, grouped by example.

## Explore available examples

After running the project once, you may want to see what examples are available and how they are organized:

- Open `examples.js` and `runExamples.js` to review the list of functions being called.
- Enable or disable specific examples by editing `runExamples.js` and re-running:

  ```bash
  npm start
  ```

Refer to the examples README for an overview of QuickStart, BasicUsage, and AdvancedUsage folders and the scenarios they cover  
([README](https://raw.githubusercontent.com/groupdocs-viewer/GroupDocs.Viewer-for-Node.js-via-Java/refs/heads/master/README.md)).

## Contribute

If you like to add or improve an example, we encourage you to contribute to the project. All examples in this repository are open source and can be freely used in your own applications.

To contribute, you can fork the repository, edit the source code and create a pull request. We will review the changes and include them in the repository if found helpful.