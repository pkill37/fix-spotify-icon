# fix-spotify-icon [![Build Status](https://travis-ci.org/faviouz/fix-spotify-icon.svg?branch=master)](https://travis-ci.org/faviouz/fix-spotify-icon)

> Shell script to fix the Spotify icon in Ubuntu.

![](http://i.imgur.com/14iOPw7.png)

Spotify uses a green icon in the system tray, which is not in accordance with the standard system tray icons in Ubuntu. You could [replace the icon manually](http://askubuntu.com/questions/449392/how-to-fix-fuzzy-spotify-icon-in-the-icon-tray), but you would have to repeat it every time Spotify is updated, since the icon is overwritten in the process. This shell script minimizes the pain with a simple one-line command that replaces the Spotify system tray icon with a more fitting one.

## Installation

```bash
$ sh -c "$(wget https://raw.githubusercontent.com/faviouz/fix-spotify-icon/master/install.sh -O -)"
```

```bash
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/faviouz/fix-spotify-icon/master/install.sh)"
```

## Usage

```bash
$ fix-spotify-icon
```
