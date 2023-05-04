

// ------------------- 5/ 4/2023 -------------------------

/**

In general, try-catch blocks are great because they will break 
(move to the catch statement) whenever the exception occurs. 
If-else blocks rely on you predicting when the error will happen. 
Edit: Also, catch blocks won't stop your code from halting when an error is hit.

 */
List<Integer> numberList = new List<Integer>{37,43,22,76,32};
System.debug('Starting the code'); 

try {

    System.debug('numberList[5] value is : ' + numberList[5]);
    
} catch (ListException e) {

    // if the exeption occure, just print last item in the list 
    System.debug('INDEX OUT OF BOUND!!!!! RETURNING LAST ITEM');
    System.debug('numberList[ numberList.size-1 ] value is : ' 
                                + numberList[ numberList.size()-1 ]);
    

}
System.debug('Ending the code'); 