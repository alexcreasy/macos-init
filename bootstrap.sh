#!/usr/bin/env bash

cp .{path,bash_profile,bash_prompt,exports,aliases,functions,extra} ${HOME} 2>/dev/null

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update && brew bundle install

./macos-config.sh

sudo -v

sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain alcr.ca.pem