
set _ns=com.cirosantilli.android_cheat.button

if "%1" == "" ( 
    set NDK_PROJECT_PATH=%~dp0
    ndk-build NDK_APPLICATION_MK=.\jni\Application.mk
    ant debug
    goto :eof
)

adb shell pm uninstall %_ns%
adb install bin\AndroidDebugButton-debug.apk
adb shell am start -n %_ns%/.Main
