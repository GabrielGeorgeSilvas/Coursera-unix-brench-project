#!usr/bin/env bash
all: README.md

README.md:
	echo '$(date)' > README.md
	echo "# Bash, Make, Git and GitHub made by Gabriel Silvas" >> README.md
clean:
	rm README.md
