# DemoLibrary

## Description：
Provide a demo library for cross-platform dynamic library.
You can get to how to build a dynamic library according to this demo.

This project structure description and the dependency relationship is as follows:
-  [android] -- > [core] -- > [common]

```plaintext
 CrossOsDynamicLib/
 │
 ├── common/                       # 公共逻辑库
 │   ├── include/                  # 头文件 .h
 │   ├── src/                      # 公共代码 c/c++
 │   └── CMakeLists.txt            # common库的CMake脚本
 │
 ├── core/                         # 核心逻辑库
 │   ├── include/                  # 头文件 .h
 │   ├── src/                      # 核心代码 c/c++
 │   ├── feature/                  # 特性代码 c/c++ .h/cpp，供src业务c/cpp调用
 │   └── CMakeLists.txt            # core库的CMake脚本
 │
 ├── platform/                     # 跨平台相关模块
 │   ├── android/                  # <1> Android 平台相关
 │   │   ├── app/
 │   │   │   ├── src/
 │   │   │   │     └── main/
 │   │   │   │         ├── cpp/                      # JNI代码
 │   │   │   │         │   ├── src/                  # 代码 c/c++
 │   │   │   │         │   ├── include/              # 头文件 .h
 │   │   │   │         │   └── CMakeLists.txt        # Android的CMake脚本
 │   │   │   │         ├── java                      # Java代码
 │   │   │   │         └── AndroidManifest.xml       # 清单文件
 │   │   │   │
 │   │   │   └── build.gradle          # App module Gradle构建文件
 │   │   │
 │   │   ├── settings.gradle           # Gradle设置文件
 │   │   └── build.gradle              # 根目录Gradle文件
 │   │
 │   ├── ios/                       # <2> ios 平台相关
 │   │
 │   ├── harmony/                   # <3> harmony 平台相关
 │   │   ├── entry/
 │   │   │   ├── src/
 │   │   │   │     └── main/
 │   │   │   │         ├── cpp/                           # Napi代码
 │   │   │   │         │   ├── src/                       # 代码 c/c++
 │   │   │   │         │   ├── include/                   # 头文件 .h
 │   │   │   │         │   ├── types/                     # 接口层目录
 │   │   │   │         │   │   └── libentry/
 │   │   │   │         │   │       ├── Index.d.ts         # 接口声明 
 │   │   │   │         │   │       └── oh-package.json5   # 模块库名&版本号
 │   │   │   │         │   └── CMakeLists.txt             # CMake脚本
 │   │   │   │         ├── ets                            # ArkTS代码
 │   │   │   │         └── module.json5                   # 模块清单文件 
 │   │   │   │
 │   │   │   └── build-profile.json5           # App module 构建文件
 │   │   │
 │   │   ├── oh-package.json5                  # 项目依赖包管理文件
 │   │   └── build-profile.json5               # 项目根目录G构建配置文件 
```
