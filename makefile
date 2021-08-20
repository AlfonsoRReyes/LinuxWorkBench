all: clean README.md

README.md:
	echo "Title of the project" > README.md
	echo -e "\n"
	echo `date` >> README.md
	echo -e "\n"
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
