---
layout: post
title: WSL2 Network Problems
tags: [english, blog, windows, linux]
---
After a long delay Win10 v2004 was released to the masses. It brought WSL2 and I
did hope to do some Linux and Docker stuff on my Windows-box. The Achilles heel
of WSL2 is its use of Hyper-V. Whenever I get in contact with Hyper-V, strange
and unexplicable errors pop up. Google usually shows a lot of similiar reports
but no working solutions. In case of WSL2 the problem is with networking:
Hyper-V creates a default virtual switch which promises to do NAT and the stuff
to allow containers to connect to the internet. On the other hand, WSL2 seems to
set up its own virtual switch. If you try to connect it to a physical network,
you reach the land of unexplicable errors...

And without the likes of `apt update` working, the Linux subsystem is more than
useless.