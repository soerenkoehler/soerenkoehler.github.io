---
layout: post
title: Keyboard Hack for the Aspire 5
tags: [english, hack]
---
On the current Aspire 5 15"-series (A515-52) Acer managed to fit a full number
pad into the keyboard. What I realized only after I bought it: The keys
"page up", "page down", "home" and "end" are only on the numpad. Toogling with
"num lock" is not the solution. Alas, you also cannot temporary toggle the
"num lock" state with Fn...

An internet search produced images of other Aspire keyboards that have those
keys - available via Fn-Layer on the topmost row. Even my good old Asus EeePC
900 got the said keys - as a Fn layer on the arrow keys. But the Fn layer on
the cursor keys of the Aspire consists of those useless media Keys
"start/stop", "pause", "next", "prev".

This was the point, when I remembered, that I did already employ the solution
to silence the "caps lock": [SharpKeys (Github)](
    https://github.com/randyrants/sharpkeys/releases
){:target="_blank"}. It cannot remap all hardware switches, only those that
have a scancode. But the media keys on the cursor keys provide scan codes for
Fn + \<arrow>, so you can easily remap them with SharpKeys:

![Sharpkeys](/assets/posts/2019-01-22-keyboard-hack-aspire-a515.png)
