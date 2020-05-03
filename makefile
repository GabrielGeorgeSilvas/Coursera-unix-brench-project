#FILE_DATE = $(shell echo "$(date)")

all: README.md
	
README.md:	
	
	echo "# Bash, Make, Git and GitHub made by Gabriel Silvas">README.md
	echo "$$(date)">>README.md
	echo "guessinggame.sh has $$(cat guessinggame.sh | wc -l))">>README.md
clean:
	rm README.md
