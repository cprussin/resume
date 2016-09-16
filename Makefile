all: resume.pdf

resume.pdf: resume.tex resume.cls
	texi2pdf resume.tex && rm resume.log

lint:
	chktex resume.tex

clean:
	rm -f resume.log resume.pdf
