#include <stdio.h>
#include <stdlib.h>

// Freddie He, Jonathan Barton, Gaohong Liu
// CSE/EE 371
// Professor Joshua Smith
// TA: Meiling Wu
// 05/04/17

// This program declare some variables with data type
// of int float and char. Then print these value out
// using pointer reference in part one. In part two,
// it can do some arithmetic problem still using pointer
// reference

int main() {
    // Part 1

    // declare variable of data type integer
    int i1, i2;
    // declare variable of data type float
    float f1, f2;
    // declare variable of data type character
    char c1, c2;

    // declare integer pointer
    int* ip;
    // declare float pointer
    float* fp;
    //declare character pointer
    char* cp;

    // pointer initialization and print value
    // the pointer refers to
    ip = &i1;
    printf("First integer: %d\n", *ip);
    ip = &i2;
    printf("Second integer: %d\n", *ip);

    fp = &f1;
    printf("First float: %f\n", *fp);
    fp = &f2;
    printf("Second float: %f\n", *fp);

    cp = &c1;
    printf("First character: %c\n", *cp);
    cp = &c2;
    printf("Second character: %c\n", *cp);

    // Part 2

    // initialize six variables with data type of integer
    int A = 22;
    int B = 17;
    int C = 6;
    int D = 4;
    int E = 9;
    int result;

    // pointer initialization, then do
    // arithmetics using pointer reference
    // and print final result
    int* p1 = &A;
    int* p2 = &B;
    int* p3 = &C;
    int* p4 = &D;
    int* p5 = &E;
    result = ((*p1 - *p2)*(*p3 + *p4)) / *p5;
    printf("The result is %d\n", result);

    return 0;
}
