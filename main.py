#main.py

from antlr4 import *
from antlr4_files.TestLexer import TestLexer
from antlr4_files.TestListener import TestListener
from antlr4_files.TestParser import TestParser
import sys

class TestPrintListener(TestListener):
    def enterProg(self, ctx):
        print('Syntactic and lexical analyzes are completed.')
        input()


def main():
    f = open('program_example.pypas', 'r')
    sourceCode=f.read()
    f.close()
    lexer = TestLexer(InputStream(sourceCode))
    #print(type(InputStream('test smth')))
    stream = CommonTokenStream(lexer)
    parser = TestParser(stream)
    tree = parser.prog()#prog - назва початкового правила (метод класу 'Ім'я граматики'Parser) в 'Ім'я граматики'Parser.py
    printer = TestPrintListener()
    walker = ParseTreeWalker()
    walker.walk(printer, tree)

if __name__ == '__main__':
    main()
