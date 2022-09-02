---
ID: Installation
url: viewer/net/installation
title: "Installation"
weight: 4
keywords: "Installation"
description: "Installation von GroupDocs.Viewer für .NET"
Produktname: GroupDocs.Viewer für .NET
versteckenKinder: Falsch
tok: Stimmt
---

{{< alert style="info" >}}

Um sicherzustellen, dass Ihre Plattform unterstützt wird, können Sie die [Systemanforderungen] ({{< ref "system-requirements" >}}) überprüfen.

{{< /Alarm >}}

## Von NuGet installieren

NuGet ist die einfachste Möglichkeit, GroupDocs.Viewer für .NET herunterzuladen und zu installieren. Es gibt Möglichkeiten, es in Ihrem Projekt zu installieren.

### Installation mit .NET CLI

[.NET CLI](https://docs.microsoft.com/en-us/dotnet/core/tools/) ist ein praktisches Tool zum Erstellen, Installieren von Abhängigkeiten und Veröffentlichen Ihrer Projekte. Um GroupDocs.Viewer für .NET mit der .NET CLI zu installieren, öffnen Sie ein Terminal im Ordner Ihres Projekts und führen Sie Folgendes aus:

```powershell
dotnet add package GroupDocs.Viewer
```

### Installation über die Paketmanager-GUI

Befolgen Sie diese Schritte, um GroupDocs.Viewer mit der Paket-Manager-GUI zu referenzieren:

* Öffnen Sie Ihr Projekt in Visual Studio.
* Klicken Sie auf **Projekt** -> **NuGet-Pakete verwalten...**. Sie können auf dieselbe Option auch über den Projektmappen-Explorer zugreifen. Klicken Sie mit der rechten Maustaste auf die Lösung oder das Projekt, und wählen Sie im Kontextmenü NuGet-Pakete verwalten aus.
* Wählen Sie **Registerkarte durchsuchen** und geben Sie **"GroupDocs.Viewer"** in das Suchtextfeld ein.
* Klicken Sie auf die Schaltfläche **Installieren**, um die neueste Version der API in Ihrem Projekt zu installieren, wie im folgenden Screenshot gezeigt.

![](viewer/net/images/getting-started/installation/install-via-package-manager-gui.png)

### Verwenden der Paket-Manager-Konsole

Sie können die folgenden Schritte ausführen, um mit der Paket-Manager-Konsole auf GroupDocs.Viewer für .NET zu verweisen:
* Öffnen Sie Ihre Lösung/Ihr Projekt in Visual Studio.
* Wählen Sie im Menü **Tools** -> **NuGet-Paket-Manager** -> **Paket-Manager-Konsole** aus, um die Paket-Manager-Konsole zu öffnen.
* Geben Sie den Befehl „Install-Package GroupDocs.Viewer“ ein und drücken Sie die Eingabetaste, um die neueste Version in Ihrer Anwendung zu installieren.
* Nach erfolgreicher Installation wird GroupDocs.Viewer in Ihrer Anwendung referenziert.

![](viewer/net/images/getting-started/installation/using-package-manager-console.png)

## Von der offiziellen GroupDocs-Website installieren

Sie können die folgenden Schritte ausführen, um auf GroupDocs.Viewer für .NET zu verweisen, das von der offiziellen [GroupDocs Downloads](https://downloads.groupdocs.com/viewer/net)-Website heruntergeladen wurde:

1. Entpacken Sie das ZIP-Archiv oder folgen Sie den Anweisungen des MSI-Installationsassistenten.
2. Erweitern Sie im Projektmappen-Explorer den Projektknoten, dem Sie einen Verweis hinzufügen möchten.
3. Klicken Sie mit der rechten Maustaste auf den Knoten **Referenzen** für das Projekt und wählen Sie **Referenz hinzufügen** aus dem Menü aus.
4. Wählen Sie im Dialogfeld Verweis hinzufügen die Registerkarte **.NET** (sie ist normalerweise standardmäßig ausgewählt).
5. Wenn Sie GroupDocs.Viewer mit dem MSI-Installationsprogramm installiert haben, sehen Sie GroupDocs.Viewer im oberen Bereich. Wählen Sie es aus und klicken Sie dann auf die Schaltfläche **Auswählen**.
6. Wenn Sie nur die DLL heruntergeladen und entpackt haben, klicken Sie auf die Schaltfläche **Durchsuchen** und suchen Sie die Datei GroupDocs.Viewer.dll.
Sie haben auf GroupDocs.Viewer verwiesen und es sollte im Bereich **AusgewählteKomponenten** des Dialogfelds angezeigt werden.
7. Klicken Sie auf **OK**.
Die GroupDocs.Viewer-Referenz wird unter dem Knoten **Verweise** des Projekts angezeigt.

