![AppleScript icon](http://i.imgur.com/tnVUAtM.png)
AppleScript-droplet
===================

A template for creating Droplets for Mac OS X that will pass dropped files to an embedded script

How to use
==========

1. Replace the script.sh file in "Show Package Contents" Contents/Resources/Scripts with the script you want run
2. There is no step 2

Sample scripts
==============

file.sh
-------
Just uses the BSD command "file" to return info about each of the dropped files.
A copy of this is used as the default script.sh in AppleScript-droplet.app/Contents/Resources/Scripts/

dropbox.sh
----------
Uploads each of the dropped files to a configurable folder in Dropbox and returns (and copies) the public URL (assuming you have configured it to use a public folder).
Requires [Dropbox-Uploader] be installed and configured in advance.

imgur.sh
--------
Uploads each of the dropped files to imgur and returns (and copies) the public URL.
Currently these are anonymous. (patches welcome)

Using the sample Scripts
========================

Dropbox
-------
Create a new Dropbox Droplet like so:

    cp -r AppleScript-droplet.app Dropbox-droplet.app
    cp scripts/dropbox.sh Dropbox-droplet.app/Contents/Resources/Scripts/script.sh

Imgur
-----
Create a new Imgur Droplet like so:

    cp -r AppleScript-droplet.app Imgur-droplet.app
    cp scripts/imgur.sh Imgur-droplet.app/Contents/Resources/Scripts/script.sh

[Dropbox-Uploader]: https://github.com/andreafabrizi/Dropbox-Uploader
