---
layout: post
title: Remove a Repository From a VSCode Multi-Root Workspace
tags: [english, dev, vscode]
---
Removing a folder from a multi-root workspace does not remove the associated git
repo from SCM view. I've reported this already as an [issue in the VSCode
project][issue]:

#### Steps to Reproduce ####

> 1.  Create a multi-root workspace:
>     * folder_A contains git-repo A
>     * folder_B contains git-repo B
>     SCM pane shows repo A and repo B
> 
> 2.  Remove folder_B SCM pane still shows repo B (expected: repo B is
>     automatically closed/>oved)
> 
> 3.  Select "close repo" on repo B repo B vanishes from SCM pane
> 
> 4.  reopen workspace SCM pane again shows repo B (expected: repo B does no
>     longer show up)

As a workaround you can search and delete the workspace settings under
`C:\Users\<username>\AppData\Roaming\Code\User\workspaceStorage`.

#### Update 2020-11-04 ####

There was some [analysis on the topic](analysis) on Github. Obviously, it is
connected to having files from folder_B still open in an editor. Closing those
should solve the problem without the above workaround. 

[issue]:    https://github.com/microsoft/vscode/issues/108757/
[analysis]: https://github.com/microsoft/vscode/issues/108757/#issuecomment-713690131