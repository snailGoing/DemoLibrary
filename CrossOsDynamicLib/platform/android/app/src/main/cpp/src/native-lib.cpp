#include <jni.h>
#include <string>
#include "_core.h"

extern "C" JNIEXPORT jstring JNICALL
Java_org_fbreader_test_MainActivity_stringFromJNI(
        JNIEnv* env,
        jobject /* this */, jint a, jint b) {
    std::string hello = "Hello from C++:" + std::to_string(Core::squareDifference(a,b)); // std::to_string(Core::squareDifference(5,3))
    return env->NewStringUTF(hello.c_str());
}