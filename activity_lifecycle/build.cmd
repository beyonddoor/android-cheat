
set _ns=com.cirosantilli.android_cheat.activity_lifecycle
set mode=release

if "%1" == "" ( 
    set NDK_PROJECT_PATH=%~dp0
    ::ndk-build NDK_APPLICATION_MK=.\jni\Application.mk
    ant %mode%
    goto :eof
)

adb shell pm uninstall %_ns%
adb install bin\AndroidDebugActivityLifecycle-%mode%.apk
adb shell am start -D -n %_ns%/.Main
