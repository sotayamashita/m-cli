[![Build Status][travis-badge]][travis-link]
[![Slack Room][slack-badge]][slack-link]

# m-cli

>  Swiss Army Knife for Mac OS X

It is a fish port of [rgcr/m-cli](https://github.com/rgcr/m-cli)

## Install

With [fisherman]

```
fisher sotayamashita/m-cli
```


## Usage

```javascript
Usage: m [COMMAND]

where COMMAND can be one of:
       battery
       bluetooth
       dir
       disk
       dns
       dock
       finder
       firewall
       gatekeeper
       hostname
       info
       lock
       ntp
       network
       nosleep
       restart
       safeboot
       screensaver
       service
       shutdown
       sleep
       timezone
       trash
       update
       user
       volume
       vpn
       wallpaper
       wifi
```

**Battery:**

```javascript
Usage: m battery [COMMAND]

where COMMAND can be one of:
       status  Get the battery status
       help

```

**Bluetooth**

```javascript
Usage: m bluetooth [COMMAND]

where COMMAND can be one of:
       status  Get bluetooth status
       enable  Turn on bluetooth
       disalbe Turn off bluetooth
       help
```

## TODO

* [x] battery
* [x] bluetooth
* [ ] dir
* [ ] disk
* [x] dns
* [ ] dock
* [ ] finder
* [ ] firewall
* [ ] gatekeeper
* [ ] hostname
* [x] info
* [ ] lock
* [x] ntp
* [ ] network
* [ ] nosleep
* [x] restart
* [x] safeboot
* [ ] screensaver
* [ ] service
* [ ] shutdown
* [ ] sleep
* [ ] timezone
* [ ] trash
* [ ] update
* [ ] user
* [ ] volume
* [ ] vpn
* [ ] wallpaper
* [ ] wifi

[travis-link]: https://travis-ci.org/sotayamashita/m-cli
[travis-badge]: https://img.shields.io/travis/sotayamashita/m-cli.svg
[slack-link]: https://fisherman-wharf.herokuapp.com
[slack-badge]: https://fisherman-wharf.herokuapp.com/badge.svg
[fisherman]: https://github.com/fisherman/fisherman
