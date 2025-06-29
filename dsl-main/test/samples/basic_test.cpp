#include <gtest/gtest.h>
#include "ast.hpp"

TEST(BasicTest, NumberToString) {
    AST::Number num(42);
    EXPECT_EQ(num.toString(), "42");
}

TEST(BasicTest, BinaryOpToString) {
    AST::Number* left = new AST::Number(5);
    AST::Number* right = new AST::Number(3);
    AST::BinaryOp op(left, '+', right);
    EXPECT_EQ(op.toString(), "(5 + 3)");
}