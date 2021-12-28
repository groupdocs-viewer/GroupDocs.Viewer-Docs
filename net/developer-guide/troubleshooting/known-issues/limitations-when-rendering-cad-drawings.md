---
id: limitations-when-rendering-cad-drawings
url: viewer/net/limitations-when-rendering-cad-drawings
title: Limitations when rendering CAD drawings
weight: 2
description: "This article is about the limitations of GroupDocs.Viewer of rendering CAD Drawings."
keywords: 
productName: GroupDocs.Viewer for .NET
hideChildren: False
---
{{< alert style="success" >}}This limitation has been eliminated in v20.7. Do not set assembly binding redirect in case you're using the v20.7 and higher.{{< /alert >}}

## Rendering CAD drawings requires adding assembly binding redirect

When rendering CAD drawings using **GroupDocs.Viewer** it is required to add the following [assembly binding redirect](https://docs.microsoft.com/en-us/dotnet/framework/configure-apps/redirect-assembly-versions) to your project **app.config** or **web.config** files. The next example shows the required assembly binding redirect when rendering CAD drawings with GroupDocs.Viewer for .NET 20.6.1.

```csharp
<configuration>
    <!--...-->
    <runtime>
        <!--...-->
        <assemblyBinding xmlns="urn:schemas-microsoft-com:asm.v1">
            <!--...-->
            <dependentAssembly>
                <assemblyIdentity name="Aspose.PDF" publicKeyToken="716fcc553a201e56" culture="neutral"/>
                <bindingRedirect oldVersion="0.0.0.0-20.5.0.0" newVersion="20.5.0.0"/>
                <publisherPolicy apply="no"/>
            </dependentAssembly>
        </assemblyBinding>
    </runtime>
</configuration>
```

