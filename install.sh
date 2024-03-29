# update
sudo apt-get update

# terminal
sudo apt-get install zsh -y
sudo chsh -s $(which zsh) $(whoami)

sudo apt-get install vim -y
sudo apt-get install neovim -y
sudo apt-get install curl -y
sudo apt-get install hub -y
sudo apt-get install tig -y
sudo apt-get install autojump -y
sudo apt-get install ripgrep -y
sudo apt-get install tree -y
sudo apt-get install bat -y
sudo apt-get install tldr -y
sudo apt-get install jq -y
sudo apt-get install ncdu -y
sudo apt-get install btop -y
sudo apt-get install httpie -y
sudo apt-get install fzf -y
sudo apt-get install gpg -y
sudo apt-get install cloc -y
sudo apt-get install tmux -y
curl https://mise.jdx.dev/install.sh | sh

# utils
sudo apt-get install i3 -y
sudo apt-get install i3lock-fancy -y
sudo apt-get install rofi -y
sudo apt-get install polybar -y
sudo apt-get install flameshot -y
sudo apt-get install alacritty -y
sudo apt-get install feh -y
sudo apt-get install picom -y

# rtx deps
sudo apt-get install build-essential automake autoconf libncurses5-dev libssl-dev libffi-dev zlib1g-dev -y

# docker
sudo apt-get install ca-certificates curl gnupg lsb-release -y
sudo mkdir -p /etc/apt/keyrings
if ! [[ -f /etc/apt/keyrings/docker.gpg ]]; then
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
fi
echo \
	"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
if [[ -z "$(groups | grep docker)" ]]; then
	sudo groupadd docker
	sudo usermod -aG docker $USER
fi

./dots/scripts/dots_setup
