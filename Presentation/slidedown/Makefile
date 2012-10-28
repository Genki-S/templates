PRESENTATION = presentation.html
MARKDOWN = slides.md
SASSFILES = $(wildcard sass/*.scss)

all: STYLESHEETS $(PRESENTATION)

$(PRESENTATION): $(MARKDOWN)
	slidedown $< > $@_
	sed 's!<head>$$!&<meta charset="utf-8" />!' < $@_ > $@
	rm $@_

STYLESHEETS: $(SASSFILES)
	compass compile
	for f in *.css; do \
		mv $$f $${f%.css}.stylesheets; \
	done

# ==================================================
# Theme Specifics
# ==================================================
starrynight: all
	mv $(PRESENTATION) $(PRESENTATION)_
	sed 's!<body>$$!&<div id="background"></div><div id="midground"></div><div id="foreground"></div>!' < $(PRESENTATION)_ > $(PRESENTATION)
	rm $(PRESENTATION)_
