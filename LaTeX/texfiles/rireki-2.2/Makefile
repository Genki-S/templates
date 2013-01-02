PDF = resume.pdf
DVI = resume.dvi

all: $(PDF)

$(PDF): resume.tex resume.cls
	latexmk -pdfdvi $<
view: $(DVI)
	xdvi -s 3 $(DVI)
print: $(DVI)
	lpr -d $(DVI)
package: clean
	dir=`pwd`; name=`basename $$dir`; cd ..; tar czvf $$name.tar.gz $$name
clean:
	latexmk -c
