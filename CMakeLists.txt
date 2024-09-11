cmake_minimum_required(VERSION 3.27)
project(rtype)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON CACHE INTERNAL "")

# For linters requiring compile_commands to include -I directories (for external libraries)
if (CMAKE_EXPORT_COMPILE_COMMANDS)
    set(CMAKE_CXX_STANDARD_INCLUDE_DIRECTORIES ${CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES})
endif()

find_package(Boost REQUIRED COMPONENTS chrono)
find_package(raylib REQUIRED)

add_executable(rtype src/main.cpp)

target_link_libraries(rtype Boost::chrono raylib)

set_property(TARGET rtype PROPERTY CXX_STANDARD 20)
install(TARGETS rtype DESTINATION bin)
