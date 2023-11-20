package main

import (
	"fmt"
	//	"io/ioutil"
	"os"
	"path/filepath"
)

const bashcontentToAdd = `
alias l="ls -lha"
alias k="kubectl"
alias kx="kubectx"
alias mk="minikube"
alias dk="docker"
alias dkc="docker compose"
alias nv="nvim"


alias kgp="k get po"
alias kgs="k get svc"
alias kg="k get"
alias kgd="k get deploy"
alias kc="k create"
alias kr="k run"
alias ka="k apply -f "
alias kpf="k port-forward"
alias kds="k describe"
alias kd="k delete"

# python
alias venv="source venv/bin/activate"
alias pmr="python manage.py runserver"
alias f="flask"
alias ve="source venv/bin/activate"
alias p="python"

# git
alias gtc="git commit -a"
alias gtp="git push"
alias gtpu="git pull"


# vpn
alias pvc="protonvpn-cli"



# Ranger
## Important! Do not delete for nvim config!
export VIM="/usr/share/nvim"
export VIMRUNTIME="/usr/share/nvim/runtime"

alias r="ranger-cd"

function ranger-cd {
    tempfile=$(mktemp)
    ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
        cd -- "$(cat "$tempfile")"
    fi
    rm -f -- "$tempfile"
}
export EDITOR=nvim

`

const zshcontentToAdd1 = `
alias k="kubectl"
alias kx="kubectx"
alias mk="minikube"
alias dk="docker"
alias dkc="docker compose"
alias nv="nvim"

# k8s

alias kg="k get"
alias kgp="k get po"
alias kgn="k get no"
alias kgl="k get logs"
alias kghpa="k get hpa"
alias kgs="k get svc"
alias kgd="k get deploy"
alias kc="k create"
alias kr="k run"
alias ka="k apply -f "
alias kpf="k port-forward"
alias kds="k describe"
alias kd="k delete"
alias kns="kubens"


# python
alias venv="source venv/bin/activate"
alias pmr="python manage.py runserver"
alias f="flask"
alias ve="source venv/bin/activate"
alias p="python"

# git
alias gtc="git commit -a"
alias gtp="git push"
alias gtpu="git pull"


# vpn
alias pvc="protonvpn-cli"

# Ranger
## Important! Do not delete for nvim config!
export VIM="/usr/share/nvim"
export VIMRUNTIME="/usr/share/nvim/runtime"

alias r="ranger-cd"

function ranger-cd {
    tempfile=$(mktemp)
    ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `

const pwd2 = "`pwd`" 
const zshcontentToAdd3 `)" ]; then
        cd -- "$(cat "$tempfile")"
    fi
    rm -f -- "$tempfile"
}
export EDITOR=nvim
`
const zshcontentToAdd = zshcontentToAdd1 + pwd2 + zshcontentToAdd3 
func appendToFile(path string, content string) error {
	f, err := os.OpenFile(path, os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		return err
	}
	defer f.Close()

	if _, err := f.WriteString(content); err != nil {
		return err
	}
	return nil
}

func main() {
	home, err := os.UserHomeDir()
	if err != nil {
		fmt.Println("Error:", err)
		return
	}

	zshrcPath := filepath.Join(home, ".zshrc")
	bashrcPath := filepath.Join(home, ".bashrc")

	// Check if ~/.zshrc exists
	if _, err := os.Stat(zshrcPath); !os.IsNotExist(err) {
		// Append to ~/.zshrc
		if err := appendToFile(zshrcPath, zshcontentToAdd); err != nil {
			fmt.Println("Error appending to .zshrc:", err)
			return
		}
		fmt.Println("Appended content to .zshrc!")
	} else {
		// Append to ~/.bashrc
		if err := appendToFile(bashrcPath, bashcontentToAdd); err != nil {
			fmt.Println("Error appending to .bashrc:", err)
			return
		}
		fmt.Println("Appended content to .bashrc!")
	}
}
