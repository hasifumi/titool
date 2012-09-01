@echo off
if "%1" == "" goto error
set cns_platform=android
set cns_type=project
set cns_dir=~/MyProject/
call :LCase %~1
echo %env%
set cns_id=com.hahahassy.%env%
echo titanium create --platform=%cns_platform%  --type=%cns_type% --dir=%cns_dir%  --name=%~1  --id=%cns_id%
titanium create --platform=%cns_platform%  --type=%cns_type% --dir=%cns_dir%  --name=%~1  --id=%cns_id%
goto end

:LCase
set env=%*
for %%i in (a b c d e f g h i j k l m n o p q r s t u v w x y z) do call set env=%%env:%%i=%%i%%
rem echo %env%
exit /B 0

:error
echo USAGE: ticreate.bat ProjectName (CONSTANT:android, project, ~/MyProject/, com.hahahassy.projectname)

:end 

