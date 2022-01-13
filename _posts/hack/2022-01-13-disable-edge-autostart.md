---
layout: post
title: Disable Edge Autostart on Login
tags: [english, hack, windows]
---
Recently (and very much annoyingly) MS Edge started to show up after every
Windows restart and user sign-in. The phenomenon was a bit mysterious since Edge
did ignore any obvious autostart settings and did not show up under the usual
autostart config locations.(*)

After almost a day of internet search and many futile attempts to solve the
problem I finally found a working solution. Well, you always find the solution
at the end of your journey, don't you?

Here it is. Set the value `AutoRunOnLogon=0` on the registry key
```
HKLM\SOFTWARE\WOW6432Node\Microsoft\EdgeUpdate\Clients\{56EB18F8-B008-4CBD-B6D2-8C97FE7E9062}\Commands\on-logon-autolaunch
```
See KOH_089's answer in [this thread][solution].

You may also consider analog modification of the neighbouring keys:
```
...\Commands\on-logon-startup-boost
...\Commands\on-os-upgrade
```

(*) Further speculations:
*   One commenter proposed to simply rename the Edge-executable. When I did
    this, Edge _did_ show up under Settings/Apps/Startup. So I assume it is
    deliberately hidden by MS.
*   Since the registry key refers to EdgeUpdate, I assume one could also
    disable the respective entries found using the SysInternals tool _Autoruns_.

[solution]: https://answers.microsoft.com/en-us/microsoftedge/forum/all/how-do-i-stop-edge-from-automatically-opening-on/510d25a1-96a0-48b3-adc0-97b5646fe0a2