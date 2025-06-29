cmake_minimum_required(VERSION 3.10)
project(DSL)

find_package(FLEX REQUIRED)
find_package(BISON REQUIRED)
find_package(GTest REQUIRED)

# Generate parser first
bison_target(PARSER
    src/parser/parser.y
    ${CMAKE_CURRENT_BINARY_DIR}/parser.cpp
    DEFINES_FILE ${CMAKE_CURRENT_BINARY_DIR}/parser.hpp)

# Then generate lexer
flex_target(SCANNER
    src/lexer/lexer.l
    ${CMAKE_CURRENT_BINARY_DIR}/lexer.cpp)

# Add dependency
add_flex_bison_dependency(SCANNER PARSER)

# Find GTest include directory
execute_process(
    COMMAND brew --prefix googletest
    OUTPUT_VARIABLE GTEST_PREFIX
    OUTPUT_STRIP_TRAILING_WHITESPACE
)

include_directories(
    ${CMAKE_CURRENT_BINARY_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}/dsl
    ${CMAKE_CURRENT_SOURCE_DIR}/src
    ${CMAKE_CURRENT_SOURCE_DIR}/src/lexer
    ${GTEST_PREFIX}/include  # Add this line
)

# Main DSL executable
add_executable(dsl
    src/main.cpp
    src/parser/ast.cpp
    src/parser/globals.cpp
    dsl/codegen/code_generator.cpp  # Add this line
    ${BISON_PARSER_OUTPUTS}
    ${FLEX_SCANNER_OUTPUTS}
)

# Test executable
add_executable(dsl_test
    test/samples/basic_test.cpp
    src/parser/ast.cpp
)

target_link_libraries(dsl_test 
    GTest::GTest 
    GTest::Main
)

enable_testing()
add_test(NAME dsl_tests COMMAND dsl_test)