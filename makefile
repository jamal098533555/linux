all: README.md

README.md: guessinggame.sh
	echo "# Projet Guessing Game" > README.md
	echo "\n*Date et heure de génération :* $$(date)" >> README.md
	echo "\n*Nombre de lignes de code dans guessinggame.sh :* $$(wc -l < guessinggame.sh)" >> README.md
