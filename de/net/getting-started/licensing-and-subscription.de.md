---
id: Lizenzierung und Abonnement
url: viewer/net/licensing-and-subscription
title: "Lizenzierung und Abonnement"
weight: 5
keywords: "kostenlos, kostenlose Testversion, Evaluierung, groupdocs.viewer"
description: "GroupDocs.Viewer bietet verschiedene Kaufpläne oder eine kostenlose Testversion und eine 30-tägige temporäre Lizenz zur Evaluierung."
Produktname: GroupDocs.Viewer für .NET
versteckenKinder: Falsch
tok: Stimmt
---
Manchmal möchten Sie, um das System besser zu studieren, so schnell wie möglich in den Code eintauchen. Um dies zu vereinfachen, bietet GroupDocs.Viewer verschiedene Pläne zum Kauf an oder bietet eine kostenlose Testversion und eine 30-tägige temporäre Lizenz zur Evaluierung an.

{{< alert style="info" >}}

Beachten Sie, dass es eine Reihe allgemeiner Richtlinien und Praktiken gibt, die Sie bei der Bewertung, ordnungsgemäßen Lizenzierung und dem Kauf unserer Produkte anleiten. Sie finden sie im Abschnitt ["Einkaufsrichtlinien und häufig gestellte Fragen"](https://purchase.groupdocs.com/policies).

{{< /Alarm >}}

## Kostenlose Testversion oder temporäre Lizenz

Sie können GroupDocs.Viewer testen, ohne eine Lizenz zu kaufen.

### Kostenlose Testphase

Die Evaluierungsversion ist die gleiche wie die gekaufte – die Evaluierungsversion wird einfach lizenziert, wenn Sie die Lizenz festlegen. Sie können die Lizenz auf verschiedene Arten festlegen, die in den nächsten Abschnitten dieses Artikels beschrieben werden.

Die Evaluierungsversion kommt mit den Einschränkungen:

- Nur die ersten 2 Seiten können gerendert werden.
- Testabzeichen werden in den Rendering-Ergebnissen oben auf jeder Seite platziert.

### Temporäre Lizenz

Wenn Sie GroupDocs.Viewer ohne die Einschränkungen der Testversion testen möchten, können Sie auch eine 30-tägige temporäre Lizenz anfordern. Weitere Einzelheiten finden Sie auf der Seite ["Get a Temporary License"](https://purchase.groupdocs.com/temporary-license).

## So legen Sie eine Lizenz fest

{{< alert style="info" >}}

Preisinformationen finden Sie auf der Seite ["Preisinformationen"](https://purchase.groupdocs.com/pricing/viewer/net).

{{< /Alarm >}}

Nachdem Sie die Lizenz erhalten haben, müssen Sie die Lizenz festlegen. Dieser Abschnitt beschreibt Möglichkeiten, wie dies geschehen kann, und kommentiert außerdem einige häufig gestellte Fragen.

Die Lizenz sollte eingestellt werden:

- Nur einmal pro Anwendungsdomäne,
- und bevor Sie andere GroupDocs.Viewer-Klassen verwenden.

{{< alert style="info" >}}

Die Lizenz kann mehrmals pro Anwendungsdomäne festgelegt werden, wir empfehlen jedoch, dies einmal zu tun, da alle Aufrufe von „SetLicense“, außer dem ersten, nur Prozessorzeit verschwenden.

{{< /Alarm >}}

### Lizenz aus Datei festlegen

Der folgende Code legt eine Lizenz aus einer Datei fest.

```csharp
string licensePath = "path to the .lic file";
License license = new License();
license.SetLicense(licensePath);
```

### Lizenz vom Stream festlegen

Das folgende Beispiel zeigt, wie Sie eine Lizenz aus einem Stream festlegen.

```csharp
string licensePath = "path to the .lic file";
using (FileStream fileStream = File.OpenRead(licensePath))
{
    License license = new License();
    license.SetLicense(fileStream);
}
```

### Gemessene Lizenz festlegen

Sie können auch die [Metered](https://apireference.groupdocs.com/net/viewer/groupdocs.viewer/metered)-Lizenz als Alternative zur Lizenzdatei festlegen. Es handelt sich um einen neuen Lizenzierungsmechanismus, der zusammen mit der bestehenden Lizenzierungsmethode verwendet wird. Es ist nützlich für Kunden, die basierend auf der Nutzung der API-Funktionen abgerechnet werden möchten. Weitere Einzelheiten finden Sie im Abschnitt [FAQ zur getakteten Lizenzierung](https://purchase.groupdocs.com/faqs/licensing/metered).

Im Folgenden finden Sie den Beispielcode, der zeigt, wie die „Metered“-Lizenzierung verwendet wird.

```csharp
string publicKey = ""; // Your public license key
string privateKey = ""; // Your private license key

Metered metered = new Metered();
metered.SetMeteredKey(publicKey, privateKey);

// Get amount (MB) consumed
decimal amountConsumed = GroupDocs.Viewer.Metered.GetConsumptionQuantity();
Console.WriteLine("Amount (MB) consumed: " + amountConsumed);

// Get count of credits consumed
decimal creditsConsumed = GroupDocs.Viewer.Metered.GetConsumptionCredit();
Console.WriteLine("Credits consumed: " + creditsConsumed);
```

