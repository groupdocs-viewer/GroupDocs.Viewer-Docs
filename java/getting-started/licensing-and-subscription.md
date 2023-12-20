---
id: licensing-and-evaluation
url: viewer/java/licensing-and-evaluation
title: Licensing and evaluation
weight: 5
keywords: free, free trial, evaluation, groupdocs viewer java
description: "GroupDocs.Viewer for Java provides different plans for purchase or offers a Free Trial and a 30-day Temporary License for evaluation."
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
aliases:
    - /viewer/java/licensing-and-subscription/
---

To study the system, you may want quick access to the API. To make this easier, GroupDocs.Viewer provides different plans for purchase and offers a Free Trial and a 30-day Temporary License for evaluation.

{{< alert style="info" >}}

Note that there are a number of general policies and practices that guide you on how to evaluate, properly license, and purchase our products. You can find them in the [Purchase Policies and FAQ](https://purchase.groupdocs.com/policies) section.

{{< /alert >}}

## Purchased License

After buying, apply the license file or include it as an embedded resource. 

License needs to be set:
- Only once per application domain
- Before using any other GroupDocs.Viewer classes
    
### License Applying Options

Licenses can be applied from different locations:

*   Explicit path
*   The folder containing the _groupdocs-viewer.jar_ file
*   The folder containing the package that called _groupdocs-viewer.jar_
*   The folder containing the entry package (your _.jar_)
*   As a Metered License that allows you to pay for your usage. For details, see the [Metered Licensing FAQ](https://purchase.groupdocs.com/faqs/licensing/metered/).

When you reference _groupdocs-viewer.jar_ in the application, the library is copied to your output directory. The easiest way to set a license is often to place the license file in the same folder as _groupdocs-viewer.jar_ and specify just the filename without the path.

Use the [setLicense](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/license/#setLicense-java.io.InputStream-) method to license a component.

Calling `setLicense` multiple times is not harmful, it simply wastes processor time.

Calling [setMeteredKey](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/metered/#setMeteredKey-java.lang.String-java.lang.String-) multiple times is not harmful either but wastes processor time and can accumulate consumption improperly.

#### Apply the License

After obtaining the license, set it. This section explains how to do this. When developing your application, call the `setLicense` method in your startup code before using the GroupDocs.Viewer classes.

##### Set a License from a File

The following code snippet shows how to set a license from file:

{{< tabs "example1">}}
{{< tab "Java" >}}

```java
String licensePath = "path to the .lic file";
License license = new License();
license.setLicense(licensePath);
```

{{< /tab >}}
{{< /tabs >}}

##### Set a License from a Stream

The following code snippet shows how to set a license from a stream:

{{< tabs "example2">}}
{{< tab "Java" >}}

```java
String licensePath = "path to the .lic file";
try (InputStream fileStream = new FileInputStream(licensePath)) {
    License license = new License();
    license.setLicense(fileStream);
}
```

{{< /tab >}}
{{< /tabs >}}

#### Apply Metered License

You can set the [Metered](https://reference.groupdocs.com/net/viewer/groupdocs.viewer/metered) license as an alternative to license file. It is useful for the customers who want to be billed based on the usage of the API features. For more details, please refer to [Metered Licensing FAQ](https://purchase.groupdocs.com/faqs/licensing/metered).

The following code snippet shows how to use the metered license:

{{< tabs "example3">}}
{{< tab "Java" >}}

```java
// For complete examples and data files, please go to https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java
String publicKey = ""; // Your public license key
String privateKey = ""; // Your private license key

Metered metered = new Metered();
metered.setMeteredKey(publicKey, privateKey);

// Get amount (MB) consumed
double amountConsumed = Metered.getConsumptionQuantity();
System.out.println("Amount (MB) consumed: " + amountConsumed);

// Get count of credits consumed
double creditsConsumed = Metered.getConsumptionCredit();
System.out.println("Credits consumed: " + creditsConsumed);
```

{{< /tab >}}
{{< /tabs >}}

### Changing the License File Name

You do not have to name the license file "GroupDocs.Viewer.lic". Feel free to rename it as you prefer, and use that name when setting the license in your application.

### "Cannot find license filename" Exception

When you buy and download a license from the GroupDocs website, the license file is named "GroupDocs.Viewer.lic." Download it using your browser. Sometimes, browsers recognize it as XML and add the .xml extension, making the full file name "GroupDocs.Viewer.lic.XML" on your computer.

If Microsoft Windows is set to hide file extensions (which is the default in most installations), the license file will show as "GroupDocs.Viewer.lic" in Windows Explorer. You might assume this is the actual file name and call the `setLicense` method with "GroupDocs.Viewer.lic", but there is no such file, leading to an exception.

To fix this issue, rename the file to remove the hidden .xml extension. Additionally, we suggest disabling the "Hide extensions" option in Microsoft Windows.

## How to Evaluate GroupDocs.Viewer

You can also try GroupDocs.Viewer without buying a license.

### Free Trial

The evaluation version is identical to the purchased one; it becomes licensed once you set the license. You can set the license using methods described in the following sections of this article.

The evaluation version has the following limitations:

- Rendering is limited to the first 2 pages.
- Trial badges are added to the top of a rendered page.

### Temporary License

If you want to test GroupDocs.Viewer without the limitations of the trial version,   request a 30-day Temporary License. For details, see the ["Get a Temporary License"](https://purchase.groupdocs.com/temporary-license) page.
