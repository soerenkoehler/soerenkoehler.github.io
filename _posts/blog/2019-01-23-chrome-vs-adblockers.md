---
layout: post
title: Goodbye Chrome?
tags: [english, blog, internet, privacy, firefox]
---
About ten years ago I might have written a rant like this:

_Dear Firefox, there was a time, when your name was Phoenix and when you were
lean, fast and fun to use. Now you are fat and slow. Look at the new star in
town: Chrome, that's what a browser should look like._

Now back to the present, Firefox got a lot of overhaul, it became fast again.
And Chrome is the one getting fat. It even gets confused when you use multiple
accounts e.g. to separat browser sync and your main Google identity (esp. in
Drive). As a workaround, the forums advice you to use another browser. Another
annoyance in Chrome on Windows is the integrated "malware scanner" which
requires crowbar methods to be disabled permanently.

In addition: Google's business is not free software but advertising and big data.
So it was a wonder that you could install addons like µBlock and µMatrix. It was
_no_ wonder that there was no extension API in Chrome Mobile. So I switched to
Firefox Mobile as soon as it got the API required for µBlock and µMatrix.

I was not much surprised to read the following
[article on golem.de (german)](
    https://www.golem.de/news/google-chrome-neue-schnittstellen-koennten-ublock-origin-verhindern-1901-138935.html
){:target="_blank"}.
For µBlock/µMatrix-users like me the most prominent voice
in the case is the addon-author Gorhill, who expresses his concerns in this
[comment (english)](
    https://bugs.chromium.org/p/chromium/issues/detail?id=896897&desc=2#c23
){:target="_blank"}.
In short: There is a change under discussion which would
affect (read: break) the webrequest API heavily used by content filter addons.

Even if the API change will be not as harsh as it sounds at the moment, the
announcement lets me reconsider my browser strategy. Since all the essential
extensions
([µBlock](
    https://github.com/gorhill/uBlock
){:target="_blank"},
[µMatrix](
    https://github.com/gorhill/uMatrix
){:target="_blank"},
[Tampermonkey](https://tampermonkey.net/){:target="_blank"})
are available for Firefox too, the switch would not hurt much.
