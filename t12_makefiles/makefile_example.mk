# comment character is # in Make
# automatic variables:

HTML_FILES=$(patsubst %.py, %_src.html, $(wildcard *.py))
#                                       ^- all possible files to check
#                           ^-- destination 
#                      ^--- source pattern

default: ca1.zip 

ca1.zip: $(wildcard *.py) help.md output.txt help.docx $(HTML_FILES)
	zip $@ $^

.PHONY: test
test: my_program.py
	@./$< 

output.txt: my_program.py $(wildcard *.py)
	./$< > $@

%_src.html: %.py
	pygmentize $< -o $@ -O style=colorful,linenos=1

help.docx: help.md
	pandoc -o $@ $^

