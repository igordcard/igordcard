:: F.E.A.R. low framerate workaround with Logitech hardware, by igordcard.
:: Official page URL: http://igordcard.blogspot.com/2013/01/sudden-fps-drop-in-fear-logitech.html
:: 2013/01/26

@echo off

devcon disable HID\VID_046D* &:: Disable all Logitech HID devices.
devcon enable HID_DEVICE_SYSTEM_MOUSE &:: The previous command disables too much and the mouse may stop working, but this line fixes it.
FEARMP.exe &:: Run the game!
devcon enable HID\VID_046D* &:: Enable everything back.
