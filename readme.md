# Plane fit
## Plane fit of 3D points with SVD
* Total least squares minimization

A total least squares problem refers to determining the vector x which minimizes the 2-norm of a vector Ax under the constraint ||x|| = 1. The solution turns out to be the right-singular vector of A corresponding to the smallest singular value.

It is the right singular vector that minimizes the "orthogonal" [2]. 


<img src='images/plane1.png' />

<img src='images/plane2.png' />


## References
[1] Singular value decomposition, https://en.wikipedia.org/wiki/Singular_value_decomposition

[2] Plane fit of 3D points with Singular Value Decomposition, https://stackoverflow.com/a/53593404
