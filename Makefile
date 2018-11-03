# Proposal makefile

CC=pdflatex
NAME=resume
COVER=cover
FLAGS= -output-directory build -jobname $(NAME) -file-line-error
COVER_FLAGS= -output-directory build -jobname $(COVER) -file-line-error
all: doc

doc:
	$(CC) $(FLAGS) main.tex
	$(CC) $(FLAGS) main.tex
	$(CC) $(COVER_FLAGS) cover-letter.tex
	$(CC) $(COVER_FLAGS) cover-letter.tex
	mv build/$(NAME).pdf .
	mv build/$(COVER).pdf .
