---
layout: single
title: "docker-machine and Raspbian ... a funny couple !"
date: 2019-01-22
#modified: xxxx-xx-xx
permalink: /posts/2019/01/18-docker_machine_raspbian/
categories:
  - tech
  - container
  - raspberry
  - todo
tags:
  - docker
  - raspbian
  - hypriot
  - admin
---

## State of the Union

Ok - it's 2019 ... and Raspbian has really gone a long way. But despite the fact
that there is a growing number of Raspbian-Docker nerds out there... the
docker-machine guys seem to be not interested in properly supporting Raspbian
out-of-the box using either some "hypriot" driver setup or at least the "generic"
drivers built in OS detection ...

## TL;DR

So long story short:

For the time being You need to temporarily tweak `/etc/os-release` to kick
`docker-machine --driver generic`s little ass and make the whole party rock'n
roll as in those days waaaayyyy back...

## ... read the nasty details

Ok - I admit ... I did not find "the best" minimal Raspberry PI Docker Cluster
base Distro ... although I checked a whole bunch of options. [Hypriot] seems
like a really good starter ... and a vanilla Raspbian install with some
`apt install docker` did the Job as well - but Hypriot seemed to be kind of
slim enough and ready to rumble out of the box.

Other starter choices would include [DietPi] and [MiniBian]
(see also [this discussion][MiniBian2]).

So far I like the Hypriot stuff - a little outdated - but seems nice, working,
and like my pair of gloves. I will probably stick to that for some time. The built-in
[cloud-init] magic seems also interesting ... but that's another story.

I want something I can `dd` on the SD card, tweak some config files, stick it
in and boot it up... and to make a really happy ending, there should be some
`docker-machine create` to finish it all up - nice and tidy.

Well --- would be nice at least... reality leaves some itching, though.

docker-machine does not offer some compatible driver setup, nor does the
supposed to be swiss army knife "generic" driver handle it out of the box
because of some problems in its OS detection.

So what do You do ? After booting You take some `/etc/os-release` file from
your ubuntu laptop (or maybe any other more mainstream choice) and trick
docker-machine into out-of-the-box mode. Apply it's content using good old
copy-and-paste... and You are on Your way to the usual procedure ...
off you go using docker-machine like it should be !

But do not forget to keep a copy of the original content of `/etc/os-release`
and watch out for the soft link it is.

After creating the new machine you can and should undo the tweaked
`/etc/os-release` back to the original content. Otherwise maybe Your
`apt update` might get confused... but I didn't smoke-test that part as of now
and so far there is no forecast on that ;-)

TODO: I prepared a little [GIST] to follow me through the procedure.

By the way: [Hypriot] offers a whole bunch of special docker image builds but
chances are that You do not really need to stick to their special builds in a whole
lot of "not so system dependent" cases ... I will probably shed a light on
that in some later post.

---

[Hypriot]:    https://github.com/hypriot
[DietPi]:     https://www.dietpi.com
[MiniBian]:   https://sourceforge.net/projects/minibian/
[MiniBian2]:  https://sourceforge.net/p/minibian/discussion/general/thread/6b24d893/?limit=25#f786/912b
[cloud-init]: https://launchpad.net/cloud-init
[GIST]:       XYZ
