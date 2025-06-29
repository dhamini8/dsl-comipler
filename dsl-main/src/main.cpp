#include "ast.hpp"
#include "codegen/code_generator.hpp"
#include <iostream>
#include <fstream>

extern int yyparse();
extern AST::Node *root;

int main() {
    std::cout << "DSL Parser\n";

    try {
        if (yyparse() == 0 && root != nullptr) {
            // Evaluate expression
            std::cout << "Evaluation result: " << root->evaluate() << std::endl;
            
            // Generate C++ code
            std::string cppCode = AST::CodeGenerator::generateCpp(root);
            
            // Save to file
            std::ofstream outFile("generated.cpp");
            if (outFile.is_open()) {
                outFile << cppCode;
                outFile.close();
                std::cout << "Generated C++ code saved to 'generated.cpp'" << std::endl;
            } else {
                std::cerr << "Failed to open output file" << std::endl;
            }
            
            delete root;
            root = nullptr;
            return 0;
        }
    } catch (const std::exception &e) {
        std::cerr << "Error: " << e.what() << std::endl;
    }

    std::cerr << "Parsing failed!" << std::endl;
    return 1;
}