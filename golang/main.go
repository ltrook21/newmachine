package main

import (
	"fmt"
	//	"io/ioutil"
	"os"
	"path/filepath"
)

const bashcontentToAdd = `
export alias l="ls -lha"
export alias k="kubectl"
export alias kx="kubectx"
export alias mk="minikube"
export alias dk="docker"
export alias dkc="docker compose"
export alias nv="nvim"


export alias kgp="k get po"
export alias kgs="k get svc"
export alias kg="k get"
export alias kgd="k get deploy"
export alias kc="k create"
export alias kr="k run"
export alias ka="k apply -f "
export alias kpf="k port-forward"
export alias kds="k describe"
export alias kd="k delete"
`

const zshcontentToAdd = `
export alias k="kubectl"
export alias kx="kubectx"
export alias mk="minikube"
export alias dk="docker"
export alias dkc="docker compose"
export alias nv="nvim"

# k8s

export alias kg="k get"
export alias kgp="k get po"
export alias kgn="k get no"
export alias kgl="k get logs"
export alias kghpa="k get hpa"
export alias kgs="k get svc"
export alias kgd="k get deploy"
export alias kc="k create"
export alias kr="k run"
export alias ka="k apply -f "
export alias kpf="k port-forward"
export alias kds="k describe"
export alias kd="k delete"
export alias kns="kubens"


# python
export alias venv="source venv/bin/activate"
export alias pmr="python manage.py runserver"
export alias f="flask"
export alias ve="source venv/bin/activate"
export alias p="python"

# git
export alias gtc="git commit -a"
export alias gtp="git push"
export alias gtpu="git pull"


# vpn
export alias pvc="protonvpn-cli"
`

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
