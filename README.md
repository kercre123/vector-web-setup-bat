# vector-web-setup-bat

This git contains resources to get the Vector Web Setup running reliably. This runs Google Chrome with the correct args

## Prerequisites

Google Chrome
PC with BLE (Bluetooth)

## Windows

Clone this git `git clone https://github.com/kercre123/vector-web-setup-bat.git` and run the bat file.

## macOS

Open a terminal and run `open -a /Applications/Google\ Chrome .app --args --app=https://wire.my.to:444 --disable-web-security --enable-experimental-web-platform-features --user-data-dir=/tmp/VectorSetup`. If it asks to be default browser, uncheck it and press X.

## Linux

Open a terminal and run `google-chrome --args --app=https://wire.my.to:444 --disable-web-security --enable-experimental-web-platform-features --user-data-dir=/tmp/VectorSetup`. If it asks to be default browser, uncheck it and press X.
