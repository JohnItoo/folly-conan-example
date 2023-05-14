cmake_minimum_required(VERSION 3.8)
project(sample CXX)

set( CMAKE_CXX_FLAGS "--std=c++14" )
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(sample main.cpp)
target_link_libraries(sample ${CONAN_LIBS})
set_target_properties(sample PROPERTIES CXX_STANDARD 14)


