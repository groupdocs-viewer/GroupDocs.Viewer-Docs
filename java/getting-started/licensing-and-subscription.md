---
id: licensing-and-subscription
url: viewer/java/licensing-and-subscription
title: Licensing
weight: 5
keywords: free, free trial, evaluation, groupdocs viewer java
description: "GroupDocs.Viewer for Java provides different plans for purchase or offers a Free Trial and a 30-day Temporary License for evaluation."
productName: GroupDocs.Viewer for Java
hideChildren: False
toc: True
---
Sometimes, in order to study the system better, you want to dive into the code as fast as possible. To make this easier, GroupDocs.Viewer provides different plans for purchase or offers a Free Trial and a 30-day Temporary License for evaluation.

{{< alert style="info" >}}

Note that there are a number of general policies and practices that guide you on how to evaluate, properly license, and purchase our products. You can find them in the ["Purchase Policies and FAQ"](https://purchase.groupdocs.com/policies) section.

{{< /alert >}}

## Free Trial or Temporary License

You can try GroupDocs.Viewer without buying a license.

### Free Trial

The evaluation version is the same as the purchased one – the evaluation version simply becomes licensed when you set the license. You can set the license in a number of ways that described in the next sections of this article.

The evaluation version comes with the limitations:

- Only first 2 pages can be rendered.
- Trial badges are placed in the rendering results on the top of each page.

### Temporary License

If you wish to test GroupDocs.Viewer without the limitations of the trial version, you can also request a 30-day Temporary License. For more details, see the ["Get a Temporary License"](https://purchase.groupdocs.com/temporary-license) page.

## How to set a license

{{< alert style="info" >}}

You can find pricing information at ["Pricing Information"](https://purchase.groupdocs.com/pricing/viewer/java) page.

{{< /alert >}}

After the license is obtained you need to set the license. This section describes options of how this can be done, and also comments on some common questions.

The license should be set:

- Only once per application domain,
- and before using any other GroupDocs.Viewer classes.

{{< alert style="info" >}}

The license can be set multiple times per app domain but we recommend doing it once since all calls to `SetLicense` except first will just waste processor time.

{{< /alert >}}

### Set License from File

The following code sets a license from file.

{{< tabs "example1">}}
{{< tab "Java" >}}

```java
String licensePath = "path to the .lic file";
License license = new License();
license.setLicense(licensePath);
```

{{< /tab >}}
{{< /tabs >}}


### Set License from Stream

The following example shows how to set a license from a stream.

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


### Set Metered License

You can also set [Metered](https://reference.groupdocs.com/viewer/java/com.groupdocs.viewer/metered) license as an alternative to license file. It is a new licensing mechanism that will be used along with existing licensing method. It is useful for the customers who want to be billed based on the usage of the API features. For more details, please refer to [Metered Licensing FAQ](https://purchase.groupdocs.com/faqs/licensing/metered) section.

Following is the sample code demonstrating how to use `Metered` licensing.

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
