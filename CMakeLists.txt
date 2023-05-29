cmake_minimum_required(VERSION 3.7)

project(SDL2Test)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)

# find required packages
find_package(SDL2 REQUIRED)
find_package(SDL2_image REQUIRED)

set(INCLUDES ${SDL2_INCLUDE_DIRS} ${SDL2_IMAGE_INCLUDE_DIRS})

set(LIBS ${SDL2_LIBRARIES} ${SDL2_IMAGE_LIBRARIES})


include_directories(${INCLUDES} source/test.h)

add_executable(SDL2Test source/main.cpp)
target_link_libraries(SDL2Test  ${LIBS})
