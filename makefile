all: clean README.md

README.md:
	echo -e "Assignment: Bash, Make, Git, and GitHub\n" > README.md
	echo `date` >> README.md
	echo -e "  \\n"
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
