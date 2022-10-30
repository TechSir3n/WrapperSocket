cmake_minimum_required(VERSION 3.24.2)

project(SRC)

file(GLOB_RECURSE SOCKET_INCLUDE ${PROJECT_SOURCE_DIR}/src/*.hpp)
file(GLOB_RECURSE SOCKET_SOURCES ${PROJECT_SOURCE_DIR}/src/*.cpp)

add_library(${PROJECT_NAME} STATIC
	${SOCKET_INCLUDE}
	${SOCKET_SOURCES}
)


target_include_directories(${PROJECT_NAME} PUBLIC src/)