# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 4.0

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/dhamini/Documents/IIT/dsl-main

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/dhamini/Documents/IIT/dsl-main/build

# Include any dependencies generated for this target.
include CMakeFiles/dsl.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/dsl.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/dsl.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dsl.dir/flags.make

parser.cpp: /Users/dhamini/Documents/IIT/dsl-main/src/parser/parser.y
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/dhamini/Documents/IIT/dsl-main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[BISON][PARSER] Building parser with bison 2.3"
	cd /Users/dhamini/Documents/IIT/dsl-main && /opt/homebrew/bin/cmake -E make_directory /Users/dhamini/Documents/IIT/dsl-main/build
	cd /Users/dhamini/Documents/IIT/dsl-main && /usr/bin/bison --defines=/Users/dhamini/Documents/IIT/dsl-main/build/parser.hpp -o /Users/dhamini/Documents/IIT/dsl-main/build/parser.cpp src/parser/parser.y

parser.hpp: parser.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate parser.hpp

lexer.cpp: /Users/dhamini/Documents/IIT/dsl-main/src/lexer/lexer.l
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/dhamini/Documents/IIT/dsl-main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "[FLEX][SCANNER] Building scanner with flex 2.6.4"
	cd /Users/dhamini/Documents/IIT/dsl-main && /opt/homebrew/bin/cmake -E make_directory /Users/dhamini/Documents/IIT/dsl-main/build
	cd /Users/dhamini/Documents/IIT/dsl-main && /usr/bin/flex -o/Users/dhamini/Documents/IIT/dsl-main/build/lexer.cpp src/lexer/lexer.l

CMakeFiles/dsl.dir/codegen:
.PHONY : CMakeFiles/dsl.dir/codegen

CMakeFiles/dsl.dir/src/main.cpp.o: CMakeFiles/dsl.dir/flags.make
CMakeFiles/dsl.dir/src/main.cpp.o: /Users/dhamini/Documents/IIT/dsl-main/src/main.cpp
CMakeFiles/dsl.dir/src/main.cpp.o: CMakeFiles/dsl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/dhamini/Documents/IIT/dsl-main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/dsl.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dsl.dir/src/main.cpp.o -MF CMakeFiles/dsl.dir/src/main.cpp.o.d -o CMakeFiles/dsl.dir/src/main.cpp.o -c /Users/dhamini/Documents/IIT/dsl-main/src/main.cpp

CMakeFiles/dsl.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/dsl.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dhamini/Documents/IIT/dsl-main/src/main.cpp > CMakeFiles/dsl.dir/src/main.cpp.i

CMakeFiles/dsl.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/dsl.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dhamini/Documents/IIT/dsl-main/src/main.cpp -o CMakeFiles/dsl.dir/src/main.cpp.s

CMakeFiles/dsl.dir/src/parser/ast.cpp.o: CMakeFiles/dsl.dir/flags.make
CMakeFiles/dsl.dir/src/parser/ast.cpp.o: /Users/dhamini/Documents/IIT/dsl-main/src/parser/ast.cpp
CMakeFiles/dsl.dir/src/parser/ast.cpp.o: CMakeFiles/dsl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/dhamini/Documents/IIT/dsl-main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/dsl.dir/src/parser/ast.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dsl.dir/src/parser/ast.cpp.o -MF CMakeFiles/dsl.dir/src/parser/ast.cpp.o.d -o CMakeFiles/dsl.dir/src/parser/ast.cpp.o -c /Users/dhamini/Documents/IIT/dsl-main/src/parser/ast.cpp

CMakeFiles/dsl.dir/src/parser/ast.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/dsl.dir/src/parser/ast.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dhamini/Documents/IIT/dsl-main/src/parser/ast.cpp > CMakeFiles/dsl.dir/src/parser/ast.cpp.i

CMakeFiles/dsl.dir/src/parser/ast.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/dsl.dir/src/parser/ast.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dhamini/Documents/IIT/dsl-main/src/parser/ast.cpp -o CMakeFiles/dsl.dir/src/parser/ast.cpp.s

CMakeFiles/dsl.dir/src/parser/globals.cpp.o: CMakeFiles/dsl.dir/flags.make
CMakeFiles/dsl.dir/src/parser/globals.cpp.o: /Users/dhamini/Documents/IIT/dsl-main/src/parser/globals.cpp
CMakeFiles/dsl.dir/src/parser/globals.cpp.o: CMakeFiles/dsl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/dhamini/Documents/IIT/dsl-main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/dsl.dir/src/parser/globals.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dsl.dir/src/parser/globals.cpp.o -MF CMakeFiles/dsl.dir/src/parser/globals.cpp.o.d -o CMakeFiles/dsl.dir/src/parser/globals.cpp.o -c /Users/dhamini/Documents/IIT/dsl-main/src/parser/globals.cpp

CMakeFiles/dsl.dir/src/parser/globals.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/dsl.dir/src/parser/globals.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dhamini/Documents/IIT/dsl-main/src/parser/globals.cpp > CMakeFiles/dsl.dir/src/parser/globals.cpp.i

CMakeFiles/dsl.dir/src/parser/globals.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/dsl.dir/src/parser/globals.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dhamini/Documents/IIT/dsl-main/src/parser/globals.cpp -o CMakeFiles/dsl.dir/src/parser/globals.cpp.s

CMakeFiles/dsl.dir/dsl/codegen/code_generator.cpp.o: CMakeFiles/dsl.dir/flags.make
CMakeFiles/dsl.dir/dsl/codegen/code_generator.cpp.o: /Users/dhamini/Documents/IIT/dsl-main/dsl/codegen/code_generator.cpp
CMakeFiles/dsl.dir/dsl/codegen/code_generator.cpp.o: CMakeFiles/dsl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/dhamini/Documents/IIT/dsl-main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/dsl.dir/dsl/codegen/code_generator.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dsl.dir/dsl/codegen/code_generator.cpp.o -MF CMakeFiles/dsl.dir/dsl/codegen/code_generator.cpp.o.d -o CMakeFiles/dsl.dir/dsl/codegen/code_generator.cpp.o -c /Users/dhamini/Documents/IIT/dsl-main/dsl/codegen/code_generator.cpp

CMakeFiles/dsl.dir/dsl/codegen/code_generator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/dsl.dir/dsl/codegen/code_generator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dhamini/Documents/IIT/dsl-main/dsl/codegen/code_generator.cpp > CMakeFiles/dsl.dir/dsl/codegen/code_generator.cpp.i

CMakeFiles/dsl.dir/dsl/codegen/code_generator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/dsl.dir/dsl/codegen/code_generator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dhamini/Documents/IIT/dsl-main/dsl/codegen/code_generator.cpp -o CMakeFiles/dsl.dir/dsl/codegen/code_generator.cpp.s

CMakeFiles/dsl.dir/parser.cpp.o: CMakeFiles/dsl.dir/flags.make
CMakeFiles/dsl.dir/parser.cpp.o: parser.cpp
CMakeFiles/dsl.dir/parser.cpp.o: CMakeFiles/dsl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/dhamini/Documents/IIT/dsl-main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/dsl.dir/parser.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dsl.dir/parser.cpp.o -MF CMakeFiles/dsl.dir/parser.cpp.o.d -o CMakeFiles/dsl.dir/parser.cpp.o -c /Users/dhamini/Documents/IIT/dsl-main/build/parser.cpp

CMakeFiles/dsl.dir/parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/dsl.dir/parser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dhamini/Documents/IIT/dsl-main/build/parser.cpp > CMakeFiles/dsl.dir/parser.cpp.i

CMakeFiles/dsl.dir/parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/dsl.dir/parser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dhamini/Documents/IIT/dsl-main/build/parser.cpp -o CMakeFiles/dsl.dir/parser.cpp.s

CMakeFiles/dsl.dir/lexer.cpp.o: CMakeFiles/dsl.dir/flags.make
CMakeFiles/dsl.dir/lexer.cpp.o: lexer.cpp
CMakeFiles/dsl.dir/lexer.cpp.o: parser.hpp
CMakeFiles/dsl.dir/lexer.cpp.o: CMakeFiles/dsl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/dhamini/Documents/IIT/dsl-main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/dsl.dir/lexer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/dsl.dir/lexer.cpp.o -MF CMakeFiles/dsl.dir/lexer.cpp.o.d -o CMakeFiles/dsl.dir/lexer.cpp.o -c /Users/dhamini/Documents/IIT/dsl-main/build/lexer.cpp

CMakeFiles/dsl.dir/lexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/dsl.dir/lexer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dhamini/Documents/IIT/dsl-main/build/lexer.cpp > CMakeFiles/dsl.dir/lexer.cpp.i

CMakeFiles/dsl.dir/lexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/dsl.dir/lexer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dhamini/Documents/IIT/dsl-main/build/lexer.cpp -o CMakeFiles/dsl.dir/lexer.cpp.s

# Object files for target dsl
dsl_OBJECTS = \
"CMakeFiles/dsl.dir/src/main.cpp.o" \
"CMakeFiles/dsl.dir/src/parser/ast.cpp.o" \
"CMakeFiles/dsl.dir/src/parser/globals.cpp.o" \
"CMakeFiles/dsl.dir/dsl/codegen/code_generator.cpp.o" \
"CMakeFiles/dsl.dir/parser.cpp.o" \
"CMakeFiles/dsl.dir/lexer.cpp.o"

# External object files for target dsl
dsl_EXTERNAL_OBJECTS =

dsl: CMakeFiles/dsl.dir/src/main.cpp.o
dsl: CMakeFiles/dsl.dir/src/parser/ast.cpp.o
dsl: CMakeFiles/dsl.dir/src/parser/globals.cpp.o
dsl: CMakeFiles/dsl.dir/dsl/codegen/code_generator.cpp.o
dsl: CMakeFiles/dsl.dir/parser.cpp.o
dsl: CMakeFiles/dsl.dir/lexer.cpp.o
dsl: CMakeFiles/dsl.dir/build.make
dsl: CMakeFiles/dsl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/dhamini/Documents/IIT/dsl-main/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable dsl"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dsl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dsl.dir/build: dsl
.PHONY : CMakeFiles/dsl.dir/build

CMakeFiles/dsl.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dsl.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dsl.dir/clean

CMakeFiles/dsl.dir/depend: lexer.cpp
CMakeFiles/dsl.dir/depend: parser.cpp
CMakeFiles/dsl.dir/depend: parser.hpp
	cd /Users/dhamini/Documents/IIT/dsl-main/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/dhamini/Documents/IIT/dsl-main /Users/dhamini/Documents/IIT/dsl-main /Users/dhamini/Documents/IIT/dsl-main/build /Users/dhamini/Documents/IIT/dsl-main/build /Users/dhamini/Documents/IIT/dsl-main/build/CMakeFiles/dsl.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/dsl.dir/depend

