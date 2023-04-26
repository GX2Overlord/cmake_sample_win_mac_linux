cmake_minimum_required(VERSION 3.12)

project(MyProject)

set(SOURCES main.cpp)

add_executable(MyProject ${SOURCES})

if(WIN32)
  set_property(TARGET MyProject PROPERTY VS_SPECIFIC_PROJECT_DEFAULTS true)
endif()

if(APPLE)
  set_property(TARGET MyProject PROPERTY XCODE_GENERATE_SCHEME ON)
endif()

if(UNIX AND NOT APPLE)
  set(CMAKE_CXX_FLAGS "-std=c++11")
endif()

# Generate Visual Studio solution, Xcode project and CodeLite workspace
set_property(GLOBAL PROPERTY USE_FOLDERS ON)
set_property(GLOBAL PROPERTY PREDEFINED_TARGETS_FOLDER "CMake")

set_property(TARGET MyProject PROPERTY FOLDER "MyProject")

if(WIN32)
  set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT MyProject)
endif()
