---
layout: post
title: WSL vs Git-Bash vs Docker vs Hyper-V vs VirtualBox
tags: [english, blog, windows, linux]
---
### The Challenge

As a developer, I will usually install Git on my systems. Not only provides it
the version control service, but in Windows it does add the Git-Bash: a set of
Linux-tools based on Cygwin. So I can work the same way on my Windows box like 
on my Linux PC.

Further I like it to contain development environments for different projects in
their own Docker container without polluting one another or the host with
left-overs.

### Win10 and WSL

Since the new laptop came with Windows 10, I could run the Windows Subsystem for
Linux aka WSL. [Winaero](
    https://winaero.com
){:target="_blank"} has a [serias of articles](
    https://winaero.com/blog/list-available-wsl-linux-distros-windows-10/
){:target="_blank"} giving a good overview of the WSL features. I did chose the
Debian installation. The first impression was very positive. One could even run
a X-Server on the Windows host and use it from X11 client applications in the
WSL environment.

But there is a downside which prevent me from using WSL: Git-Bash/Cygwin is a
very thin layer on top of Windows. It can easily access and run most
Windows-native applications. E.g. you install Python for Windows and use it
within Git-Bash. WSL on the other hand behaves more like a separate Linux system
with its own file system, so you cannot use Windows executables. From this
follows that, if you need native Git on WIndows (e.g. for IDE integration), you
still must install Git and Git-Bash.

### Win10 and Docker

Since WSL only provides user space compatibility, it is impossible to run
Docker-daemon on WSL. Now you could argue, that Win10 can run Docker natively.
Well, this is true only for Win10 Pro and above. Win10 Home is missing the
necessary Hyper-V-infrastructure.

### Conclusion

WSL is an interesting concept, but does currently not fit into my development
workflow. If you are confined to Win10 Home but have enough cores and memory,
VirtualBox allows you to run real Linux boxes on your Windows system. On those
you can run Docker without restrictions. Then there is no need for WSL, since
VirtualBox provides a better Linux environment and Git-Bash/Cygwin provides
better integration into your Windows system.

Two questions remain:
* Since [Podman](
    https://podman.io/
){:target="_blank"} does not need a daemon, could it run containers in WSL?
* I should check on the office laptop, if native Docker on Win10 Enterprise is
  an option to skip the VirtualBox layer.