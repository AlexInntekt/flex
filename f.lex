%{
int count=0;
%}

%%
[a-zA-Z]+[1-4]*3 {printf("%s matches\n", yytext); 
       count++;} 
.     {printf("%s does not match\n", yytext);} 
\n    {return 0;} 
%%

int yywrap(){}
int main()
{


yylex();

printf("\nNumber of Capital letters " 
      "in the given input - %d\n", count); 
  
return 0; 

}
