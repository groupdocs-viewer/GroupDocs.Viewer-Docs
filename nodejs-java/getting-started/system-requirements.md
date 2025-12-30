---
id: system-requirements
url: viewer/nodejs-java/system-requirements
title: System Requirements
weight: 3
description: "System requirements, supported platforms, and environment setup for GroupDocs.Viewer for Node.js via Java. No Microsoft Office or other third‑party software is required."
keywords: System Requirements, Supported Operating System, Supported Frameworks
productName: GroupDocs.Viewer for Node.js via Java
hideChildren: False
toc: True
---

{{< alert style="info" >}}

GroupDocs.Viewer for Node.js via Java works standalone and does not require Microsoft Office or other third‑party software. This page lists the supported platforms and the specific requirements for both development and production environments.

{{< /alert >}}

## Supported Platforms

- Windows: 10, 11, Windows Server 2016/2019/2022 (x64)
- Linux: Debian/Ubuntu, CentOS/RHEL, AlmaLinux/Rocky, Amazon Linux, and other modern distributions (x64)
- macOS: 12 Monterey and newer (Apple Silicon and Intel)
- Architectures: x64 and ARM64 (where Node.js, Java, and native toolchains are available)

## Development Environment

Main requirements:

### Node.js

Use Node.js 20 LTS or later (22 LTS is also supported). See details at [Node.js Releases](https://nodejs.org/en/about/previous-releases).

### Java JDK

Java 8 (LTS) and higher are supported, including Java 11 (LTS), Java 17 (LTS), and Java 21 (LTS). We recommend Java 17 (LTS).

### Build Tools

The [@groupdocs/groupdocs.viewer](https://www.npmjs.com/package/@groupdocs/groupdocs.viewer) package relies on the [java](https://www.npmjs.com/package/java) bridge to interoperate with the Java API. The `java` package depends on [node-gyp](https://www.npmjs.com/package/node-gyp), which requires a working native toolchain during install.

Depending on your OS you will need different tools installed. See the `Installation` section of the [node-gyp](https://www.npmjs.com/package/node-gyp) package for full details.

#### Unix

* [A supported version of Python 3](https://devguide.python.org/versions/)
* `make`
* A C/C++ compiler toolchain such as [GCC](https://gcc.gnu.org/)

On Debian/Ubuntu:

```bash
sudo apt-get update
sudo apt-get install -y build-essential python3
```

#### macOS

* [A supported version of Python 3](https://devguide.python.org/versions/)
* Xcode Command Line Tools which will install `clang`, `clang++`, and `make`.
  * Install the Xcode Command Line Tools standalone by running xcode-select --install. -- OR --
  * Alternatively, if you already have the full Xcode installed, you can install the Command Line Tools under the menu Xcode -> Open Developer Tool -> More Developer Tools....

#### Windows

The fastest way would be using [Chocolatey](https://chocolatey.org/) app and package manager for Windows:

```bash
choco install python visualstudio2022-workload-vctools -y
```

Also, you can install tools manually:

* Install the current [version of Python](https://devguide.python.org/versions/) from the [Microsoft Store](https://apps.microsoft.com/store/search?publisher=Python+Software+Foundation).
* Install Visual C++ Build Environment: For Visual Studio 2019 or later, use the Desktop development with C++ workload from [Visual Studio Community](https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=Community). For a version older than Visual Studio 2019, install [Visual Studio Build Tools](https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=BuildTools) with the Visual C++ build tools option.

### Environment Variables

Ensure your Java installation is discoverable:

- Set `JAVA_HOME` to your JDK/JRE root and include `bin` on `PATH`.

Windows (PowerShell):

```powershell
$env:JAVA_HOME="C:\Program Files\Java\jdk-17"
$env:Path="$env:JAVA_HOME\bin;$env:Path"
```

Linux/macOS (Bash):

```bash
export JAVA_HOME=/usr/lib/jvm/java-17
export PATH="$JAVA_HOME/bin:$PATH"
```

### Fonts and Localization

For accurate rendering of Word/Excel/PowerPoint/PDF and other text-based formats, make sure commonly used fonts are available on the machine. On Linux servers, install a comprehensive font set (e.g., DejaVu/Noto) and any additional corporate fonts used in your documents.

## Production Environment

### Node.js

Use a current LTS version:

- Recommended: Node.js 20 LTS or 22 LTS
- Minimum: Node.js 18 (maintenance)

### Java Runtime (JRE)

Install a compatible JRE:

- Recommended: JRE 17 (headless is fine for servers)
- Supported: JRE 8, 11, 17, 21

### Hardware Recommendations

- CPU: 2+ cores (4+ recommended for concurrent rendering)
- RAM: 2 GB minimum (4–8 GB recommended for large Office/PDF documents)
- Disk: 500 MB free for libraries and temp files, plus space for input/output documents

Actual resource usage depends on document size, number of pages, embedded images, and concurrent operations.

### Permissions and Temp Storage

- Read permissions to input files and fonts directories
- Write permissions to output directories and OS temporary folder (`TEMP`/`TMPDIR`)
- Optional: Configure a dedicated temp directory if default temp is constrained

### Containerized Environments (Linux)

Install required tools and Java inside your image. Example (Debian/Ubuntu base):

```bash
apt-get update \
  && apt-get install -y --no-install-recommends \
     curl ca-certificates build-essential python3 openjdk-17-jre-headless \
  && rm -rf /var/lib/apt/lists/*
```

Then install the package in your app:

```bash
npm install @groupdocs/groupdocs.viewer
```

### Networking

No outbound network access is required for runtime operation (only for package installation if fetching from npm) unless you using file license. In case you on Metered license where you paying for usage the Internet connection is required. The library works fully offline with local documents.

### Troubleshooting Setup

- node-gyp build errors on Windows: ensure "Desktop development with C++" workload is installed, restart terminal, and confirm `python --version` returns Python 3.x.
- `JAVA_HOME` not set or Java not found: set `JAVA_HOME` and add `<JAVA_HOME>/bin` to `PATH` (see above).
- Permission denied when writing results: verify output folder permissions and available disk space.
- Missing glyphs or incorrect text layout: install required fonts used by your documents on the server.

For installation steps, see the [Installation]({{< ref "viewer/nodejs-java/getting-started/installation" >}}) page.

  