### <div align="center"> 💻 My NixOS config 💻 </div>


##### ✌ Welcome to my repo. Feel free to look inside for an inspiration or just for fun. 
This is still work in progress.  
My last Hyprland config is saved under Hyprland tag commit.  
For now my primary focus is Sway WM.

## ⚙️ Init a git bare repo
```
git init --bare $HOME/.cfg.git
```

💬 Define an alias or add it to .bashrc and config.fish   
```
alias cfg='git --git-dir=$HOME/.cfg.git --work-tree=$HOME'
```

👍 And that’s it! You can add all kinds of files and directories in your repository.
```
cfg status
cfg commit -m "Some info"
```
## 📥 Restore your config
   

💬 Add your git bare repository to a .gitignore file.

```
echo ".cfg.git" >> .gitignore
```

💬 Clone your dotfiles into a git bare repository.

```
git clone --bare https://github.com/lrestj/nixos.git /home/libor/.cfg.git

git clone --bare https://gitlab.com/lrestj/nixos.git /home/libor/.cfg.git
```


💬 Checkout the contents of your bare repository to your $HOME directory.

```
git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME checkout -f
```

👍 Your set up is now complete again.

<div align="center"> 🔔&nbsp🔔&nbsp🔔&nbsp🔔&nbsp🔔 </div>
<div align="center"> 🇪 🇴 🇫 </div>
