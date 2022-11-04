# Mass Installer Guide

## What it does:
Mass installer lets you install files from the web.
You can also install multiple files, change the directory of install, and add install messages.

## How to install and use:
Download it.
Drag the test.mi file onto "Mass Installer" or "mi.bat".
You will see it installs files from online.

## Make your own .mi files:
Start off by making a file with the extension of .mi.
Now you can list files or functions.
This is a example of install files from lpmlua.com:

```[files]
advlua.zip = https://lpmlua.com/packages/advlua/advlua.zip
lpm-installer.exe = https://lpmlua.com/lpm-installer.exe```

This will install these 2 files with the appropriate name.
Here is a example of every function:

```[functions]
dir = installed(Sets the directory to installed.)
clear = clear(No parameters for this but it will only work if the parameter is clear. Clears the console.)
say = text(Sends the text "text".)

[files]
advlua.zip = https://lpmlua.com/packages/advlua/advlua.zip(At the end of the parameters it says "advlua.zip" you put that before the equal sign. The parameter is the directory of file to install)```

## Extra info:
Files such as the test.mi file need mi.bat to be run as administrator so keep that in mind.

## Confused:
Send me a message on discord: slimesarecool#7034
