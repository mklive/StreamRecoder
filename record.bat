start "" /B "livestreamer.exe" --hls-timeout 300.0 -f -o mkstream-%APPVEYOR_BUILD_NUMBER%.ts http://www.hitbox.tv/sscaitournament 720p
IF ERRORLEVEL 0 Exit 1
timeout /t 1600
TASKKILL /IM livestreamer.exe
