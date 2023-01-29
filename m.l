%{
#include <stdio.h>
%}

%%

"\"".*"\"" {printf("\n Literals : %s\n",yytext);}

"abstract"|"actual"|"annotation"|"as"|"break"|"by"|"catch"|"class"|"companion"|"const"|"constructor"|"continue"|"crossinline"|"data"|"debug"|"delegate"|"do"|"dynamic"|"else"|"enum"|"expect"|"external"|"false"|"final"|"finally"|"for"|"fun"|"get"|"if"|"import"|"in"|"infix"|"init"|"inline"|"inner"|"interface"|"internal"|"is"|"it"|"lateinit"|"noinline"|"null"|"object"|"open"|"operator"|"out"|"override"|"package"|"private"|"protected"|"public"|"reified"|"return"|"sealed"|"set"|"singleton"|"super"|"suspend"|"tailrec"|"this"|"throw"|"true"|"try"|"typealias"|"val"|"var"|"vararg"|"when"|"while"|"println"  {printf("\n Keyword : \"%s\"\n",yytext);}

"Int"|"Double"|"float"|"long"|"char"|"Boolean"|"String"|"Char"|"var"|"val"   {printf("\n Datatype : \"%s\"\n",yytext);}

"+"|"-"|"*"|"/"|"%"|"++"|"--"|"="|"+="|"-="|"*="|"/="|"%="|"<<"|">>"|">>>"|"&"|"|"|"^"  {printf("\n Operators : \"%s\"\n",yytext);}

";"|"{"|"}"|"("|")"|","|">"   {printf("\n Delimiters : \"%s\"\n",yytext);}

[-|+]?[0-9]* {printf("\n Number : \"%s\"\n",yytext);}

[_|$]?[a-zA-Z]*?[0-9]* {printf("\n Identifiers : \"%s\"\n",yytext);}

"/*".*(\n.*)+.*"*/" 	
"//".*					
"/*".*"*/"				

%%

int main()
{
yyin=fopen("open.txt","r");
yylex();
}

int yywrap()
{
return 1;
}


