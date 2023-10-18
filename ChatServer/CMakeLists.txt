

cmake_minimum_required(VERSION 3.25)
## Use the variable PROJECT_NAME for changing the target name
set( PROJECT_NAME "ChatServer" )

# ## Set our project name
project(${PROJECT_NAME})

# ## Use all the *.cpp files we found under this folder for the project
FILE(GLOB SRCS "*.cpp" "*.c")
# file(GLOB SOURCES src/* src/*/* src/*/*/*)
# ## Define the executable
# #add_executable(${PROJECT_NAME} ${SRCS})
add_executable(${PROJECT_NAME} main.cpp)


target_include_directories(${PROJECT_NAME}
        PUBLIC
        ChatNetworking)

target_link_libraries(${PROJECT_NAME}
        PUBLIC
        ChatNetworking)
