#!/usr/bin/env bash

# sudo xcodebuild -license
xcodebuild --install

which brew >/dev/null 2>&1
if [ $? -ne 0 ];
then
  echo "not found command brew"
  echo "install brew"
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

which ansible >/dev/null 2>&1
if [ $? -ne 0 ];
then
  echo "not found command ansible"
  echo "install ansible"
  brew install ansible
fi
