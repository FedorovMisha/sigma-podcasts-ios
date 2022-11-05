#!/bin/sh

echo "
______             _       _                   
| ___ \           | |     | |                  
| |_/ / ___   ___ | |_ ___| |_ _ __ __ _ _ __  
| ___ \/ _ \ / _ \| __/ __| __| '__/ _\` | '_ \ 
| |_/ / (_) | (_) | |_\__ \ |_| | | (_| | |_) |
\____/ \___/ \___/ \__|___/\__|_|  \__,_| .__/ 
                                        | |    
                                        |_|    
"

if ! command -v swiftgen &> /dev/null; then
    brew install swiftgen
else
    echo swiftgen: exists
fi

# Добавить строки для добавления swiftgen в PATH