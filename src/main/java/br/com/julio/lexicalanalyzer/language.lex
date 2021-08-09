%%

%{

private void imprimir(String descricao, String lexema) {
    System.out.println(lexema + " - " + descricao);
}

%}


%class LexicalAnalyzer
%type void


BRANCO = [\n| |\t|\r]
ID = [_|a-z|A-Z][a-z|A-Z|0-9|_]*
INTEIRO = 0|[1-9][0-9]*
REAL = [1-9][0-9]*,[1-9][0-9]* | [1-9][0-9]*.[1-9][0-9]*

%%

"if"                         { imprimir("Palavra reservada if", yytext()); }
"else" 						 { imprimir("Palavra reservada else", yytext()); }
"then"                       { imprimir("Palavra reservada then", yytext()); }
"print"						 { imprimir("Visualizacao de dados, Palavra reservada print", yytext()); }
"input" 					 { imprimir("Leitura de dados, Palavra reservada input", yytext()); }
"for"						 { imprimir("Palavra reservada for", yytext()); }
"while"						 { imprimir("Palavra reservada while", yytext()); }
"switch"					 { imprimir("Palavra reservada switch", yytext()); }
"case"						 { imprimir("Palavra reservada case", yytext()); }
"in"						 { imprimir("Palavra reservada in", yytext()); }
{BRANCO}                     { imprimir("Espaço em branco", yytext()); }
{ID}                         { imprimir("Nome", yytext()); }
{INTEIRO}                    { imprimir("Número Inteiro", yytext()); }
{REAL} 						 { imprimir("Número Real", yytext()); }

. { throw new RuntimeException("Caractere inválido " + yytext()); }