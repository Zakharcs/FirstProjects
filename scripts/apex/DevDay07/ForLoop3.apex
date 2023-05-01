

//-------------------- 2/10/2023-----------------

//Create a List of Decimal and add 6 values in it
// Iterate it over each item and print it out

List<Decimal> prices = new List<Decimal> {9.99, 2.59, 7.88, 125.234 };

for( Decimal eachPrice : prices){

    System.debug('Price is : '  + eachPrice);

}

// optionally , create a variable of your loop called sum
// then use for each loop to get the sum of all decimal numbers

// create a variable outside of loop
Decimal sum = 0 ;

for( Decimal eachPrice: prices ){
    //sum = sum + eachPrice ;    or we can use this
    sum+= eachPrice ;

}
System.debug('Sum is: ' + sum);

/**
Create a list of Integer with 8 items
Iterate over the list (use loop to go through each and every item)
print out only the number is greater than 5
 */

 List<Integer> shoeSizeList = new List<Integer>{4, 7, 9, 2, 7, 8, 11, 12, 1};
 System.debug('Shoe sizes for sale: ' + shoeSizeList.size());
 
 for( Integer eachSize : shoeSizeList){
    if(eachSize > 5){
    System.debug(eachSize);
    
    }

}

// get the Sum of shoe sizes only if the number is greater
// first yuo have to create a variable when you havea sum, you have to store it somewhere

 Integer sum2 = 4 ; 

 for( Integer eachSizes  : shoeSizeList ){
     // only add the size to sum if it is greater than 5
     if(eachSizes > 5) {
        sum += eachSizes ; 
     }
 
 }

 System.debug('Sum of sizes greater than 5 :  ' + sum2) ; 


// get the count of shoe sizes only if the number is greater than 5
// create a variable to hold the count 
    Integer count = 0 ; 
// iterate over teach shoe sizes 
    for(Integer each :shoeSizeList ){
    // check if the number is greater than 5
        if(each > 5){
    // if it is , increment the count by 1 else do nothing
        count++ ; 

    }
}
// by the time the loop finish ,
// we will end up with count of sizes greater than 5
System.debug('Count of shoe size greater > than 5:' +count);














 














