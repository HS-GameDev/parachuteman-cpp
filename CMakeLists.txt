cmake_minimum_required(VERSION 3.7)

project(game)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)


# copy resources file to binary directory
file(COPY ${CMAKE_CURRENT_LIST_DIR}/resources DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
# fill SOURCE parameter with header and cpp files
file(GLOB_RECURSE SOURCE 
    source/*.cpp
    source/*.h
    source/*.hpp
)

# find required packages
find_package(SDL2 REQUIRED)
find_package(SDL2_image REQUIRED)
find_package(SDL2_mixer REQUIRED)
find_package(SDL2_ttf REQUIRED)

set(INCLUDES ${SDL2_INCLUDE_DIRS} ${SDL2_IMAGE_INCLUDE_DIRS} ${SDL2_MIXER_INCLUDE_DIRS} ${SDL2_TTF_INCLUDE_DIRS})

set(LIBS ${SDL2_LIBRARIES} ${SDL2_IMAGE_LIBRARIES} ${SDL2_MIXER_LIBRARIES} SDL2_mixer)

# note: this line will be changed later on
add_executable(${PROJECT_NAME} ${SOURCE})
target_link_libraries(${PROJECT_NAME} ${LIBS})
