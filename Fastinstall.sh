#!/usr/bin/env bash
cd $HOME/stanly
rm -rf $HOME/.telegram-cli
install() {
rm -rf $HOME/.telegram-cli
sudo chmod +x tg
chmod +x stanly
chmod +x ts
./ts
}
if [ "$1" = "ins" ]; then
install
fi
chmod +x install.sh
lua start.lua
