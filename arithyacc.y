//(A)10.Write a program to evaluate a given arithmetic expression using YACC specification.
//INPUT
//0.33*12-4-4+(3*2)
%{
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

// Function prototypes
int yylex(void);
void yyerror(const char *);

// Define YYSTYPE as a double
#define YYSTYPE double

%}

%token NUM

%left '+' '-'
%left '*' '/'

%%

expression:  
expr 
{
	printf("Result: %.2f\n", $1); 
 	return 0;
}
    ;
    
expr: expr '+' expr     { $$ = $1 + $3; }
    | expr '-' expr     { $$ = $1 - $3; }
    | expr '*' expr     { $$ = $1 * $3; }
    | expr '/' expr     { $$ = $1 / $3; }
    | '(' expr ')'      { $$ = $2; }
    | NUM               { $$ = $1; }
    ;

a    
    return 0;
}
