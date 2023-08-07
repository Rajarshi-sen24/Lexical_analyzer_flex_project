# Lexical_analyzer_flex_project
# A lexical analyzer using flex

First Install flex on your PC

Then go to the PC folder you want to run the project

Type 'cmd' on address bar

The write these following commmand

# flex filename.l(here lexer.l)

# gcc -c lex.yy.c

# gcc -c main.c

# gcc -o lexer lex.yy.o main.o

# .\lexer filename.c(here input.c)

# Remember all ".o" file will be created automatically once you run first 3 Command lines
