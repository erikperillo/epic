NAME = plano_de_pesquisa
BIB = $(NAME).bib
TEX = $(NAME).tex

.PHONY: all clean

all: $(NAME)

$(NAME): $(TEX) $(BIB)
	pdflatex $(TEX)
	biber $(NAME)
	pdflatex $(TEX)

multicol: $(TEX) $(BIB)
	pdflatex "\def\multicol{1} \input{$(TEX)}"
	biber $(NAME)
	pdflatex "\def\multicol{1} \input{$(TEX)}"

clean:
	rm *.aux *.bbl *.bcf *.blg *.log *.xml	
