@echo off

set /p Build=<build.txt
set /a Build+=1
echo %Build% >build.txt

MSBuild.exe /restore ..\net\FlatBuffers\FlatBuffers.Core.csproj /p:Configuration=Release /p:Platform=AnyCPU /maxCpuCount

c:\work\nuget.exe pack -Version 1.12.0.%Build% FlatBuffers.NET-Tekla.nuspec
