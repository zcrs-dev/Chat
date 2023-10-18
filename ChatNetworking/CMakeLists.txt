

cmake_minimum_required(VERSION 3.25)
## Use the variable PROJECT_NAME for changing the target name
set( PROJECT_NAME "ChatNetworking" )
find_package(Boost 1.74.0 REQUIRED)

## Set our project name
project(${PROJECT_NAME})

## Use all the *.cpp files we found under this folder for the project
file(GLOB_RECURSE SOURCES src/*.cpp )
add_library(${PROJECT_NAME} ${SOURCES})

target_include_directories(${PROJECT_NAME}
        PUBLIC
        $<INSTALL_INTERFACE:include>
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        ${Boost_INCLUDE_DIRS}
        PRIVATE


)


target_link_libraries(${PROJECT_NAME}
        PRIVATE
        ${Boost_LIBRARIES}
)

