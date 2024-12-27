#include "_core.h"
#include "math_operations.h"
#include "mutiply/mutiply.h"


// 平方差
int Core::squareDifference(int a, int b) {
    return Mutiply::mutiply(MathOperations::add(a, b), MathOperations::subtract(a,b));
}
