#include "ast.hpp"

namespace AST {
std::string Number::toString() const { return std::to_string(value); }

std::string BinaryOp::toString() const {
  return "(" + left->toString() + " " + op + " " + right->toString() + ")";
}
} // namespace AST