@ECHO OFF

REM Developed by ANU
REM http://github.com/anuzement

color 0A


REM Moving fmedia to root c: directory requires administraor privilage

net session >nul 2>&1
if %errorLevel% NEQ 0 (
ECHO.
ECHO This Command requires administrator privilege
ECHO.
ECHO Please open this file as administartor
ECHO.
ECHO To open as administrator
ECHO                          Right click on file -^> Open as Administrator
PAUSE>NUL
EXIT
)

ECHO ----------------------------------------------------------------------
ECHO ----------------------------------------------------------------------
ECHO.
ECHO This programs installs fmedia ( Adds environment variable to your system.)
ECHO.
ECHO A popular CLI based programs for playing/converting/recording etc
ECHO.
ECHO Developed By Anu (easy installation guide for riot messaging)
ECHO.
ECHO ---------------------------------------------------------------------
ECHO ---------------------------------------------------------------------
timeout 8 >NUL
CLS
ECHO Installing. Please wait....
set path=%userprofile%\Downloads
IF EXIST %path%\fmedia.exe (
MOVE %path%\fmedia c:\
)
IF EXIST c:\fmedia\fmedia.exe (
ECHO.
ECHO Adding Envoronment variable to your system
ECHO.
timeout 1 >nul
ECHO .
timeout 1 >nul
ECHO .
timeout 1 >nul
ECHO .
timeout 1 >nul

cd c:\fmedia
fmedia.exe --install
ECHO Congrats...................
ECHO.
ECHO FMEDIA installed...........
pause

) else GOTO NoFileFound
EXIT

:NoFileFound
CLS
ECHO fmedia.exe not found any of your folder
ECHO.
ECHO Please place your extracted "fmedia" folder inside your profile
ECHO "Downloads" or "C:"
PAUSE>NUL
EXIT


pause>nul
