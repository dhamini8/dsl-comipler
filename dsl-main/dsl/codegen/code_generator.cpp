#include "code_generator.hpp"
#include <stdexcept>

namespace AST {
    std::string CodeGenerator::generateCpp(Node* root) {
        std::stringstream ss;
        ss << "#include <iostream>\n\n";
        ss << "int main() {\n";
        ss << getIndentation() << "int result = " << generateExpression(root) << ";\n";
        ss << getIndentation() << "std::cout << \"Result: \" << result << std::endl;\n";
        ss << getIndentation() << "return 0;\n";
        ss << "}\n";
        return ss.str();
    }

    std::string CodeGenerator::generateExpression(Node* node) {
        if (auto* num = dynamic_cast<Number*>(node)) {
            return std::to_string(num->getValue());
        }
        if (auto* binOp = dynamic_cast<BinaryOp*>(node)) {
            return "(" + generateExpression(binOp->getLeft()) + " " + 
                   binOp->getOperator() + " " + 
                   generateExpression(binOp->getRight()) + ")";
        }
        throw std::runtime_error("Unknown node type in code generation");
    }

    std::string CodeGenerator::getIndentation(int level) {
        return std::string(level * 4, ' ');
    }
}