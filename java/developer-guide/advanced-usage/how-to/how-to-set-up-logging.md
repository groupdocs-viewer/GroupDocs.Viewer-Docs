---
id: how-to-set-up-logging
url: viewer/java/how-to-set-up-logging
title: How to set up logging
weight: 1
description: "This article explains how to set up logging when viewing a document with GroupDocs.Viewer within your Java applications."
keywords: logging logger viewing converting
productName: GroupDocs.Viewer for Java
hideChildren: False
---
By default [GroupDocs.Viewer](https://products.groupdocs.com/viewer) not logging when viewing documents but we also provide a way to save the log to console and file.

There is an interface that we can utilize:

* [ILogger](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.logging/ILogger) - defines the methods that are required for instantiating and releasing output file stream.

There are classes that we can utilize:

* [ConsoleLogger](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.logging/ConsoleLogger) - defines the methods that are required for logging to console.
* [FileLogger](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.logging/FileLogger) - defines the methods that are required for logging to file.

There are 4 types of messages in the log file:

* error - for unrecoverable exceptions
* warning - for recoverable/expected exceptions
* debug - for debug information
* trace - for maximum detailed messages

## Logging to File

In this example, we'll log into the file, so we need to use [FileLogger](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.logging/FileLogger) class.

```java
    // Create logger and specify the output file
    FileLogger fileLogger = new FileLogger("output.log");

    // Create ViewerSettings and specify FileLogger
    ViewerSettings viewerSettings = new ViewerSettings(fileLogger);

    try (Viewer viewer = new Viewer("sample.docx", viewerSettings)) {
        ViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("result.html");

        viewer.view(viewOptions);
    }
```

## Logging to Console

In this example, we'll log into the console so we need to use [ConsoleLogger](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.logging/ConsoleLogger) class.

```java
    // Create logger and specify the output file
    ConsoleLogger fileLogger = new ConsoleLogger();

    // Create ViewerSettings and specify FileLogger
    ViewerSettings viewerSettings = new ViewerSettings(fileLogger);

    try (Viewer viewer = new Viewer("sample.docx", viewerSettings)) {
        ViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("result.html");

        viewer.view(viewOptions);
    }
```

## Implementing custom logger

To make your logger you should implement [ILogger](https://apireference.groupdocs.com/viewer/java/com.groupdocs.viewer.logging/ILogger) interface.

* For trace messages - implement public `void trace(String message, Object... params)`, `void trace(Throwable ex, String message, Object... params)` and `boolean isTraceEnabled()` methods
* For debug messages - implement public `void debug(String message, Object... params)`, `void debug(Throwable ex, String message, Object... params)` and `boolean isDebugEnabled()` methods
* For warning messages - implement public `void warning(String message, Object... params)`, `void warning(Throwable ex, String message, Object... params)` and `boolean isWarningEnabled()` methods
* For error messages - implement public `void error(String message, Object... params)`, `void error(Throwable ex, String message, Object... params)` and `boolean isErrorEnabled()` methods

As for `params` parameter:\
some messages will contain one or few `{}` that should be replaced with corresponding values of `params`, for example:

Message is `"This is message with {} and {}"`, params is `"first param", "second param"`, the result is expected to be `"This is message with first param and second param"`

In this example, we'll implement a simple file logger.

```java
    /**
     * Writes log messages to the file.
     */
    public class CustomLogger implements ILogger {
        private final String _fileName;
    
        /**
         * Create logger to file.
         *
         * @param fileName Full file name with path
         */
        public CustomLogger(String fileName) {
            _fileName = fileName;
        }
    
        /**
         * Writes trace message to the console.
         *
         * @param message The trace message.
         */
        public void trace(String message, Object... params) {
            if (message == null) {
                throw new IllegalArgumentException("message");
            }
    
            try (FileWriter wr = new FileWriter(_fileName, true)) {
                wr.append("[TRACE] ").append(message);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    
        /**
         * Writes debug message to the console.
         *
         * @param message The debug message.
         */
        public void debug(String message, Object... params) {
            if (message == null) {
                throw new IllegalArgumentException("message");
            }
    
            try (FileWriter wr = new FileWriter(_fileName, true)) {
                wr.append("[DEBUG] ").append(message);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    
        /**
         * Writes warning message to the console; Warning log messages provide information about the unexpected and recoverable event in application flow.
         *
         * @param message The warning message.
         */
        public void warning(String message, Object... params) {
            if (message == null) {
                throw new IllegalArgumentException("message");
            }
    
            try (FileWriter wr = new FileWriter(_fileName, true)) {
                wr.append("[WARN] ").append(message);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    
        /**
         * Writes an error message to the console. Error log messages provide information about unrecoverable events in application flow.
         *
         * @param message   The error message.
         * @param exception The exception.
         */
        public void error(Throwable exception, String message, Object... params) {
            if (message == null) {
                throw new IllegalArgumentException("message");
            }
    
            try (FileWriter wr = new FileWriter(_fileName, true)) {
                wr.append("[ERROR] ").append(message).append(", exception: ").append(exception.getMessage());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    
        @Override
        public boolean isTraceEnabled() {
            return true;
        }
    
        @Override
        public boolean isDebugEnabled() {
            return true;
        }
    
        @Override
        public boolean isWarningEnabled() {
            return true;
        }
    
        @Override
        public boolean isErrorEnabled() {
            return true;
        }
    
        // Other methods
    }

    // Create logger and specify the output file
    CustomLogger customLogger = new CustomLogger("output.log");

    // Create ViewerSettings and specify FileLogger
    ViewerSettings viewerSettings = new ViewerSettings(customLogger);

    try (Viewer viewer = new Viewer("sample.docx", viewerSettings)) {
        ViewOptions viewOptions = HtmlViewOptions.forEmbeddedResources("result.html");

        viewer.view(viewOptions);
    }
```

## More resources

### GitHub Examples
You may easily run the code above and see the feature in action in our GitHub examples:
*   [GroupDocs.Viewer for Java examples, plugins, and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java)
*   [Document Viewer for .NET App WebForms UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET-WebForms)
*   [Document Viewer for Java App Dropwizard UI Modern Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Dropwizard)
*   [Document Viewer for Java Spring UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-Spring)
*   [GroupDocs.Viewer for .NET samples, plugins and showcase](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET)
*   [Document Viewer for .NET MVC UI Example](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java-MVC)

### Free Online App
Along with full-featured Java library we provide simple but powerful free Apps.
You are welcome to view Word, PDF, Excel, PowerPoint documents with free to use online **[GroupDocs Viewer App](https://products.groupdocs.app/viewer)**.
