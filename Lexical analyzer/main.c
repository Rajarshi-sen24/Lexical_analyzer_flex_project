#include <stdio.h>
#include <stdlib.h>

extern FILE* yyin;
extern int yylex();

int main(int argc, char* argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <input_file>\n", argv[0]);
        return 1;
    }

    FILE* input_file = fopen(argv[1], "r");
    if (!input_file) {
        fprintf(stderr, "Error opening input file.\n");
        return 1;
    }

    yyin = input_file;

    yylex();

    fclose(input_file);

    return 0;
}
