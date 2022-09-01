sudo apt-get update

# terminal
sudo apt-get install zsh -y
sudo chsh -s $(which zsh) $(whoami)

sudo apt-get install vim -y
sudo apt-get install curl -y
sudo apt-get install hub -y
sudo apt-get install tig -y
sudo apt-get install delta -y
sudo apt-get install autojump -y
sudo apt-get install ripgrep -y
sudo apt-get install tree -y
sudo apt-get install bat -y
sudo apt-get install tldr -y
sudo apt-get install jq -y
sudo apt-get install ncdu -y
sudo apt-get install htop -y
sudo apt-get install httpie -y
sudo apt-get install fzf -y
sudo apt-get install gpg -y
sudo apt-get install cloc -y

# asdf
sudo apt-get install build-essential automake autoconf libncurses5-dev libssl-dev libffi-dev zlib1g-dev -y

source dots/asdf/asdf.sh
asdf plugin add erlang
asdf plugin add elixir
asdf plugin add elm
asdf plugin add nodejs
asdf plugin add python
asdf plugin add rust
asdf install

# docker
sudo apt-get install ca-certificates curl gnupg lsb-release -y
sudo mkdir -p /etc/apt/keyrings
if ! [[ -f /etc/apt/keyrings/docker.gpg ]]; then
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
fi
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
if [[ -z "$(groups | grep docker)" ]] ; then
  sudo groupadd docker
  sudo usermod -aG docker $USER
fi

# emacs
sudo apt-get install emacs cmake libtool-bin -y
$HOME/.emacs.d/bin/doom install --force
