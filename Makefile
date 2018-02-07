all: resume.pdf

resume.pdf: resume.tex resume.cls
	texi2pdf resume.tex && rm resume.log

lint:
	chktex resume.tex

clean:
	rm -f resume.log resume.pdf

deploy: resume.pdf
	scp resume.pdf connor.prussin.net:/srv/connor.prussin.net/resume.pdf
	ssh connor.prussin.net chmod go+r /srv/connor.prussin.net/resume.pdf
