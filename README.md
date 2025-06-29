Custom DSL Compiler Project
A domain-specific language compiler implementation using Flex (lexer) and Bison (parser) with C++. The project implements a basic arithmetic expression evaluator with code generation capabilities.

Project Structure
.
├── CMakeLists.txt        # CMake build configuration
├── dsl/                  # Core DSL implementation
│   ├── ast.hpp           # Abstract Syntax Tree definitions
│   └── codegen/          # Code generation components
├── src/                  # Source files
│   ├── main.cpp          # Main program entry
│   ├── lexer/            # Lexical analyzer
│   │   └── lexer.l       # Flex lexer definition
│   └── parser/           # Parser implementation
│       └── parser.y      # Bison parser definition
└── test/                 # Test files
    ├── samples/          # Test case samples
    └── src/              # Test source files
Features
Arithmetic expression parsing
Binary operations (+, -, *, /)
Parenthesized expressions
Code generation to C++
Expression evaluation
AST (Abstract Syntax Tree) construction
Prerequisites
CMake (3.10 or higher)
Flex
Bison
C++ compiler (supporting C++11 or higher)
Google Test framework
Installation on macOS:
brew install cmake flex bison googletest
Building the Project
Create a build directory:
mkdir build
cd build
Generate build files:
cmake ..
Build the project:
make
Running the Compiler
Create an input file (e.g., input.dsl) with expressions:
10*(5-2);
Run the compiler:
./dsl < ../test/src/basic.dsl
This will:

Parse the input
Generate an AST
Evaluate the expression
Generate equivalent C++ code in generated.cpp
Testing
Run the test suite:

./dsl_test
Code Generation
The compiler generates C++ code for the parsed expressions. The generated code includes:

A main function
The evaluated expression
Output statement
Example generated code for 10*(5-2);:

#include <iostream>

int main() {
    int result = (10 * (5 - 2));
    std::cout << "Result: " << result << std::endl;
    return 0;
}
Grammar
The DSL supports:

Numbers (integers)
Binary operations:
Addition (+)
Subtraction (-)
Multiplication (*)
Division (/)
Parenthesized expressions
Semicolon-terminated statements
Example Usage
Input file (test.dsl):

10 + 20;
5 * (3 + 2);
Run:

./dsl < test.dsl
Project Components
Lexer (lexer.l):

Tokenizes input into numbers, operators, and delimiters
Handles whitespace and comments
Parser (parser.y):

Defines grammar rules
Builds AST nodes
Handles operator precedence
AST (ast.hpp):

Node base class
Expression nodes
Binary operation nodes
Code Generator (code_generator.hpp):

Transforms AST to C++ code
Handles expression conversion
Generates complete program structure
Contributing
Fork the repository
Create a feature branch
Commit changes
Push to the branch
Create a Pull Request
License
This project is open source and available under the MIT License.

Error Handling
The compiler provides error reporting for:

Syntax errors
Invalid expressions
Undefined operators
Malformed input
Future Enhancements
Variable support
Function definitions
Control flow statements
Type system
Optimization passes
Troubleshooting
If you encounter issues:

Ensure all dependencies are installed
Check input file syntax
Verify build directory permissions
Check compiler/linker errors in build output
For more information, check the test files and source code documentation.
