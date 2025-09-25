code-server --list-extensions > extensions.txt

cp ~/.local/share/code-server/User/settings.json /home/coder/project/init/
cp ~/.local/share/code-server/User/keybindings.json /home/coder/project/init/ || true