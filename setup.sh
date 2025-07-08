#!/bin/bash
ALIAS_URL="https://raw.githubusercontent.com/lixdroid-sys/Linux-WorkFlow/main/alias.sh"

# Pick shell
TARGET="$HOME/.bashrc"
[[ $SHELL == *"zsh" ]] && TARGET="$HOME/.zshrc"

# Backup
cp "$TARGET" "$TARGET.bak.$(date +%s)"

# Append
echo -e "\n# Gnome Workflow Aliases\n" >> "$TARGET"
curl -sSL "$ALIAS_URL" >> "$TARGET"

# Reload
source "$TARGET"

echo "[+] Aliases installed in $TARGET"
