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
   git clone git@github.com:groupdocs-viewer/GroupDocs.Viewer-for-Node.js-via-Java.git
   ```

2. **Navigate to the `Examples` folder**

   ```bash
   cd ./GroupDocs.Viewer-for-Node.js-via-Java/Examples
   ```

3. **Install dependencies**

   ```bash
   npm install
   ```

   This installs the bundled `groupdocs.viewer-<version>.tgz` package and other dependencies defined in `package.json`. We typically keep the package up to date with the latest version. If you need to use a different package version, you can update the `package.json` file accordingly.

   Alternatively, you can download the `tgz` file from the official [GroupDocs Releases](https://releases.groupdocs.com/viewer/nodejs-java/#direct-download) website. To install the package manually, copy the tgz file to the `Examples` directory and run the following command:
   
   ```bash
   npm install ./groupdocs.viewer-*.tgz
   ```

   If installation fails with native build errors, review the build tools section in [System Requirements]({{< ref "viewer/nodejs-java/getting-started/system-requirements" >}}).

4. **Configure license (optional)**

   If you have a license file, you can set the license path in the `run_all_examples.js` file. By default, GroupDocs.Viewer for Node.js via Java checks for the `GROUPDOCS_LICENSE_PATH` environment variable or looks for files with the `.lic` extension in the project's root directory. You can also [get a temporary license](https://purchase.groupdocs.com/temporary-license) to test all the features.

5. **Run all examples**

   ```bash
   npm start
   ```

   You can also run individual examples by navigating to the folder containing the example script and running it. Output files are placed in the same folder as the script file.

## More Resources

Find additional details and examples in the [GroupDocs.Viewer for Node.js via Java documentation](https://docs.groupdocs.com/viewer/nodejs-java/).

We also offer **GroupDocs.Viewer** packages for other platforms:
* [**GroupDocs.Viewer for .NET**](https://products.groupdocs.com/viewer/net/)
* [**GroupDocs.Viewer for Java**](https://products.groupdocs.com/viewer/java/)
* [**GroupDocs.Viewer for Python via .NET**](https://products.groupdocs.com/viewer/python-net/)