{ config, pkgs, inputs, pkgsStable, ... }:

{

  imports = [ 
      # ./overlay.nix
      ./swayosd.nix
  ]; 
  
  fonts.packages = with pkgs; [
      font-awesome
      corefonts vista-fonts
      noto-fonts
      nerd-fonts.hack
      jetbrains-mono
      nerd-fonts.symbols-only
  ];
  
  _module.args.pkgsStable = import inputs.nixpkgs-stable {
      inherit (pkgs.stdenv.hostPlatform) system;
      inherit (config.nixpkgs) config;
    };

    environment.systemPackages =
        (with pkgs; [
            banana-cursor
            baobab
            bemoji
            bibata-cursors
            brave
            brightnessctl
            btop
            cliphist
            clipse
            dconf-editor
            efibootmgr
            eog
            evince
            exfatprogs
            fastfetch
            file-roller
            fish
            font-manager
            foot
            fuzzel
            fzf
            geany
            glib util-linux
            glxinfo
            gnome-calculator
            gthumb
            hunspellDicts.cs_CZ
            hunspellDicts.en_US
            jq
            kdePackages.breeze-icons
            kdePackages.qt6ct
            kdePackages.qtsvg
            kdePackages.qtwayland
            killall
            kitty
            libnotify
            libreoffice-fresh
            libva-utils
            lshw
            lxqt.lxqt-policykit
            mako
            mpv
            networkmanagerapplet
            nwg-look
            pamixer
            papirus-icon-theme
            pavucontrol
            pdfarranger
            rclone
            reaper  
            reaper-reapack-extension
            reaper-sws-extension
            ripgrep
            simple-scan
            slurp
            swaybg
            tmux
            udiskie
            ueberzugpp
            unzip
            vim-full
            vlc
            waybar
            waypaper
            wget
            whitesur-icon-theme
            wl-clipboard
            wlogout
            wlsunset
            xdg-desktop-portal-gtk
            xdg-user-dirs
            xdg-utils
            xnviewmp
            xorg.xeyes
            xournalpp
            yazi
            ytdownloader
            zip
            p7zip
            (pkgs.writeScriptBin "sct" ''
                #!/bin/sh
                killall wlsunset &> /dev/null;
                if [ $# -eq 1 ]; then
                    temphigh=$(( $1 + 1 ))
                    templow=$1
                    wlsunset -t $templow -T $temphigh &> /dev/null &
                else
                    killall wlsunset &> /dev/null;
                fi
            '')
            ])

        ++

        (with pkgsStable; [
            # vim-full
        ]);
  
  programs = {
      xfconf.enable = true;
      dconf.enable = true;  
      gnome-disks.enable = true;
      thunar = {
          enable = true;
          plugins = with pkgs.xfce; [ 
              thunar-archive-plugin
              thunar-volman
          ];
      };
      sway = {
          enable = true;
          wrapperFeatures.gtk = true;
          xwayland.enable = true;
          extraPackages = with pkgs; [
              grim
              swaylock
              swayidle
              sway-contrib.grimshot
          ];
      };
      git = {
          enable = true;
          config = {
              safe.directory = "/home/libor/.dotfiles";
              init = {
                  defaultBranch = "main";
                  userName  = "libor";
                  userEmail = "rest@seznam.cz";
              };
          };
      };
  };

}

#####  END OF FILE  #####
