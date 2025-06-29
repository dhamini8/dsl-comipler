%{
#include "ast.hpp"
#include <stdio.h>
#include <memory>

extern int yylex();
void yyerror(const char *s) { printf("ERROR: %s\n", s); }

// Add this declaration
extern AST::Node* root;

using namespace AST;
%}

%union {
    int number;
    char* string;
    AST::Expression* expr;  // Fix: Use fully qualified name AST::Expression
}

%token <number> TOKEN_NUMBER
%token <string> TOKEN_IDENTIFIER
%token TOKEN_PLUS TOKEN_MINUS TOKEN_MULTIPLY TOKEN_DIVIDE
%token TOKEN_ASSIGN TOKEN_SEMICOLON TOKEN_LPAREN TOKEN_RPAREN

%type <expr> expr term factor

%%


program: expr TOKEN_SEMICOLON { 
    root = $1;  // Store the root of AST
    printf("Parsed expression: %s\n", $1->toString().c_str()); 
}
    ;

expr: term
    | expr TOKEN_PLUS term { $$ = new AST::BinaryOp($1, '+', $3); }
    | expr TOKEN_MINUS term { $$ = new AST::BinaryOp($1, '-', $3); }
    | expr TOKEN_MULTIPLY term { $$ = new AST::BinaryOp($1, '*', $3); }
    | expr TOKEN_DIVIDE term { $$ = new AST::BinaryOp($1, '/', $3); }
    | TOKEN_LPAREN expr TOKEN_RPAREN { $$ = $2; }  /* Add this rule to handle parenthesized expressions */
    ;

term: factor
    | term TOKEN_MULTIPLY factor { $$ = new AST::BinaryOp($1, '*', $3); }
    | term TOKEN_DIVIDE factor { $$ = new AST::BinaryOp($1, '/', $3); }
    ;

factor: TOKEN_NUMBER { $$ = new AST::Number($1); }
    | TOKEN_LPAREN expr TOKEN_RPAREN { $$ = $2; }
    ;

%%