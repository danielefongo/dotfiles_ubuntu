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
sudo apt-get install pidof -y
sudo apt-get install htop -y
sudo apt-get install httpie -y
sudo apt-get install fzf -y
sudo apt-get install gpg -y
sudo apt-get install cloc -y

# asdf
sudo apt-get install build-essential automake autoconf libncurses5-dev libssl-dev libffi-dev zlib1g-dev -y

source asdf/asdf.sh
asdf plugin add erlang
asdf plugin add elixir
asdf plugin add elm
asdf plugin add nodejs
asdf plugin add python
asdf plugin add rust
asdf install