# fix-spotify-icon [![Build Status](https://travis-ci.org/faviouz/fix-spotify-icon.svg?branch=master)](https://travis-ci.org/faviouz/fix-spotify-icon)

> Shell script to fix the Spotify icon in Ubuntu 14.04

![](https://raw.githubusercontent.com/faviouz/fix-spotify-icon/master/comparison.png)

Since Ubuntu 14.04, Spotify uses a low resolution icon in the system tray. You can [replace the icon manually](http://askubuntu.com/questions/449392/how-to-fix-fuzzy-spotify-icon-in-the-icon-tray). But the icon is overwritten whenever Spotify updates. In other words, you have to fix the icon every time Spotify is updated. This script minimizes the pain with a simple one-line command.

## Installation

Run this one-liner to automagically install and run the script:

```bash
$ wget --no-check-certificate http://bit.ly/fix-spotify-icon -O - | sh
```

If you don't trust me you can inspect the source of the installation script and install it yourself.

## Usage

When the Spotify icon breaks after an update you have to run:

```bash
$ fix-spotify-icon
```
