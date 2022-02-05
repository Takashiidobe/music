all: music.csv _template.html
	mkdir site && pandoc music.csv -o site/index.html --template=_template.html
