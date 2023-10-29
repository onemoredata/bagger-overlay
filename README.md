# OneMoreData Bagger official Gentoo Overlay

Welcome to the OnemoreData Gentoo Overlay. This repository contains
all packages required on top of gentoo to build and also develop Bagger.

Many dependencies were originally written for [LedgerSMB](https://github.com/ledgersmb)


## Using the repository

You can install with Layman.  Note this is not an official Gentoo overlay.

    layman -o https://raw.githubusercontent.com/onemoredata/bagger-overlay/main/repository.xml -f -a bagger

You may also forego layman and create the following repository configuration for portage.

```/etc/portage/repos.conf/bagger-overlay.conf
[bagger-overlay]
location = /var/db/repos/bagger-overlay
sync-type = git
sync-uri = https://github.com/onemoredata/bagger-overlay
auto-sync = yes
priority = 1000
```
