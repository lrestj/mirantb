#!/bin/bash

sel=$(fuzzel -d -p 'Jméno souboru:  ')
file=~/.nix-profile/bin/$sel

# if [ $sel="" ]; then
#     notify-send -i data-error "Žádné jméno souboru" "Konec bez vytvoření souboru"
# else   
    touch $file
    chmod +x $file
    echo "#!/bin/bash" > $file
    vim $file
# fi
