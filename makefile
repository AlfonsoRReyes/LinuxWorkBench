
README.md:
	echo "Title of the project" > README.md
	echo "/n"
	echo `date` >> README.md
	echo "/n"
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
