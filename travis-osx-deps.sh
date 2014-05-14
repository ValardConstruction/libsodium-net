#!/bin/bash
set -ev

MONO_VER=3.4.0

brew update
brew install cmake

wget "http://download.mono-project.com/archive/${MONO_VER}/macos-10-x86/MonoFramework-MDK-${MONO_VER}.macos10.xamarin.x86.pkg"
sudo installer -pkg "MonoFramework-MDK-${MONO_VER}.macos10.xamarin.x86.pkg" -target /
export MONO_PATH="/Library/Frameworks/Mono.framework/Libraries/mono/4.0/"
