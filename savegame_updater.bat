@ECHO Off
ECHO -------------------------------------------------------
ECHO - Welcome to the Dwarf Fortress Savegame RAW Updater. -
ECHO ---                                                 ---
ECHO -----  All credit for this stuff goes to Phoebus  -----
ECHO -------  We asked him first before we stole it  -------
ECHO -------------------------------------------------------
ECHO .
ECHO Press 'U' to Update your savegames, or press 'Q' to Quit.
CHOICE /C:qu /N > nul
if errorlevel 2 goto start
goto end

:update_savegame
if %1==data\save\current GOTO :eof
ECHO ------------------------------------------
ECHO Updating Savegame: %1
XCOPY raw "%1\raw" /c /v /q /i /s /e /y
GOTO :eof

:start
FOR /d %%a IN (data\save\*.*) DO CALL :update_savegame %%a

ECHO .
ECHO .
ECHO ---------------------
ECHO - Update Completed. -
ECHO ---------------------
PAUSE

:end