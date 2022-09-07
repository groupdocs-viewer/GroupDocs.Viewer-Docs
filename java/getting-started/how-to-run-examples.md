---
id: how-to-run-examples
url: viewer/java/how-to-run-examples
title: Run Examples
weight: 7
description: "How to run examples using Maven and Eclipse IDE."
keywords: "groupdocs viewer java, examples, maven, eclipse ide"
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---

The complete project [GroupDocs.Viewer Examples](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java) with code examples and sample files is hosted at GitHub.

## Run examples using Maven

To get started make sure [Maven](https://maven.apache.org/download.cgi) is installed in your system.

* Clone repository with examples `git clone https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java.git`
* Navigate to the examples folder `cd ./GroupDocs.Viewer-for-Java/Examples/`
* Resolve dependencies and build the examples by typing `mvn compile`
* Run the examples by typing `mvn exec:java`

After you run the examples the following output should be printed to the console:

```bash
Uncomment the example(s) that you want to run in RunExamples.java file.
=======================================================================

Source document rendered successfully.
Check output in /src/GroupDocs.Viewer-for-Java/Examples/output/HelloWorld

All done.
```

By default there is only one `HelloWorld` example is executing and two HTML should be created in `/src/GroupDocs.Viewer-for-Java/Examples/output/HelloWorld` folder.

To check what examples are available open `./src/main/java/com/groupdocs/viewer/examples/RunExamples.java` file using your favorite text editor. Uncomment examples that you want to run and type `mvn compile exec:java` to start them.

## Run examples using Eclipse IDE

To run the examples using Eclipse IDE import the project to get started with it:

* Go to `File` menu and click `Open Projects from File System...`
* Open `Examples` folder
* Open `RunExamples.java` file and uncomment the examples you want to run
* Go to `Run` menu and click `Run`

The following screenshot shows the Examples project opened in Eclipse IDE.

![GroupDocs.Viewer for Java Examples in Eclipse IDE](/viewer/java/images/samples_eclipse-viewer.png)

The following text will be printed to the `Console` window:

```bash
Uncomment the example(s) that you want to run in RunExamples.java file.
=======================================================================

Source document rendered successfully.
Check output in /src/GroupDocs.Viewer-for-Java/Examples/output/HelloWorld

All done.
```
