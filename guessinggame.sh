function guess_files {
    local file_count=$(ls -1 | wc -l)
    echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
    while true; do
        read -p "Votre réponse : " user_guess
        if [[ $user_guess -eq $file_count ]]; then
            echo "Félicitations ! Vous avez trouvé la bonne réponse."
            break
        elif [[ $user_guess -lt $file_count ]]; then
            echo "Trop bas, essayez à nouveau."
        else
            echo "Trop haut, essayez à nouveau."
        fi
    done
}

guess_files
