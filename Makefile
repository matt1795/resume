# Proposal makefile

CC=pdflatex
NAME=resume
FLAGS= -output-directory build -jobname $(NAME) -file-line-error

all: doc

doc:
	$(CC) $(FLAGS) main.tex
	$(CC) $(FLAGS) main.tex
	mv build/$(NAME).pdf .
