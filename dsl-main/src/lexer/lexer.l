%{
#include "ast.hpp"
#include "parser.hpp"
%}

%%
[ \t\n]         ; // Skip whitespace
[0-9]+          { yylval.number = atoi(yytext); return TOKEN_NUMBER; }
[a-zA-Z_][a-zA-Z0-9_]* { yylval.string = strdup(yytext); return TOKEN_IDENTIFIER; }
"+"             { return TOKEN_PLUS; }
"-"             { return TOKEN_MINUS; }
"*"             { return TOKEN_MULTIPLY; }
"/"             { return TOKEN_DIVIDE; }
"="             { return TOKEN_ASSIGN; }
";"             { return TOKEN_SEMICOLON; }
"("             { return TOKEN_LPAREN; }
")"             { return TOKEN_RPAREN; }
.               { printf("Unknown token: %s\n", yytext); }
%%

int yywrap() {
    return 1;
}