cmake_minimum_required(VERSION 3.27)
project(rtype)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(Boost REQUIRED COMPONENTS chrono)
find_package(raylib REQUIRED)

add_executable(rtype src/main.cpp)

target_link_libraries(rtype Boost::chrono raylib)

set_property(TARGET rtype PROPERTY CXX_STANDARD 20)
install(TARGETS rtype DESTINATION bin)
