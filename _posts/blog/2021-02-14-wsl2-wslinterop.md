---
layout: post
title: "Strange Tales of WSL: WSLInterop Suddenly Broken"
tags: [english, blog, windows, linux]
---
In the last days Git started to behave strangely in WSL. It will now always ask
for credentials. Since I usually use GIT from within VSCode and VSCode's
WSL-Plugin does some magic in the background it still works fine in VSCode. But
in a standalone shell I get asked for user and password. A workaround is setting
`credential.helper=store` or such. It will then even reuse the credentials of
the VSCode plugin.

Further investigation revealed, that it was not Git that is broken but the
WSLInterop feature. Normally you should be able to run Windows executables
directly from WSL, as detailed [here][interop]. But no longer in my WSL
installation. Calling a Windows binary returns without any effect (and without
errors).

A lengthy internet search gave nothing but general hints about WSLInterop and no
hints about the phenomenon I observe. I'll reasses the situation after
installing Win10 20H2.

**Update 2021-02-14**: When cross-checking against the work laptop I realized,
that interop was disabled altogether in `/etc/wsl.conf`. Still don't know when
this may have happened...

[interop]: https://docs.microsoft.com/en-us/windows/wsl/interop#run-windows-tools-from-linux
