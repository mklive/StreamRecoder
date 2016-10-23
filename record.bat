start "" /B "livestreamer.exe" --hls-timeout 300.0 -f -o mkstream-%APPVEYOR_BUILD_NUMBER%.ts http://www.hitbox.tv/MarcusKron 720p 
timeout /t 1600
IF ERRORLEVEL 0 Exit 1
TASKKILL /IM livestreamer.exe
