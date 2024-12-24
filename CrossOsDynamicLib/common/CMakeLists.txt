cmake_minimum_required(VERSION 3.22.1)

project(common_library)


# 包含核心头文件和common头文件
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

# 搜索核心源文件
file(GLOB COMMON_SRC ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)

# 创建静态库
add_library(common STATIC ${COMMON_SRC})

# 设置核心库的属性
set_target_properties(core PROPERTIES
    CXX_STANDARD 11
    CXX_STANDARD_REQUIRED YES
)

# 指定 common 的头文件目录（供其他库和项目引用）
target_include_directories(common PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)