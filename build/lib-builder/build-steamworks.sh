#!/bin/sh

git clone https://github.com/Yellow-Dog-Man/Steamworks.NET steamworksnet

cd steamworksnet/Standalone

sed "s/<PlatformTarget>x86<\/PlatformTarget>/<PlatformTarget>anycpu<\/PlatformTarget>/g" *.csproj -i

dotnet build Steamworks.NET.Standard.sln -p:TargetFramework="netstandard2.1" -p:Configuration="OSX-Linux" -p:Platform="x86"

ls

cp ./bin/x86/OSX-Linux/netstandard2.1/*.dll /build/output -r

