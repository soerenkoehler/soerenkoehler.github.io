---
layout: post
title: Make Youtube Usable Again
tags: [english, hack, youtube, firefox]
---
For me, the greatest problem with Youtube is, that it wants to increase playing
time. In this respect it is natural to autoplay lists and to have those pesky
"up next" feature. Still, I want to use the "Watch Later" list as a collection
of single(!) videos to watch later but separately.

In the past, when I was using Chrome, there was an abandonded addon, disabling
the "up next" feature. So I started my own addon, doing the same, taylored to
my own requirements:
[Play it once, Sam](
    https://github.com/soerenkoehler/play-it-once-sam
){:target="_blank"}.
Later I turned it into some [Tampermonkey-script](
    https://github.com/soerenkoehler/monkey-scripts
){:target="_blank"}.

Unfortunately, this was a bit of "war hacking" against the Youtube devs,
especially since the new Youtube look aka Material design aka Polymer framework.
Finally, after my recent change to Firefox, the script did not work well any
more. However, before I could find out, how to fix it, Firefox suggested some
addon. Normally, suggestions are features, I will disable, but
this one proved to be useful: [Enhancer for YouTube](
    https://addons.mozilla.org/en-US/firefox/addon/enhancer-for-youtube/
){:target="_blank"}.

It saved me the trouble of hacking through the Polymer code finding (or rather
not finding) the correct events to plug into. Simply choosing the following
settings produced the behaviour I liked. Well, not exactly, as the videos stop
on start. So the player will advance to the next video in the list, but do not
start playing. As a collateral damage, starting a video requires one click more.
But I'm ok with this. As a bonus, the addon provides its own themes, while
Youtube did regularly forget that I had selected the original dark theme...

![Settings 1](/assets/posts/2019-02-03-youtube-improved-1.png)  
![Settings 2](/assets/posts/2019-02-03-youtube-improved-2.png)
