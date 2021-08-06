!/usr/bin/env bash

sudo -v

sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain alcr.ca.pem

cp ".{path,bash_prompt,exports,aliases,functions,extra}" "${HOME}"