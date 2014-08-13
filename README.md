# fix-spotify-icon [![Build Status](https://travis-ci.org/faviouz/fix-spotify-icon.svg?branch=master)](https://travis-ci.org/faviouz/fix-spotify-icon)

> Shell script to fix the Spotify icon in Ubuntu 14.04

![](https://raw.githubusercontent.com/faviouz/fix-spotify-icon/master/comparison.png)

Since Ubuntu 14.04, Spotify uses a low resolution icon in the system tray. It's not too difficult to fix it. But the icon is overwritten whenever Spotify updates. In other words, you have to fix the icon every time Spotify is updated. This script minimizes the pain with a simple one-line command.

## Installation

Download the script using either `wget` or `curl`:

```bash
$ wget -O fix-spotify-icon.sh https://raw.githubusercontent.com/faviouz/fix-spotify-icon/master/fix-spotify-icon.sh
```

```bash
$ curl -L -s -S https://raw.githubusercontent.com/faviouz/fix-spotify-icon/master/fix-spotify-icon.sh > fix-spotify-icon.sh
```

`chmod` the script and move it:

```bash
$ chmod +x fix-spotify-icon.sh
$ sudo mv fix-spotify-icon.sh /usr/local/bin/fix-spotify-icon
```

## Usage

When the Spotify icon breaks you just have to run:

```bash
$ fix-spotify-icon
```
