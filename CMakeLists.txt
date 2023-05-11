cmake_minimum_required(VERSION 3.5)

set(CMAKE_C_COMPILER "C:/mingw/bin/gcc.exe")

add_subdirectory(Libaries)
add_subdirectory(Sources)

project(handwritten_numbers_nn LANGUAGES C)