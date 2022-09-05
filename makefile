readme.txt : guess_code.sh
	echo "## Guessing Game" > README.md
	date "+MAKE FILE RUN ON%nDATE: %Y-%m-%d%n&%nTIME: %H:%M:%S" >> README.md
	echo "No of lines in the code: " >> README.md
	wc -l guess_code.sh|egrep -o "[0-9]+" >> README.md

