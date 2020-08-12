IF NOT DEFINED MINIMIZED SET MINIMIZED=1 && START "" /MIN "%~dpnx0" %* && EXIT

SET TARGETPATH=C:\Program Files (x86)\Google\Chrome
IF NOT EXIST "%TARGETPATH%" GOTO :ERROR
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --app=https://wire.my.to:444 --disable-web-security --enable-experimental-web-platform-features --user-data-dir="C:/VectorSetup/"
del /S /q C:\VectorSetup\*
GOTO :END

:ERROR
SET errorTitle=Vector Setup
SET errorBody=This app requires Google Chrome to be installed.
SET tmpError=%temp%\~tmpError.vbs
IF EXIST "%tmpError%" DEL /F /Q "%tmpError%"
ECHO msgbox "%errorBody%",0,"%errorTitle%">"%tmpError%"
WSCRIPT "%tmpError%"

:END
exit