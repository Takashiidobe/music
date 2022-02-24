all: music.csv _template.html
	mkdir -p site && pandoc music.csv -o site/index.html --template=_template.html
sort: music.csv
	head -1 music.csv > output.csv
	tail -n+2 music.csv | sort --field-separator=',' -k 1,1 >> output.csv
	mv output.csv music.csv
