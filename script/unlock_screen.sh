adb shell sendevent /dev/input/event1 3 0 3000
adb shell sendevent /dev/input/event1 3 1 2000

adb shell sendevent /dev/input/event1 1 330 1 #touch
adb shell sendevent /dev/input/event1 0 0 0       #it must have

adb shell sendevent /dev/input/event1 3 0 5000
adb shell sendevent /dev/input/event1 0 0 0

adb shell sendevent /dev/input/event1 1 330 0 #untouch
adb shell sendevent /dev/input/event1 0 0 0 #it must have
