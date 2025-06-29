#pragma once
#include "../ast.hpp"
#include <sstream>
#include <string>

namespace AST {
    class CodeGenerator {
    public:
        static std::string generateCpp(Node* root);

    private:
        static std::string generateExpression(Node* node);
        static std::string getIndentation(int level = 1);
    };
}