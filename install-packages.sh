log_file=~/install_progress_log.txt

sudo apt -y install zsh
if type -p zsh > /dev/null; then
    echo "zsh Installed" >> $log_file
else
    echo "zsh FAILED TO INSTALL!!!" >> $log_file
fi

# Install oh my posh prompt
curl -s https://ohmyposh.dev/install.sh | bash -s

#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#sudo apt-get install zsh-syntax-highlighting

# ---
# Install git-completion and git-prompt
# ---
#cd ~/
#curl -OL https://github.com/git/git/raw/master/contrib/completion/git-completion.zsh
#mv ~/git-completion.zsh ~/.git-completion.zsh
#curl https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
#echo "git-completion and git-prompt Installed and Configured" >> $log_file

sudo apt-get -y install python3-pip
if type -p pip > /dev/null; then
    echo "pip Installed" >> $log_file
else
    echo "pip FAILED TO INSTALL!!!" >> $log_file
fi

#sudo apt-get -y install bpython
#if type -p bpython > /dev/null; then
#    echo "bpython Installed" >> $log_file
#else
#    echo "bpython FAILED TO INSTALL!!!" >> $log_file
#fi

#sudo apt-get -y install bpython3
#if type -p bpython3 > /dev/null; then
#    echo "bpython3 Installed" >> $log_file
#else
#    echo "bpython3 FAILED TO INSTALL!!!" >> $log_file
#fi

sudo apt install unzip fontconfig fzf zoxide tmux

# Fonts
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip
cd ~/.local/share/fonts
unzip FiraCode.zip
rm FiraCode.zip
fc-cache -frv

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Need to add cargo to PATH before running this
cargo install git-delta

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

sudo snap install helm --classic

# Github CLI
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
    && sudo mkdir -p -m 755 /etc/apt/keyrings \
    && out=$(mktemp) && wget -nv -O$out https://cli.github.com/packages/githubcli-archive-keyring.gpg \
    && cat $out | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
    && sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
    && sudo apt update \
    && sudo apt install gh -y


echo -e "\n====== Summary ======\n"
cat $log_file

rm $log_file

