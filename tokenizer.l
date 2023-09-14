%{
#include <stdio.h>
%}

%%

[ \t\n]+   /* Skip whitespace and newlines */
.          /* Match any other character (non-whitespace) */

%%
int yywrap(){}
int main() {
    yyin = stdin;  // Set input to stdin (standard input)

    while (yylex() != 0) {
        // yytext contains the matched word
        printf("%s\n", yytext);
    }

    return 0;
}
