# Linux-Terminal-Calculator
This project, compiled in Kali Linux terminal, offers basic math functions. Designed with Lex and Yacc tools, it facilitates arithmetic operations, including addition, subtraction, multiplication, division, and modulus.


## Table of Contents 📚
# Table of Contents 📚
- [Overview](https://github.com/NisalWick2002/Linux-Terminal-Calculator?tab=readme-ov-file#overview-)
- [Features](https://github.com/NisalWick2002/Linux-Terminal-Calculator?tab=readme-ov-file#features-%EF%B8%8F)
- [Steps](https://github.com/NisalWick2002/Linux-Terminal-Calculator?tab=readme-ov-file#Steps-%EF%B8%8F)

## Overview 📋
Overview:
The Linux Terminal Calculator is a command-line calculator designed to provide users with a simple yet powerful mathematical tool within the Linux environment. Developed using Lex and Yacc tools, it supports a wide range of arithmetic operations, including addition, subtraction, multiplication, division, and modulus calculations.

## Features ⚙️
Basic arithmetic operations: Addition, subtraction, multiplication, division.
Modulus calculations.
Command-line interface for ease of use.
Compiled using Lex and Yacc tools in the Kali Linux terminal.
Designed to offer a seamless mathematical experience within the Linux Terminal environment.

## Steps 🛠️
1. Download and Unzip: Download the zip file from the GitHub repository and extract it to a convenient location on your Linux system
2. Open Terminal: Open the terminal and navigate to the directory where you extracted the downloaded folder.
3. Compile Lexer and Parser: Execute the following commands in the terminal:
  flex calculator.l
  bison -d calculator.y
  gcc -o calculator lex.yy.c calculator.tab.c -lfl -lm
4. Run Calculator: Launch the calculator by typing the following command in the terminal:
  ./calculator
5. Perform Calculations: Input your mathematical expressions at the command prompt and press Enter to see the results.
