# Simpson's 1/3 algorithm
This function is used to integrate a function using Simpson's 1/3 composite rule. It reads the inputted function as vectors X and Y to discover how many intervals it needs. An engineer could use this function to find a total of data, like total force on a system, total area, total water, etc. While this function can work with an even or odd number of intervals, the invervals must be spaced evenly. The algorithm won't work if the data's intervals aren't consistantly spaced the same.
## Inputs
### x
x is the vector containing the x values for a data set. Because matlab works best with vectors over equations, a data set will be inputted into this function for it to run. In order for this algorithm to succesfully run, x must meet two criteria: it must be consistantly spaced and it must have the same number of values as the other input, y.
### y
y is the vector containing a data set's y values. Just like the previous input x, y must have the same number of values as x for the algorithm to work. However, the y values do not have to be evenly spaced the way x must be. This is becasue y is more like the results of x.
## Outputs
### I
I is the only output for this function. I is the integral of the data set vectors x and y. If you are trying to find the amount of water that runs through a river over a set amount of time, x would be the time, y would be the amount of water running throgh at each x point, and I would be the total amount of water over the entire interval.
