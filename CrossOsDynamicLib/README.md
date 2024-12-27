# DemoLibrary

## Description：
Provide a demo library for cross-platform dynamic library.
You can get to how to build a dynamic library according to this demo.

This project structure description and the dependency relationship is as follows:
-  [android] -- > [core] -- > [common]

```plaintext
 CrossOsDynamicLib/
 ├── common/                       # 公共逻辑库
 │   ├── include/                  # 头文件 .h
 │   ├── src/                      # 公共代码 c/c++
 │   └── CMakeLists.txt            # common库的CMake脚本
 ├── core/                         # 核心逻辑库
 │   ├── include/                  # 头文件 .h
 │   ├── src/                      # 核心代码 c/c++
 │   └── CMakeLists.txt            # core库的CMake脚本
 ├── platform/
 │   ├── android/                  # Android 平台相关
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
 │   │   │   ├── build.gradle          # App module Gradle构建文件
 │   │   ├── settings.gradle           # Gradle设置文件
 │   │   └── build.gradle              # 根目录Gradle文件
 │   │
 │   ├── ios/                       # ios 平台相关
 │   │
 │   └── harmony/                   # harmony 平台相关
```
