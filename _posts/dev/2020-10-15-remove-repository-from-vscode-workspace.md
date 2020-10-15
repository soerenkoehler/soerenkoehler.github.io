---
layout: post
title: Remove a Repository From a VSCode Multi-Root Workspace
tags: [english, dev, vscode]
---
Removing a folder from a multi-root workspace does not remove the associated git
repo from SCM view. I've reported this already as an [issue in the VSCode
project][issue]:

    Steps to Reproduce:

    1. Create a multi-root workspace:

        * folder_A contains git-repo A
        * folder_B contains git-repo B

        SCM pane shows repo A and repo B

    2.  Remove folder_B

        SCM pane still shows repo B (expected: repo B is automatically closed/removed)

    3. Select "close repo" on repo B

        repo B vanishes from SCM pane

    4. reopen workspace

        SCM pane again shows repo B (expected: repo B does no longer show up)

As a workaround you can search and delete the workspace settings under
`C:\Users\<username>\AppData\Roaming\Code\User\workspaceStorage`.

[issue]: https://github.com/microsoft/vscode/issues/108757/