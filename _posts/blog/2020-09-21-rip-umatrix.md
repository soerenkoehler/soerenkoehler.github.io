---
layout: post
title: R.I.P. µMatrix
tags: [english, blog, internet, privacy, firefox]
---
Today heise.de reported that the µMatrix repository on Github
[had been archived](
    https://www.heise.de/news/uMatrix-wird-nicht-weiterentwickelt-Repository-steht-auf-archived-4906711.html
){:target="_blank"}.
Immediately outcries and conspiracy theories arose in the forum:
*   He can't do this because we, the users, are entitled to free quality
    software developed by single enthusiasts in their spare time. (Answer: No,
    we are not. If you insist in it, just get your ass the fuck up, fork the
    project and do it yourself.)
*   Google/NSA/Freemasons/Reptiloids threatened to kill his cat to get him stop
    developing such software overthrowing the advertisers' secret world
    government. (Answer: This is rubbish, if T.H.E.Y. wan't to stop Ad Blockers,
    [they simply change APIs](2019/06/02/another-nail-in-the-coffin.md).)

In my opinion, Raymond "Gorhill" Hill's reason to stop the project is much more
mundane: available time. Gorhill is the developer of two addons:
[µMatrix](
    https://github.com/gorhill/uMatrix
){:target="_blank"} 
and
[µBlock](
    https://github.com/gorhill/uBlock
){:target="_blank"}.

Principal considerations:

*   Both are addons with a certain complexity. Keeping both in development would
    result in each receiving only half the development effort.
*   The functionality overlaps: µMatrix allows a finer control over web requests
    while not providing static filters like µBlock. On the other hand, µBlocks
    dynamic rules mirror a large part of the µMatrix functionality.
*   Usage is strongly asymmetrical. It is not only the usual pareto split of
    80-20 but an "occupy wallstreet" split of 99-1:

    ![](/assets/posts/2020-09-21-umatrix-vs-ublock.png)

Additional considerations:

*   µMatrix development for Chromium based browsers is much more difficult now
    as [Google killed the old Webrequest
    API](2019/06/02/another-nail-in-the-coffin.md).
*   Mozilla flags only µBlock Origin as recommended addon (see above).
*   The mobile version of FF 80 has only a handful of compatible addons, among
    them is µBlock but not µMatrix.
*   Last releases
    |         | pre-release | stable      |
    |---------|-------------|-------------|
    | µMatrix | 24 Feb 2020 | 05 Sep 2019 |
    | µBlock  | 21 Sep 2020 | 09 Aug 2020 |

Further development of µMatrix would divert about fifty percent of Gorhills
capacity to satisfy one percent of the userbase. Any serious manager in such a
situation would happily shut down the minor product.




----
[](
){:target="_blank"}

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

