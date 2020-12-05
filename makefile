all: READme.md

READme.md: guessinggame.sh
	echo "# Project title: Guessing game" > READme.md
	echo "**make** was run on:" >> READme.md
	date >> READme.md
	echo "" >> READme.md
	echo "Number of lines of code in guessinggame.sh:" >> READme.md
	cat guessinggame.sh | wc -l | bc >> READme.md

clean:
	rm READme.md
