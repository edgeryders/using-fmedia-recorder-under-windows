@echo off

REM Detect OS Architecture and recored (x86 does not supports 48000 bit rate)

if  %PROCESSOR_ARCHITECTURE% == x86 (
fmedia --record -o %userprofile%\Documents\riot_recording\rec-$date-$time.wav --format=int24 --channels=mono --rate=44100
) else (
fmedia --record -o %userprofile%\Documents\riot_recording\rec-$date-$time.wav --format=int24 --channels=mono --rate=48000
)

ECHO.


REM will delay execution of the next command for (a little over) 5 seconds seconds (default interval between pings is 1 second, the last ping will add only a minimal number of milliseconds to the delay).
REM So always specify the number of seconds + 1 for the delay.

REM Pause for 5 second and exit because reorded file path will be shown after recording
ping 127.0.0.1 -n 6 > nul
