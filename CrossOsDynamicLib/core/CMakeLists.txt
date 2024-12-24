cmake_minimum_required(VERSION 3.22.1)

project(core_library)

# 包含核心头文件
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

# 搜索核心源文件
file(GLOB CORE_SRC ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp)

# 创建静态库
add_library(core STATIC ${CORE_SRC})

# 将 core 库的头文件目录暴露给依赖于 core 的目标
target_include_directories(core PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# 添加 common 库，通过 add_subdirectory 引入
get_filename_component(PARENT_DIR ${CMAKE_CURRENT_SOURCE_DIR} DIRECTORY)
add_subdirectory(${PARENT_DIR}/common ${CMAKE_BINARY_DIR}/outputs/common)

# 链接 common 库
target_link_libraries(core PUBLIC common)

# 确保 core 能够访问 common 的头文件
target_include_directories(core PUBLIC
    ${PARENT_DIR}/common/include
)

# 设置核心库的属性
set_target_properties(core PROPERTIES
    CXX_STANDARD 11
    CXX_STANDARD_REQUIRED YES
)