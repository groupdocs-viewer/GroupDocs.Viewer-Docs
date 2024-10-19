---
id: installation
url: viewer/nodejs-java/installation
title: Install GroupDocs.Viewer for Node.js via Java
linkTitle: Installation
weight: 4
keywords: installation, maven
description: "This topic describes how to install GroupDocs.Viewer for Node.js."
productName: GroupDocs.Viewer for Node.js via Java
hideChildren: False
toc: True
---

Welcome to the installation guide for the GroupDocs.Viewer package! This guide will help you set up the package for your Node.js application.

Before you begin, please ensure that your system meets the necessary requirements. You can find detailed information about the system requirements at [System Requirements](/viewer/nodejs-java/system-requirements/). 

In this guide, you will find step-by-step instructions for installing the package via npm, adding it manually, and troubleshooting common installation issues. Let’s get started!

### NPM installation

To install the GroupDocs.Viewer package using NPM, follow these steps:

1. **Open a Terminal**  
   Make sure you are in your project directory where you want to install the package.

2. **Run the following command** to install the GroupDocs.Viewer package:

   ```bash
   npm install @groupdocs/groupdocs.viewer
   ```

   {{< alert style="tip" >}}
   In case you're using NPM version lower than 5 add `--save` switch. You can check NPM version by typing `npm -v` in your terminal.
   {{< /alert >}}

3. **Expected Console Output**  
   Once you run the command, you should see output similar to the following:

   ```bash
    added 109 packages, and audited 110 packages in 2m

    14 packages are looking for funding
      run `npm fund` for details

    found 0 vulnerabilities
   ```

   This confirms that the package was installed successfully. The package version number and other details in the output may vary depending on your environment.

4. **Verify Installation**  
   You can verify the installation by checking the `package.json` file in your project directory. You should see `groupdocs-viewer` listed under dependencies:

   
   ```json
   {
     "dependencies": {
       "@groupdocs/groupdocs.viewer": "^<version-number>"
     }
   }
   ```

You can now proceed to using the package in your JavaScript code. If you prefer to install the package manually or need further details, check the next sections.

### Adding the package manually

In cases where you prefer to add the `@groupdocs/groupdocs.viewer` package manually, follow these steps:

1. **Open the `package.json` file** located in your project’s root directory.

2. **Add the GroupDocs.Viewer dependency** in the `dependencies` section, as shown below:

   ```json
   {
     "dependencies": {
       "@groupdocs/groupdocs.viewer": "^<version-number>"
     }
   }
   ```

   {{< alert style="tip" >}} You can find actual `@groupdocs/groupdocs.viewer` package version at [the package page](https://www.npmjs.com/package/@groupdocs/groupdocs.viewer) on NPM.{{< /alert >}}

3. **Save the `package.json` file**.

4. **Install the dependencies** by running the following command:

   ```bash
   npm install
   ```

This will install the GroupDocs.Viewer package based on the version specified in your `package.json` file.

### Minimal JavaScript app example

Once you have installed the GroupDocs.Viewer package, here’s a minimal example of how you can use it in a Node.js application.

1. **Create a JavaScript file** (e.g., `app.js`) in your project’s root directory.

2. **Import the GroupDocs.Viewer module** and implement a simple file viewing functionality:

   {{< tabs "example1">}}
   {{< tab "app.js" >}}
   ```js
    const gdv = require('@groupdocs/groupdocs.viewer')
   
    // Path to the file you want to render
    const filePath = 'sample.pdf';

    // Initialize viewer
    const viewer = new gdv.Viewer(filePath);

    // Render the file to HTML
    viewer.view(gdv.HtmlViewOptions.forEmbeddedResources());

    // Exit with a success code
    process.exit(0);
   ```
   {{< /tab >}}
   {{< tab "sample-app.zip" >}}
   {{< tab-text >}}
   The [sample-app.zip](/viewer/nodejs-java/sample-files/getting-started/installation/sample-app.zip) is a sample Node.js application that you can download to get started.
   {{< /tab-text >}}
   {{< /tab >}}
   {{< /tabs >}}

3. **Run the app** by executing the following command in your terminal:

   ```bash
   node app.js
   ```

This minimal example converts a document to HTML format. The output will contain rendered pages in HTML format.

### Additional tips

Here are some troubleshooting tips for common installation issues you may encounter while setting up the GroupDocs.Viewer package:

1. **Ensure Node.js is Installed**
   - Verify that you have Node.js installed on your machine. You can check the installation by running the following command:
     ```
     node -v
     ```
   - If Node.js is not installed, download and install it from the [official Node.js website](https://nodejs.org/).

2. **Ensure Java is Installed**
   - GroupDocs.Viewer may require Java for certain functionalities. Verify that Java is installed on your machine by running:
     ```
     java -version
     ```
   - If Java is not installed, download and install it from the [official Oracle website](https://www.oracle.com/java/technologies/downloads/) or [OpenJDK](https://openjdk.org/) or [Microsoft Build of OpenJDK](https://www.microsoft.com/openjdk).

3. **Check npm Version**
   - Ensure you are using a compatible version of npm. You can check your npm version by running:
     ```
     npm -v
     ```
   - If you have an outdated version, consider updating it:
     ```
     npm install -g npm@latest
     ```

4. **Clear npm Cache**
   - Sometimes, corrupted cache can cause installation issues. You can clear the npm cache by running:
     ```
     npm cache clean --force
     ```

5. **Verify Dependency Installation**
   - If you encounter issues related to dependencies not being installed, ensure that your `package.json` file is correctly configured. You can manually add the `groupdocs-viewer` entry in the `dependencies` section and then run:
     ```
     npm install
     ```

6. **Check for Permission Issues**
   - If you encounter permission errors during installation, try running the command with elevated privileges:
     ```
     sudo npm install @groupdocs/groupdocs.viewer
     ```
   - Alternatively, consider setting up a Node version manager like [nvm](https://github.com/nvm-sh/nvm) to avoid permission issues with global installations.

7. **Reach Out for Support**
   - If you continue to experience issues, consider reaching out our [Free Support Forum](https://forum.groupdocs.com/c/viewer/9) for assistance.
