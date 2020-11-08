---
layout: post
title: "First impressions: VSCode, WSL, Git ..."
tags: [english, dev, vscode]
---
After some hours playing around with VSCode, WSL2 and the "Remote WSL"
extension, I've to admire that the MS devs got a lot of things magically right.
Mostly you won't see the break between WIndows and Linux. Here some small
impressions:

*   If you have installed Git for Windows, you can even use the (Cygwin)
    credential manager in the WSL2 environment to [access the Windows system
    credential store][cred-mgr]{:target="_blank"}.

*   Filesystem change events wont get propagated from Windows native file system
    through the mount points like `/mnt/c`. So VSCode SCM or Jekyll won't notice
    changed workspace files. There are already some open issues at github:
    
    *   [#3959][fs-events1]{:target="_blank"}
    *   [#4739][fs-events2]{:target="_blank"}
    
    Currently the only solution is moving your workspaces onto linux native file
    systems. A small side challenge may arise, if you prefer your workspaces on
    a non-system disk. The MS Store installed distributions reside per default
    on the system disk. You can move your distro to another folder using
    wsl.exe:

    *   Export the distro using `wsl --export`.
    *   Reimport the distro using `wsl --import` and supplying the desired
        location.
    *   Side side challenge: The reimported distro does not have all the
        required settings in the registry. You must manually update the value
        `HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss\{distro-uuid}\DefaultUid`
        to your desired login user Uid. The user you created when initialising the
        distro after download should have Uid=1000.

[cred-mgr]: https://code.visualstudio.com/docs/remote/troubleshooting#_sharing-git-credentials-between-windows-and-wsl
[fs-events1]: https://github.com/microsoft/vscode-remote-release/issues/3959
[fs-events2]: https://github.com/microsoft/WSL/issues/4739
