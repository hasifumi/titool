@echo off
if "%1" == "-h" goto help 
set cns_platform=android
echo titanium run ./ --platform=%cns_platform%  --android_sdk=c:/Android/android-sdk
titanium run ./ --platform=%cns_platform%  --android_sdk=c:\Android\android-sdk
goto end

:help
echo USAGE: tirun_android.bat (CONSTANT:"./", android)

:end 

