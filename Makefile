
all: slides

slides: slides.md
	pandoc -t markdown_github --to=beamer --standalone --output=$@.pdf --slide-level=2 $<
