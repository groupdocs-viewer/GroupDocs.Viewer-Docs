---
id: create-a-minimal-app-using-groupdocs-viewer
url: viewer/java/create-a-minimal-app-using-groupdocs-viewer
title: Create a minimal app
weight: 6
description: "Build a minimal Java application using GroupDocs.Viewer for Java from scratch."
keywords: "groupdocs viewer java, java app from scratch, java app maven"
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---

In this article we'll guide you through building sample java application from scratch or using Maven. We'll reference GroupDocs.Viewer for Java and render [sample.docx](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java/raw/master/Examples/resources/sample_files/sample.docx) file to HTML.

## Build Java app from scratch

{{< alert style="info" >}}

The [hello-world-java.zip](/viewer/java/resources/how-to-run-examples/hello-world-java.zip) contains source code of the application that we're going to build.

{{< /alert >}}

Make sure that you have JDK installed on your system

* As example you can install JDK on Ubuntu by typing `apt-get install default-jdk`
* Windows users can find installation packages at [Microsoft Build of OpenJDK](https://docs.microsoft.com/en-us/java/openjdk/download)

To make sure that JDK is installed you can type `java -version`. In this case I'm using Ubuntu and the output is the following:

```bash
java -version
```

The output would depend on the version of JDK you have installed and your environment:

```bash
openjdk version "11.0.13" 2021-10-19
OpenJDK Runtime Environment (build 11.0.13  +8-Ubuntu-0ubuntu1.20.04)
OpenJDK 64-Bit Server VM (build 11.0.13+8-Ubuntu-0ubuntu1.  20.04, mixed mode, sharing)
```

Create a folder for our app and navigate into it:

```bash
mkdir hello-world && cd hello-world
```

Create `App.java` file by typing

```bash
cat > App.java
```

Add the following code to the `App.java` using text editor or `printf` utility

```java
import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;

public class App {
    public static void main(String[] args) throws Exception {
      Viewer viewer = new Viewer("sample.docx");
      HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
      viewer.view(viewOptions);
    }
}
```

Download the latest version of GroupDocs.Viewer for Java from [GroupDocs Artifact Repository](https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-viewer/) manually or by typing `wget https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-viewer/21.11.1/groupdocs-viewer-21.11.1.jar`

Download [sample.docx](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java/raw/master/Examples/resources/sample_files/sample.docx) file that we'll be rendering using `wget`:

```bash
wget https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java/raw/master/Examples/resources/sample_files/sample.docx
```

Compile our app using `javac` Java Compiler. The new file `App.class` will be created.

Windows:

```bash
javac -d . -cp ".;./groupdocs-viewer-21.11.1.jar" App.java
```

Linux:

```bash
javac -d . -cp ".:./groupdocs-viewer-21.11.1.jar" App.java
```

Type `ls` to list list files in the folder and there will be four files:
  
```bash
App.class  App.java  groupdocs-viewer-21.11.1.jar  sample.docx
```

Now, we can run our app using Java Runtime Environment (JRE) by typing:

Windows:

```bash
java -cp ".;./groupdocs-viewer-21.11.1.jar" App
```

Linux:

```bash
java -cp ".:./groupdocs-viewer-21.11.1.jar" App
```

After our app executed we can check that the new HTML files has been created. List files in current folder with `ls`.
  
```bash
App.class  App.java  groupdocs-viewer-21.11.1.jar  p_1.html  p_2.html  sample.docx
```

## Build Java app using Maven

{{< alert style="info" >}}

The [hello-world-maven.zip](/viewer/java/resources/how-to-run-examples/hello-world-maven.zip) contains source code of the application that we're going to build.

{{< /alert >}}

To get started make sure [Maven](https://maven.apache.org/) is installed in your system. To check if Maven is installed open a terminal and type `mvn -v`. You’ll see output similar to the following:

```bash
mvn -v
```

The output will be similar to the following:

```bash
Java version: 11.0.13, vendor: Ubuntu, runtime: /usr/lib/jvm/java-11-openjdk-amd64
Default locale: en_US, platform encoding: ANSI_X3.4-1968
OS name: "linux", version: "4.19.104-microsoft-standard", arch: "amd64", family: "unix"
```

Having Maven installed let's create simple project called `hello-world`:

```bash
mvn -B archetype:generate -DgroupId=com.mycompany.app -DartifactId=hello-world -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4
```

Navigate to the `hello-world` folder by executing:

```bash
cd hello-world
```

Our Maven project will contain `pom.xml` file and `src` folder.

Lets now add `GroupDocs Artifact Repository` to our `pom.xml` project file so we can reference GroupDocs.Viewer for Java package.

```xml
...
<repositories>
  <repository>
    <id>GroupDocs Artifact Repository</id>
    <name>GroupDocs Artifact Repository</name>
    <url>https://releases.groupdocs.com/java/repo/</url>
  </repository>
</repositories>
...
```

Add GroupDocs.Viewer for Java as a dependency:

```xml
...
<dependencies>
  ...
  <dependency>
      <groupId>com.groupdocs</groupId>
      <artifactId>groupdocs-viewer</artifactId>
      <version>21.11.1</version> 
  </dependency>
</dependencies>
...
```

We also need to add `exec-maven-plugin` so we can execute our application.

```xml
<build>
  <pluginManagement>
    <plugins>
      ...
      <plugin>
           <groupId>org.codehaus.mojo</groupId>
           <artifactId>exec-maven-plugin</artifactId>
           <version>1.6.0</version>
           <executions>
               <execution>
                   <goals>
                       <goal>java</goal>
                   </goals>
               </execution>
           </executions>
           <configuration>
               <mainClass>com.mycompany.app.App</mainClass>
           </configuration>
       </plugin>
    </plugins>
  </pluginManagement>
</build>
```

Download [sample.docx](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java/raw/master/Examples/resources/sample_files/sample.docx) file that we'll be rendering using our app. You can use `wget` utility to download a file from a terminal by executing:

```bash
wget https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java/raw/master/Examples/resources/sample_files/sample.docx
```

Open `./src/main/java/com/mycompany/app/App.java` file using a text editor and replace existing code with the following:

```java
package com.mycompany.app;

import com.groupdocs.viewer.Viewer;
import com.groupdocs.viewer.options.HtmlViewOptions;

public class App {
    public static void main(String[] args) throws Exception {
      Viewer viewer = new Viewer("sample.docx");
      HtmlViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources();
      viewer.view(viewOptions);
    }
}
```

Now we're ready to build our application, to download dependencies and build our project execute:

```bash
mvn compile
```

After we compiled our application we can run it by executing:

```bash
mvn exec:java
```

To check that our `sample.docx` file was rendered lets execute `ls` in the current directory:

```bash
p_1.html  p_2.html  pom.xml  sample.docx  src  target
```

As you can see that the `sample.docx` file was rendered and two HTML files `p_1.html` and `p_2.html` created in the current directory.
