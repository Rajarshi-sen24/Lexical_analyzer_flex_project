%{
#include <stdio.h>
#include <string.h>
%}

%option noyywrap

%%
"if"    { printf("Keywords: if\n"); }
"then"  { printf("Keywords: then\n"); }
"also"  { printf("Keywords: also\n"); }
"int"   { printf("Keywords: int\n"); }
"char"  { printf("Keywords: char\n"); }
"main"  { printf("Keywords: main\n"); }
"return" { printf("Keywords: return\n"); }

">"     { printf("Relational Operators: %s\n", yytext); }
"<"     { printf("Relational Operators: %s\n", yytext); }
">="    { printf("Relational Operators: %s\n", yytext); }
"<="    { printf("Relational Operators: %s\n", yytext); }
"=="    { printf("Relational Operators: %s\n", yytext); }

[+\-*/]  { printf("Arithmetic Operators: %s\n", yytext); }
"++"    { printf("Arithmetic Operators: %s\n", yytext); }
"--"    { printf("Arithmetic Operators: %s\n", yytext); }

"="     { printf("Assignment Operators: %s\n", yytext); }
"+="    { printf("Assignment Operators: %s\n", yytext); }
"-="    { printf("Assignment Operators: %s\n", yytext); }
"*="    { printf("Assignment Operators: %s\n", yytext); }

"&&"    { printf("Logical Operators: %s\n", yytext); }
"||"    { printf("Logical Operators: %s\n", yytext); }
"!"     { printf("Logical Operators: %s\n", yytext); }

[0-9]+(\.[0-9]+)? { printf("Valid Numbers: %s\n", yytext); }
[a-zA-Z_][a-zA-Z_0-9]* { printf("Valid Identifiers: %s\n", yytext);}
[a-zA-Z_][a-zA-Z_0-9]*\( { printf("Function Name: %s)\n", yytext); }

[{}[\],;().] { printf("Other Symbols: %s\n", yytext); }
\".*?\"   { printf("String: %s\n", yytext); }

[ \t\n]  ; // skip whitespace

%%


