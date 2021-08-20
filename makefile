all: clean README.md

README.md:
	@echo "Assignment: Bash, Make, Git, and GitHub\n" > README.md
	@echo `date` >> README.md
	@echo "   \n"
	@wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
