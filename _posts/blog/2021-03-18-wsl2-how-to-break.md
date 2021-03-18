---
layout: post
title: "More Ways to Break WSL (Could not fetch remote environment)"
tags: [english, blog, windows, linux]
---
WSL is always good for some unexpected surprise. Which, on the first glance may
look like a problem in VSCode. But it wasn't.

The problem: VSCode couldn't connect to WSL and gave the message _"Could not
fetch remote environment"_.

A web search for this error message lead to an [entry on
Stackoverflow][so]{:target="_blank"} which indicated some version and update
issues in VSCode. Since neither of the solutions worked and I additionally
observed that `apt update` and WSL internet access in general stopped working, I
concluded that I had broken WSL altogether.

The only bigger system change I'd done on that day was compressing
`C:\Users\<yourname>\AppData`. I had some faint memory that compressing certain
folders could confuse WSL. Luckily, my first guess seemed to be correct:
Uncompressing `C:\Users\<yourname>\AppData\Local\Temp` restored WSL internet
connection as well as VSCode access to the WSL.

[so]: https://stackoverflow.com/questions/64125085/vs-code-connect-to-wsl-ubuntu-20-04-lts-fail-with-error-could-not-fetch-remote/
