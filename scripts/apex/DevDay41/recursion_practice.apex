
// --------- 4/18/2023 ------------

RecursionDemo.printNumber(10);

/**
 * 
 * public class RecursionDemo {
    

    // count from N to 1 in this method 
    // and print it out 
    public static void printNumber(Integer n){

        System.debug('n value is : ' + n);

        if(n<=1){
           System.debug('We are done'); 
           return ; 
        }

        printNumber(n-1); 

    }

}


Recursion is a programming technique that involves a function calling itself. 
It is a powerful and elegant tool that allows programmers to solve problems in a more concise and efficient way.

When a function calls itself, it creates a new instance of itself, and the new instance executes independently of the previous instance. 
The new instance of the function can also call itself, creating yet another instance, and so on. This process continues until some termination condition is met.

Recursion is commonly used to solve problems that can be broken down into smaller subproblems that are similar to the original problem. 
By calling the function recursively with the smaller subproblems, the overall problem can be solved.

Recursion is often used in algorithms for sorting, searching, and traversing data structures such as trees and graphs. 
It can also be used to solve problems in mathematics and physics.

However, recursion can be dangerous if not implemented properly, as it can lead to an infinite loop or stack overflow. 
Therefore, it is important to carefully design the recursion algorithm and ensure that it has a proper termination condition.



 */


// -------------- CALLING UTILS ------------------

Utils.createAccountsWithOpps(3, 4) ;



