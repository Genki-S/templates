PRESENTATION = presentation.html
MARKDOWN = slides.md
SASSFILES = $(wildcard sass/*.scss)

all: STYLESHEETS $(PRESENTATION)

$(PRESENTATION): $(MARKDOWN)
	slidedown $< > $@

STYLESHEETS: $(SASSFILES)
	compass compile
	for f in *.css; do \
		mv $$f $${f%.css}.stylesheets; \
	done

