---
id: how-to-create-minimal-java-app
url: viewer/java/how-to-create-minimal-java-app
title: How to create minimal Java App from scratch
weight: 4
description: "Build a minimal Java application from scratch."
keywords: "java app from scratch"
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---

In this article we'll guide you through building a minimal java application from scratch. You'll need a basic knowledge of Java program language.

{{< alert style="info" >}}

The [hello-world.zip](viewer/java/resources/how-to/how-to-create-minimal-java-app/hello-world.zip) contains source code of the application that we're going to build.

{{< /alert >}}

## Install Java Development Kit (JDK)

Since we're going to build application we'll need a development kit - programs and libraries to compile our code to a Java application.

* As example you can install JDK on Ubuntu by typing `apt-get install default-jdk`
* Windows users can find installation packages at [Microsoft Build of OpenJDK](https://docs.microsoft.com/en-us/java/openjdk/download)

To make sure that JDK is installed you can type `java -version` in your terminal. 

```bash
java -version
```

On my machine where I'm running Ubuntu and the output is the following:

```bash
openjdk version "11.0.13" 2021-10-19
OpenJDK Runtime Environment (build 11.0.13  +8-Ubuntu-0ubuntu1.20.04)
OpenJDK 64-Bit Server VM (build 11.0.13+8-Ubuntu-0ubuntu1.  20.04, mixed mode, sharing)
```

## Create the app

Create a folder for our app and navigate into it:

```bash
mkdir hello-world && cd hello-world
```

Create `App.java` file by typing or using context menu.

```bash
cat > App.java
```

Type or paste the following code:

```java
public class App {
    public static void main(String[] args) {
      System.out.println("Hello, World!");
    }
}
```

Compile our app using `javac` Java Compiler. This operation will translate our code that we can read to the code that Java Runtime Environment (JRE) can execute. JRE is a program that can run Java programs. It contains Java package classes, runtime libraries and Java Virtual Machine JVM.

```bash
javac -d . App.java
```

## Run the app

Type `ls` to list files in the in the `hello-world`. There will be two files:
  
```bash
App.class App.java
```

Now, we can run our app using JRE by typing:

```bash
java -classpath . App
```

The output is going to be the following:

```bash
Hello, World!
```

The second parameter `-classpath .` means that Java should search for the class files in the current directory. We also should pass the class name `App` that contains `main` method.

## Create executable JAR file

In the next step we'll create an executable Java Archive File (JAR) file. The JAR file contains all the resources that are needed to run the app such as class files, configuration files, images, and other resource files.

The only file we need to create is a Manifest file. It is a configuration file that will contain information about a class that contains `main` method.

Create `App.mf` manifest file by typing:

```bash
cat > App.mf
```

And pasting the following text:

```java
Manifest-Version: 1.0
Main-Class: App
```

When the JRE will execute our application it will look for the class name that contains application entry point `main` method. In our case the entry point is in `App` class.

We're ready to create our JAR file, type the following

```bash
jar cmf App.mf App.jar App.class App.java
```

This command will create `App.jar` file and place it in the current directory.
Let's now run the JAR file that we've created by typing.

```bash
java -jar App.jar
```

The output is going to be the following:

```bash
Hello, World!
```

The file `App.jar` can be shared and executed on another machine with JRE installed.

## Summary

In this article we've created sample Java application that prints "Hello, World!" to the console.
