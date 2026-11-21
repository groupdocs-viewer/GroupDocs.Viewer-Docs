# GroupDocs.Viewer Docs - AGENTS.md

> Instructions for AI agents working with **GroupDocs.Viewer** documentation in this repository.

GroupDocs.Viewer is an on-premise SDK that renders documents in 170+ formats, among them Microsoft Office, PDF, CAD, email, archive and image files, to HTML, PDF, PNG and JPEG, and reads document information such as the page count, layers or folders without rendering.

**Supported formats (canon):** the per-platform tables below. Format lists differ between platforms, so do not quote one platform's list or count for another.

## Platforms in this docs tree

| Platform slug | Docs hub | Formats table |
|---|---|---|
| `net` | [net/_index.md](net/_index.md) | [net/getting-started/supported-document-formats.md](net/getting-started/supported-document-formats.md) |
| `java` | [java/_index.md](java/_index.md) | [java/getting-started/supported-document-formats.md](java/getting-started/supported-document-formats.md) |
| `nodejs-java` | [nodejs-java/_index.md](nodejs-java/_index.md) | [nodejs-java/getting-started/supported-document-formats.md](nodejs-java/getting-started/supported-document-formats.md) |
| `python-net` | [python-net/_index.md](python-net/_index.md) | [python-net/getting-started/supported-document-formats.md](python-net/getting-started/supported-document-formats.md) |
| `mcp` | [mcp/_index.md](mcp/_index.md) | [mcp/supported-formats.md](mcp/supported-formats.md) |

## .NET target frameworks (canon)

When documenting .NET install/runtime requirements, quote [net/getting-started/system-requirements.md](net/getting-started/system-requirements.md) and do not invent other TFMs. Since 26.8 the GroupDocs.Viewer NuGet package is a metapackage over `net462`, `net6.0` and `net6.0-windows` builds. AI, PSB and PSD files render only with `net462` and `net6.0-windows`.

The Python package (`groupdocs-viewer-net`) embeds its own .NET runtime, so Python readers install no .NET at all. Its requirements are on the python-net system requirements page.

## Product lines (do not confuse)

| Line | Where to send readers |
|---|---|
| **On-premise SDK** (this docs tree) | Platform hubs above; examples repos; NuGet / Maven / PyPI / npm packages |
| **GroupDocs.Viewer MCP server** (this docs tree, `mcp/`) | An MCP server that renders document pages as PNG images for AI agents, locally |
| **GroupDocs Cloud** | Separate Cloud product docs/packages - do not mix install snippets |

## Editing conventions

- The public URL of a page comes from its `url:` front matter, not from its file path. Keep `url:` unchanged when you move or rename a file.
- `{{< ref "..." >}}` resolves content paths: after moving a file, update every `ref` that points to it.
- Redirects are Hugo `aliases:` front matter on the destination page.
- Menu titles (`title:`, `linkTitle:`) are plain text: no emoji.
- Code examples on a page have runnable counterparts in the platform's examples repository; keep the two in sync.
- net and python-net: three folders are generated, so do not edit them by hand:
  - `_sample_files/` comes from GroupDocs.Viewer-SampleFiles (`tools/sync.ps1`);
  - `_output_files/` comes from docs-to-code-examples (`generate_outputs.py` of `net-docs-to-code-examples` or `python-net-docs-to-code-examples`);
  - `_preview/` (page images of both) comes from the site repo's `scripts/doc-preview` (`render --html --zips`). Re-render it whenever a sample or an output changes.
  A code example's input tab links its sample and its output tab previews its result, so a page needs no screenshot of that result.
- net: each C# example group has a unique, descriptive tab id (`{{< tabs "render-presentation-to-html" >}}`). The id names the generated class and the output files, so keep ids unique across the platform and don't reuse `example1`.

## Useful entry URLs

| Resource | URL |
|---|---|
| Docs home | [https://docs.groupdocs.com/viewer/](https://docs.groupdocs.com/viewer/) |
| Products | [https://products.groupdocs.com/viewer/](https://products.groupdocs.com/viewer/) |
| Releases | [https://releases.groupdocs.com/viewer/](https://releases.groupdocs.com/viewer/) |
| API reference | [https://reference.groupdocs.com/viewer/](https://reference.groupdocs.com/viewer/) |
| Examples (.NET) | [https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-.NET) |
| Examples (Java) | [https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Java) |
| Examples (Node.js) | [https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Node.js-via-Java](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Node.js-via-Java) |
| Examples (Python) | [https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Python-via-.NET](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Python-via-.NET) |
| MCP server | [https://github.com/groupdocs-viewer/GroupDocs.Viewer.Mcp](https://github.com/groupdocs-viewer/GroupDocs.Viewer.Mcp) |
