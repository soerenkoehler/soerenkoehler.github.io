---
layout: post
title: Disable KDE speech dispatcher
tags: [english, hack, kde]
---
Some updates ago the KDE Audio Mixer began to behave strangely. Or better:
It did show the strange behaviour of something called "speech dispatcher":
A increasing number of audio sources showed up in the mixer panel. Annoying.

When I tried to uninstall it, I saw that half of KDE was dependant from it.
So I started the most secret hacker tool ever: Google (or in my case actually:
[DuckDuckGo](
    https://duckduckgo.com
){:target="_blank"}).
The helpful result is this [thread](
    https://bbs.archlinux.org/viewtopic.php?pid=1688550#p1688550
){:target="_blank"}:

> _arojas 2017-02-03 13:32:33_
>> _an4oud wrote:_
>>
>> Howto disable speech-dispatcher (autostart) or remove him?
>
> $ mkdir -p ~/.config/speech-dispatcher && echo
> "DisableAutoSpawn" >> ~/.config/speech-dispatcher/speechd.conf

Or, in other words, create a file `~/.config/speed-dispatcher/speechd.conf`
containing the line:
```
DisableAutoSpawn
```