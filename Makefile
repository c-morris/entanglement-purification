
all:distil

distil: distil.md
	pandoc -t markdown_github --to=beamer --standalone --output=$@.pdf --slide-level=2 $<
slides: slides.md
	pandoc -t markdown_github --to=beamer --standalone --output=$@.pdf --slide-level=2 $<
testqkd: 
	pandoc qkd.md --slide-level 2 -t beamer -o test.qkd.tex -s
testslides: 
	pandoc slides.md --slide-level 2 -t beamer -o test.slides.tex -s
