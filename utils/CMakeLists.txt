cmake_minimum_required(VERSION 3.24.1)

project(UTILS)


file(GLOB_RECURSE UTILS_INCLUDE ${PROJECT_SOURCE_DIR}/*.hpp)
file(GLOB_RECURSE UTILS_SOURCE ${PROJECT_SOURCE_DIR}/src/*.cpp)

add_library(${PROJECT_NAME} STATIC 
            ${UTILS_INCLUDE}
            ${UTILS_SOURCE}
)
