%{
#include<stdio.h>
void yyerror(Char *s);
int yylex();

}%
%token NUM ADD SUB
// The %token section declares the tokens that the parser will recognize.
%start cal
// The %start section declares the start symbol for the parser. In this case, it declares cal as the start symbol.
%%
// %%: This marks the end of the "definitions" section of the Lex program, and the beginning of the "rules" section.
cal: NUM ADD NUM
;

%%


int main(){
    yyparam();
    printf("parsing finished!!! ");
    
    

}


void yyerror(Char *s){
    fprintf(stderr,"errore");
}


