# the minimum version of CMake.
cmake_minimum_required(VERSION 3.5.0)
project(entry)

set(NATIVERENDER_ROOT_PATH ${CMAKE_CURRENT_SOURCE_DIR})

if(DEFINED PACKAGE_FIND_FILE)
    include(${PACKAGE_FIND_FILE})
endif()

# 库内部头文件
include_directories(${NATIVERENDER_ROOT_PATH}
                    ${NATIVERENDER_ROOT_PATH}/include)
# 搜索JNI源文件
file(GLOB JNI_SRC ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)

# 设置添加动态库
add_library(${CMAKE_PROJECT_NAME} SHARED ${JNI_SRC})

# 获取当前目录的父目录，最多获取6级父目录
set(MAX_PARENT_LEVEL 6)
set(PARENT_DIR ${CMAKE_CURRENT_SOURCE_DIR})

foreach (i RANGE 1 ${MAX_PARENT_LEVEL})
    get_filename_component(PARENT_DIR ${PARENT_DIR} DIRECTORY)
    if(NOT EXISTS ${PARENT_DIR})
        message(FATAL_ERROR "Parent directory level ${i} does not exist: ${PARENT_DIR}")
    endif()
endforeach()

# 输出结果
message(STATUS "Current Source Directory: ${CMAKE_CURRENT_SOURCE_DIR}")
message(STATUS "Parent${MAX_PARENT_LEVEL} Directory: ${PARENT_DIR}")

# 添加 core 库
if(EXISTS ${PARENT_DIR}/core/CMakeLists.txt)
    add_subdirectory(${PARENT_DIR}/core ${CMAKE_BINARY_DIR}/outputs/core)
else()
    message(FATAL_ERROR "Core library directory does not exist: ${PARENT_DIR}/core")
endif()

target_link_libraries(${CMAKE_PROJECT_NAME} PUBLIC libace_napi.z.so core)

# 设置JNI动态库的属性
set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES
        CXX_STANDARD 11
        CXX_STANDARD_REQUIRED YES
)