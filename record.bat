start "" /B "livestreamer.exe" --hls-timeout 300.0 -f -o mkstream-part2-%APPVEYOR_BUILD_NUMBER%.ts http://www.hitbox.tv/MarcusKron 720p
timeout /t 1600
TASKKILL /IM livestreamer.exe /F
