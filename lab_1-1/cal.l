

%option noyywrap

%{

%}

delim[ \t]
ws {delim}+
degit [0-9]
number {degit}+
char [a-z]
letter {char}*


%%

{ws} {printf("space detected!\n");}

{number} {printf("%s num \n",yytext);}
[+] {printf("\n%s ADD\n",yytext);}   
[-] {printf("\n%s MINUX\n",yytext);}
{letter} {printf("%s letter \n",yytext);}


%%


int main(){
    yylex();
    return 0;
}




