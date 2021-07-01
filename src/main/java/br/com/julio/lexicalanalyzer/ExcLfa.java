package br.com.julio.lexicalanalyzer;

import java.io.IOException;
import java.io.StringReader;

public class ExcLfa{
	
	public static void main(String[] args) throws IOException {

        String expr = "if 2  3 a then abacate 123,2";

        LexicalAnalyzer lexical = new LexicalAnalyzer(new StringReader(expr));
        lexical.yylex();

    }

}
