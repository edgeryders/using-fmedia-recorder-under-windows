@echo off

fmedia --record -o %userprofile%\Documents\riot_recording\rec-$date-$time.flac

ECHO.

ECHO Converting...

REM Get last created file for converting into mp3

for /f %%i in ('dir %userprofile%\Documents\riot_recording /b/a-d/od/t:c') do set LAST_REC=%%~ni

REM Convert into mp3 because most of the voice messenger suppoort it

fmedia %userprofile%\Documents\riot_recording\%LAST_REC%.flac --out=%userprofile%\Documents\riot_recording\%LAST_REC%.mp3

REM Delete previous recorded file which was in "flac" format. we donot need that anymore because we have new in mp3 format

DEL %userprofile%\Documents\riot_recording\%LAST_REC%.flac

REM will delay execution of the next command for (a little over) 5 seconds seconds (default interval between pings is 1 second, the last ping will add only a minimal number of milliseconds to the delay).
REM So always specify the number of seconds + 1 for the delay.
REM Pause for 5 second and exit because reorded file path will be shown after recording

ping 127.0.0.1 -n 6 > nul
start %userprofile%\Documents\riot_recording
