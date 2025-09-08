#!/bin/bash

sel=$(fuzzel -d -p 'Jméno souboru:  ')
file=~/.nix-profile/bin/$sel

# if [ $sel="^/home/libor/.nix-profile/bin/$" ]; then
#     notify-send -i data-error "Žádné jméno souboru" "Konec bez vytvoření souboru"
# else   
#     touch $file
#     chmod +x $file
#     echo "#!/bin/bash" > $file
#     vim $file
# fi

case $sel in
    "")
        notify-send -i data-error "Žádné jméno souboru" "Konec bez vytvoření souboru"
    ;;
    *)
        touch $file
        chmod +x $file
        echo "#!/bin/bash" > $file
        vim $file
    ;;
esac
