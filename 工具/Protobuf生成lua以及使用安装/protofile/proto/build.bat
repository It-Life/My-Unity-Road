@echo off
set FolderName=%cd%
for /f "delims=\" %%a in ('dir  /b  "%FolderName%\*.proto"') do (
..\proto\protoc.exe --proto_path=..\proto\   --cpp_out=..\out\  ..\proto\%%a
)
set FolderName=%cd%/CenterServer
for /f "delims=\" %%a in ('dir  /b  "%FolderName%\*.proto"') do (
..\proto\protoc.exe --proto_path=..\proto\  --cpp_out=..\out\   ..\proto\CenterServer\%%a
)
set FolderName=%cd%/FrontServer
for /f "delims=\" %%a in ('dir  /b  "%FolderName%\*.proto"') do (
..\proto\protoc.exe --proto_path=..\proto\  --cpp_out=..\out\   ..\proto\FrontServer\%%a
)
set FolderName=%cd%/Game
for /f "delims=\" %%a in ('dir  /b  "%FolderName%\*.proto"') do (
..\proto\protoc.exe --proto_path=..\proto\  --cpp_out=..\out\   ..\proto\Game\%%a
)
set FolderName=%cd%/Plaza
for /f "delims=\" %%a in ('dir  /b  "%FolderName%\*.proto"') do (
 ..\proto\protoc.exe --proto_path=..\proto\  --cpp_out=..\out\   ..\proto\Plaza\%%a
)
set FolderName=%cd%/Room
for /f "delims=\" %%a in ('dir  /b  "%FolderName%\*.proto"') do (
 ..\proto\protoc.exe --proto_path=..\proto\  --cpp_out=..\out\   ..\proto\Room\%%a
)

set FolderName=%cd%/Game/JCFish
for /f "delims=\" %%a in ('dir  /b  "%FolderName%\*.proto"') do (
 ..\proto\protoc.exe --proto_path=..\proto\  --cpp_out=..\out\   ..\proto\Game\JCFish\%%a
)
set FolderName=%cd%/Game/JSS
for /f "delims=\" %%a in ('dir  /b  "%FolderName%\*.proto"') do (
 ..\proto\protoc.exe --proto_path=..\proto\  --cpp_out=..\out\   ..\proto\Game\JSS\%%a
)
set FolderName=%cd%/Game/FireSK
for /f "delims=\" %%a in ('dir  /b  "%FolderName%\*.proto"') do (
 ..\proto\protoc.exe --proto_path=..\proto\  --cpp_out=..\out\   ..\proto\Game\FireSK\%%a
)
set FolderName=%cd%/Game/HKFive
for /f "delims=\" %%a in ('dir  /b  "%FolderName%\*.proto"') do (
 ..\proto\protoc.exe --proto_path=..\proto\  --cpp_out=..\out\   ..\proto\Game\HKFive\%%a
)
set FolderName=%cd%/Game/OxDz
for /f "delims=\" %%a in ('dir  /b  "%FolderName%\*.proto"') do (
 ..\proto\protoc.exe  --proto_path=..\proto\  --cpp_out=..\out\   ..\proto\Game\OxDz\%%a
)
pause