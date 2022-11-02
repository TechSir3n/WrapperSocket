cmake_minimum_required(VERSION 3.24.1)

project(SOCKET)


if(WIN32)
 message(STATUS "Building for Windows")
endif()

add_subdirectory(utils)

add_subdirectory(example)

add_subdirectory(core)

