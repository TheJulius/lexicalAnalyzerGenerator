package br.com.julio.lexicalanalyzer;

import java.io.IOException;
import java.io.StringReader;

public class ExcLfa{
	
	public static void main(String[] args) throws IOException {

        String expr = "if 23 read talCoisa then print outraCoisa "
        		+ " switch abacate case 1 "
        		+ " for a in abacate";

        LexicalAnalyzer lexical = new LexicalAnalyzer(new StringReader(expr));
        lexical.yylex();

    }

}
