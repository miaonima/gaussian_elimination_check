# gaussian_elimination_check
Author: YHZ

A MATLAB Program that perform gaussian elimination on a matrix, transforming selected columns to unit vectors. Can be used to check ISE 530 homework.

To use the program, open the script in MATLAB (or Octave), and input the matrix as A. The terms should be arranged in the following way.

| z | x1 | x2 | x3 | x4 | const |
|-----|-------|-------|-------|-------|-------|
| 1   | 1     | 2     | 0     | 0     | 0     |
| 0   | 1     | 1     | 1     | 0     | 4     |
| 0   | -1    | 1     | 0     | 1     | 2     |

Then input the index array in the script. (e.g. index = [1 4] means choosing x1 and x4 as the basic variable.)
Specifying [1 4] and [4 1] gives different results. (Try it.)
__WARNING: Make sure the columns you choose are indeed linearly independent i.e. basis! Otherwise you may get wrong result.__

Run the script and the results will be displayed in the commandline.
