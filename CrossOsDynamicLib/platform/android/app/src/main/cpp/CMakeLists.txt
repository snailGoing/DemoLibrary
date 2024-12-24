cmake_minimum_required(VERSION 3.22.1)


project("test")

# include 该项目头文件路径
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

# 搜索JNI源文件
file(GLOB JNI_SRC ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)

add_library(${CMAKE_PROJECT_NAME} SHARED ${JNI_SRC})

# 将 test 库的头文件目录暴露（PUBLIC）给依赖于 test 的目标
target_include_directories(${CMAKE_PROJECT_NAME} PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

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

# Specifies libraries CMake should link to your target library. You
# can link libraries from various origins, such as libraries defined in this
# build script, prebuilt third-party libraries, or Android system libraries.
target_link_libraries(${CMAKE_PROJECT_NAME}
        # List libraries link to the target library
        android
        log
        core)

# 确保 test 可以访问 core 和 common 的头文件（如其他CMakeLists.txt 文件已配置，可以注释掉）
#target_include_directories(${CMAKE_PROJECT_NAME} PUBLIC
#        ${CMAKE_CURRENT_SOURCE_DIR}/../../../../core/include
#        ${CMAKE_CURRENT_SOURCE_DIR}/../../../../../common/include
#)

# 设置JNI动态库的属性
set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES
        CXX_STANDARD 11
        CXX_STANDARD_REQUIRED YES
)

# CMAKE_SOURCE_DIR 通常表示整个项目的顶层源代码目录。具体来说，第一次调用 project() 命令时被设置的，指向包含顶层 CMakeLists.txt 文件的目录。
# 当前项目目录（即包含当前CMakeLists.txt文件的目录），可以使用 CMAKE_CURRENT_SOURCE_DIR 变量。 这个变量表示当前CMakeLists.txt文件所在的目录。

