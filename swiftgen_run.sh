#!/bin/sh

export PATH="/usr/local/bin:/opt/homebrew/bin:$PATH"

swiftgenPath=$(which swiftgen)

if ! [ "${swiftgenPath}" = "" ]; 
then
    ${swiftgenPath}
else
    echo "error: Install swiftgen manualu or use bootstrap.sh or defaults write com.apple.dt.Xcode UseSanitizedBuildSystemEnvironment -bool NO"
fi