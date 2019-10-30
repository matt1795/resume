cmake_minimum_required(VERSION 3.2)
project(resume NONE)

find_package(LATEX COMPONENTS PDFLATEX BIBTEX)
include(UseLATEX.cmake)

add_latex_document(test.tex)
