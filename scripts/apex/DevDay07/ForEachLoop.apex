
/**
For each loop is specifically used to
Interate over (loop through) each and every item
every itme
inside Collection like (List, Set)

for(DataType eachItem : yourCollectionVariable ){
// do what you want to do with each item
}
 */

 List<Integer> numberList = new List<Integer>{5,7,4,9,6};
// print out the size of this list
System.debug('Item Count: ' + numberList.size() );

for( Integer each   : numberList  ){
    System.debug(each);

}




// Create a List of String and add 4 items
// Use for each loop to itereate over them print it out


List<String> roles = new List<String>();
roles.add('clock-master');
roles.add('screeshot-master');
roles.add('karate-girl');
roles.add('type-master');
// or we can do this 
// List<String> roles = new List<String>{'clock-master','screenshot-master','karate-girl','type-master'};
// use for each loop to eterate over each item and print
for( String eachRole : roles ){
    
    System.debug('Current Role : ' + eachRole);

}


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















