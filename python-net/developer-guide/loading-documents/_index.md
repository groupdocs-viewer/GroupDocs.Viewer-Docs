---
id: loading-documents
url: viewer/python-net/developer-guide/loading-documents
title: Loading Documents
linkTitle: Loading Documents
weight: 1
description: "Load source documents from a local file path, a Python stream, or an HTTP URL — optionally with LoadOptions for passwords, encodings, and external-resource control — in GroupDocs.Viewer for Python via .NET."
keywords: load document, load from local disk, load from stream, load from URL, password-protected document, LoadOptions, Viewer constructor, python, GroupDocs.Viewer
productName: GroupDocs.Viewer for Python via .NET
hideChildren: true
toc: True
aliases:
    - /viewer/python-net/loading-documents-from-different-sources/
---

*GroupDocs.Viewer for Python via .NET* can load a source document from three kinds of sources: a local file path, a Python stream (file handle or `BytesIO`), or an HTTP URL. Pass any of them to the `Viewer` class — the engine auto-detects the format and keeps the source open only as long as necessary.

## Viewer Class Constructor

The `Viewer` constructor accepts the source as its first positional argument. The remaining arguments are all optional and can be passed positionally or as keyword arguments:

```
Viewer(source, load_options=None, settings=None, leave_open=None)
```

- **`source`** — a file path (`str`), raw bytes, or any file-like stream (`open("file", "rb")`, `io.BytesIO(data)`).
- **`load_options`** — a `LoadOptions` instance. Use it to pass a password, override the detected file type, or tune resource-loading behaviour.
- **`settings`** — a `ViewerSettings` instance. Holds the `logger` and cache, applied to the whole rendering pipeline. See [Logging and Diagnostics]({{< ref "/viewer/python-net/developer-guide/logging-and-diagnostics.md" >}}).
- **`leave_open`** — when `True`, the `Viewer` will not close the underlying stream after rendering. Handy when you want to keep reading from the same handle afterwards.

Always construct the `Viewer` inside a `with` block. The context manager releases the native handle and any cached render state as soon as the block exits.

## Load Options

`LoadOptions` is a single class whose properties cover every format the Viewer supports. Only set the properties that apply to your source — the rest default sensibly.

| Property | Type | Purpose |
|---|---|---|
| `file_type` | `FileType` | Override the detected format. Useful when a file has no extension or an ambiguous MIME type. |
| `password` | `str` | Password for an encrypted document (DOCX, XLSX, PDF, archive, Outlook, …). |
| `encoding` | `str` | Force an encoding for plain-text and CSV sources. |
| `detect_encoding` | `bool` | Enable automatic encoding detection for text. |
| `try_repair` | `bool` | Attempt to recover data from a corrupted source. |
| `resource_loading_timeout` | `timedelta` | Upper bound on external-resource fetches (HTML / MHTML / EPUB / SVG). |
| `skip_external_resources` | `bool` | Render without fetching any external resources. |
| `whitelisted_resources` | `list[str]` | When `skip_external_resources` is `True`, allow this specific list through. |

## Examples

{{< alert style="info" >}}
The three pages in this section each cover one source type — local disk, stream, and URL. For the full runnable examples, see the companion [GroupDocs.Viewer for Python via .NET examples repository](https://github.com/groupdocs-viewer/GroupDocs.Viewer-for-Python-via-.NET).
{{< /alert >}}

- [Load from local disk]({{< ref "/viewer/python-net/developer-guide/loading-documents/load-document-from-local-disk.md" >}}) — pass a filesystem path to the `Viewer` constructor.
- [Load from stream]({{< ref "/viewer/python-net/developer-guide/loading-documents/load-document-from-stream.md" >}}) — pass an open file handle or a `BytesIO` buffer.
- [Load from URL]({{< ref "/viewer/python-net/developer-guide/loading-documents/load-document-from-url.md" >}}) — fetch with `requests`, wrap in `BytesIO`, render from memory.
