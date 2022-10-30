cmake_minimum_required(VERSION 3.24.1)

project(CLIENT)

add_executable(${PROJECT_NAME}
                main.cpp
)

target_link_libraries(${PROJECT_NAME} PUBLIC SOCKET)

set_target_properties(${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/)
