---
id: view-documents-in-the-browser
url: viewer/python-net/view-documents-in-the-browser
title: View Documents in the Browser
linkTitle: View in the Browser
second_title: Open a document or a folder in the GroupDocs.Viewer UI with the groupdocs-viewer command
weight: 6
keywords: groupdocs-viewer, command line, CLI, browser, document viewer, web UI, local server, open document, terminal, GroupDocs.Viewer UI, python
description: "The groupdocs-viewer command that comes with GroupDocs.Viewer for Python via .NET opens a document, or a whole folder, in the GroupDocs.Viewer UI in your browser, with no code and nothing else to install."
productName: GroupDocs.Viewer for Python via .NET
hideChildren: False
toc: True
---

Installing the `groupdocs-viewer-net` package (version 26.11 or later) also puts a `groupdocs-viewer` command on your `PATH`. It starts a small web server on your machine and opens the GroupDocs.Viewer UI in your browser, with page navigation, zoom, rotation, thumbnails, search, print, PDF download and a dark theme. Every format the library renders opens there, so it is a quick way to look at a document, check how it renders, or browse a folder of files, without writing code.

The server uses the Python standard library only: it adds no dependency and runs on every Python the package supports, 3.5 to 3.14.

## Open a document or a folder

```bash
groupdocs-viewer                          # browse the current folder
groupdocs-viewer ~/documents              # browse a folder and its subfolders
groupdocs-viewer report.docx              # open one file; nothing else is served
groupdocs-viewer drawing.dwg -t png -p 9000 --no-open
python -m groupdocs.viewer contracts -l GroupDocs.Viewer.lic
```

`python -m groupdocs.viewer` runs the same command, which helps when the scripts folder of your Python is not on `PATH`.

The command prints the address it opens, for example `http://127.0.0.1:8080/?token=...`, and keeps running until you press Ctrl+C. Given a folder, the UI shows a file browser for it and its subfolders; given a file, only that file is served.

## Options

| Option | Default | Description |
|---|---|---|
| `path` | the current folder | A file or a folder. Given a file, only that file is served. |
| `-p`, `--port` | 8080 | The port. When 8080 is busy, a free port is used; a port you name that is busy stops the command. `0` asks for any free port. |
| `-b`, `--bind` | `127.0.0.1` | The address to listen on. With the default, only this machine can connect. Any other address lets other machines connect, and only the session token keeps them out. |
| `--allow-host` | | Another name the browser may use for the server, such as a DNS name of this machine (repeatable). |
| `--no-open` | | Do not open the browser. |
| `-l`, `--license-path` | `GROUPDOCS_LIC_PATH` | A license file or URL. A license that cannot be applied stops the command at startup. |
| `-t`, `--viewer-type` | `html` | Render pages as `html`, `png` or `jpg`. |
| `--cache-dir` | a per-user cache folder | Where rendered pages are kept. |
| `-v`, `--verbose` | | Log every request, and the full error of a failed one. |
| `--version` | | Print the package version and exit. |

Without a license the viewer runs in evaluation mode: each document shows its first two pages, with an evaluation notice on each. See [Licensing and Evaluation]({{< ref "viewer/python-net/getting-started/licensing-and-subscription.md" >}}).

## Who can use the server

The command is for the person at the machine, and its defaults keep everyone else out:

- **A session token.** The address it prints and opens carries a new random token each time it starts. The page turns it into a cookie, and the server answers only requests that carry it, so other users of the machine and other websites in your browser cannot use it. After a restart, open the newly printed address; an old bookmark gets an error page that says so.
- **This machine only**, unless you pass `-b`. The server also checks the `Host` of each request, so a web page cannot reach it through a DNS name that points at your machine; `--allow-host` adds a name of your own.
- **Read only.** Files cannot be uploaded. Hidden files and folders (and on Windows, those with the hidden or system attribute) are not served, nor links that lead out of the folder.

On Linux without a desktop session (neither `DISPLAY` nor `WAYLAND_DISPLAY` set, and no `BROWSER`) no browser is opened: open the printed address in a browser on that machine, or bind to an address other machines can reach with `-b`.

## The cache

Rendered pages are kept on disk, so a page opens at once the second time: in `%LOCALAPPDATA%\GroupDocs\Viewer\cache` on Windows, and in `$XDG_CACHE_HOME/groupdocs-viewer` or `~/.cache/groupdocs-viewer` on Linux and macOS, unless `--cache-dir` names another folder. A file that changes is rendered again. Entries not opened for 30 days are deleted when the command starts. The cache folder cannot be inside the folder being served.

## In your own application

The command is a local tool, not a web server to deploy. To show documents inside your own FastAPI, Flask or Django application, with your storage, a shared cache or your authentication, use the [GroupDocs.Viewer UI package for Python](https://pypi.org/project/groupdocs-viewer-net-ui/), or render pages yourself with the API (see the [Developer Guide]({{< ref "viewer/python-net/developer-guide/_index.md" >}})).
