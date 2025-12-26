paci() {
	pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S
}

pacf() {
	pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro pacman -Si
}

# Function to search and remove packages using pacman
pacd() {
	pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns
}

# Function to search and install packages using yay
yayi() {
	yay -Slq | fzf --multi --preview 'yay -Si {1}' | xargs -ro yay -S
}

yayf() {
	yay -Slq | fzf --multi --preview 'yay -Si {1}' | xargs -ro yay -Si
}

alias yayu='yay'

# Unfortunately you need sudo for pacman ;-;
alias paru='yay'
