@echo off
echo c:\Android\android-sdk\tools\emulator.exe -avd Android22 -no-snapshot-load -no-snapshot-save
rem c:\Android\android-sdk\tools\emulator.exe -avd Android22
c:\Android\android-sdk\tools\emulator.exe -avd Android22 -no-snapshot-load -no-snapshot-save
goto end

:error
echo USAGE:androidEmulatorRun.bat (avd-name:Android22)

:end

