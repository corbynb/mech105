# False Position function
The false position method is a root finding method. The method itself is a closed method, meaning a lower and upper guess of where the root could be bracket the actual root itself. While closed methods are generally "slower", meaning they take more time and computation power to find roots, they are always accurate as long as the upper and lower guesses are somewhat close to the real value. This algorithm will take an inputted function, one that the user typed into MATLAB, and use 4 other inputs to give 4 outputs.
## Inputs
### func
This is the function the user wants to evaluate. The algorithm will find the roots, the x values where the function crosses at y = 0. 
### xl
xl is the lower guess of where the root could be. For the false position method to be used correctly, the user must input accurate bounds. xl must be a value lower than the actual root, or else this won't work.
### xu
Similarly to the xl input, xu is a root guess the user must make. This time, the user has to input the UPPER root guess, so this value must be a higher value than the real root. xl and xu bracket the real root. If these two guesses either don't bracket the root, or are far off from the actual root, this function won't work. It is recommended the user plots the function first, so they can look at the graph and make reasonable xl and xu guesses.
### es
This is the desiresd error for the function. Also known as the stopping criterion, matlab will stop looping once the error is lower than this value. This is basically a way for the user to choose how accurate the root output is.
### maxiter
This is the maximum number of iterations the user wants matlab to use. This is similar to es, for it will stop matlab once the maximum iterations are reached. This value makes sure matlab doesn't run the loops forever.
## Outputs
### root
This is the actual root of the function. This answer is what the algorithm was made to find, and this is the x value where the graph of the function crosses y = 0.
### fx
fx is the function evaluated at the root. In other words, this is where you would plug in the root value for x in a function to solve.
### ea
The error approximated. This will show how accurate your answer is.
### iter
The number of iterations matlab ran. Generally, the more iterations mean the answer is more accurate.
