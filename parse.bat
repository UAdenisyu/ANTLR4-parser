@echo off
pip install antlr4-python3-runtime
mkdir antlr4_files
cd antlr4_files
del Test.interp
del Test.tokens
del TestLexer.interp
del TestLexer.py
del TestLexer.tokens
del TestListener.py
del TestParser.py
cls
cd ..
java -jar antlr-4.8-complete.jar -Dlanguage=Python3 Test.g4
MOVE Test.interp antlr4_files
MOVE Test.tokens antlr4_files
MOVE TestLexer.interp antlr4_files
MOVE TestLexer.py antlr4_files
MOVE TestLexer.tokens antlr4_files
MOVE TestListener.py antlr4_files
MOVE TestParser.py antlr4_files
cls
call main.py