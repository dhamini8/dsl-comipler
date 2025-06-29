#pragma once
#include <string>
#include <memory>
#include <vector>
#include <stdexcept>

namespace AST {
    class Node {
    public:
        virtual ~Node() = default;
        virtual std::string toString() const = 0;
        virtual int evaluate() const = 0;  // Add evaluate method
    };

    class Expression : public Node {
    public:
        virtual ~Expression() = default;
    };

    class Number : public Expression {
        int value;
    public:
        Number(int v) : value(v) {}
        int getValue() const { return value; }
        std::string toString() const override;
        int evaluate() const override { return value; }  // Implement evaluate
    };

    class BinaryOp : public Expression {
        std::shared_ptr<Expression> left;
        std::shared_ptr<Expression> right;
        char op;
    public:
        BinaryOp(Expression* l, char o, Expression* r)
            : left(std::shared_ptr<Expression>(l))
            , right(std::shared_ptr<Expression>(r))
            , op(o) {}
        
        std::string toString() const override;
        
        int evaluate() const override {
            switch(op) {
                case '+': return left->evaluate() + right->evaluate();
                case '-': return left->evaluate() - right->evaluate();
                case '*': return left->evaluate() * right->evaluate();
                case '/': return right->evaluate() == 0 
                         ? throw std::runtime_error("Division by zero") 
                         : left->evaluate() / right->evaluate();
                default: throw std::runtime_error("Unknown operator");
            }
        }
        Expression* getLeft() const { return left.get(); }
        Expression* getRight() const { return right.get(); }
        char getOperator() const { return op; }
    };
}