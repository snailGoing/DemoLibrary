#include "_core.h"
#include "math_operations.h"


// 平方差
int Core::squareDifference(int a, int b) {
    return MathOperations::add(a, b)*MathOperations::subtract(a,b);
}
