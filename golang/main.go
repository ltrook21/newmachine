package main

import (
	"fmt"
//	"io/ioutil"
	"os"
	"path/filepath"
)

const bashcontentToAdd = `
sudo echo "alias l=\"ls -lha\"" | tee -a ~/.bashrc
sudo echo "alias k=\"kubectl\"" | tee -a ~/.bashrc
sudo echo "alias kx=\"kubectx\"" | tee -a ~/.bashrc
sudo echo "alias mk=\"minikube\"" | tee -a ~/.bashrc
sudo echo "alias dk=\"docker\"" | tee -a ~/.bashrc
sudo echo "alias dkc=\"docker compose\"" | tee -a ~/.bashrc
sudo echo "alias nv=\"nvim\"" | tee -a ~/.bashrc


sudo echo "alias kgp=\"k get po\"" | tee -a ~/.bashrc
sudo echo "alias kgs=\"k get svc\"" | tee -a ~/.bashrc
sudo echo "alias kg=\"k get\"" | tee -a ~/.bashrc
sudo echo "alias kgd=\"k get deploy\"" | tee -a ~/.bashrc
sudo echo "alias kc=\"k create\"" | tee -a ~/.bashrc
sudo echo "alias kr=\"k run\"" | tee -a ~/.bashrc
sudo echo "alias ka=\"k apply -f \"" | tee -a ~/.bashrc
sudo echo "alias kpf=\"k port-forward\"" | tee -a ~/.bashrc
sudo echo "alias kds=\"k describe\"" | tee -a ~/.bashrc
sudo echo "alias kd=\"k delete\"" | tee -a ~/.bashrc
`



const zshcontentToAdd = `
sudo echo "alias k=\"kubectl\"" | tee -a ~/.zshrc
sudo echo "alias kx=\"kubectx\"" | tee -a ~/.zshrc
sudo echo "alias mk=\"minikube\"" | tee -a ~/.zshrc
sudo echo "alias dk=\"docker\"" | tee -a ~/.zshrc
sudo echo "alias dkc=\"docker compose\"" | tee -a ~/.zshrc
sudo echo "alias nv=\"nvim\"" | tee -a ~/.zshrc

# k8s

sudo echo "alias kg=\"k get\"" | tee -a ~/.zshrc
sudo echo "alias kgp=\"k get po\"" | tee -a ~/.zshrc
sudo echo "alias kgn=\"k get no\"" | tee -a ~/.zshrc
sudo echo "alias kgl=\"k get logs\"" | tee -a ~/.zshrc
sudo echo "alias kghpa=\"k get hpa\"" | tee -a ~/.zshrc
sudo echo "alias kgs=\"k get svc\"" | tee -a ~/.zshrc
sudo echo "alias kgd=\"k get deploy\"" | tee -a ~/.zshrc
sudo echo "alias kc=\"k create\"" | tee -a ~/.zshrc
sudo echo "alias kr=\"k run\"" | tee -a ~/.zshrc
sudo echo "alias ka=\"k apply -f \"" | tee -a ~/.zshrc
sudo echo "alias kpf=\"k port-forward\"" | tee -a ~/.zshrc
sudo echo "alias kds=\"k describe\"" | tee -a ~/.zshrc
sudo echo "alias kd=\"k delete\"" | tee -a ~/.zshrc
sudo echo "alias kns=\"kubens\"" | tee -a ~/.zshrc


# python
sudo echo "alias venv=\"source venv/bin/activate\"" | tee -a ~/.zshrc
sudo echo "alias pmr=\"python manage.py runserver\"" | tee -a ~/.zshrc
sudo echo "alias f=\"flask\"" | tee -a ~/.zshrc
sudo echo "alias ve=\"source venv/bin/activate\"" | tee -a ~/.zshrc
sudo echo "alias p=\"python\"" | tee -a ~/.zshrc

# git
sudo echo "alias gtc=\"git commit -a\"" | tee -a ~/.zshrc
sudo echo "alias gtp=\"git push\"" | tee -a ~/.zshrc
sudo echo "alias gtpu=\"git pull\"" | tee -a ~/.zshrc


# vpn
sudo echo "alias pvc=\"protonvpn-cli\"" | tee -a ~/.zshrc
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



