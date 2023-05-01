

/**
List is a Collection types that store elements in insertion order
Each and every elements are stored in a position that starts from 0;

for example if you have below list
//                                index:  0  1  2   3  4   5 
List<Integer> numLst = new List<Integer>{19, 1, 23, 4, 6, 99};
//
 */
List<Integer> numLst = new List<Integer>{19, 1, 23, 4, 6, 99};
// get th element at certain index using (get method)
// get the first element and store it in a variable
Integer item1 = numLst.get(0) ;
System.debug('First item value ' + item1);

// directly prit out the second item value using get method
System.debug('Second item value ' + numLst.get(1) );
System.debug('Third item value ' + numLst.get(2) );
System.debug('Fourth item value ' + numLst.get(3) );
System.debug('Fifth item value ' + numLst.get(4) );
System.debug('Sixth item value ' + numLst.get(5) );

System.debug(numLst);

System.debug('---------------------------------------');

//iterate over all the elements in the loop without each loop

for(Integer index = 0 ; index < 6 ; index++){
System.debug( numLst.get(index) );

}



/** 
Create a list of String that stores 4 names

Print out the size
Print out item 3

Print out every item using FOR Loop
*/

List<String> names = new List<String>();
names.add('Sergey');
names.add('Yelena');
names.add('David');
names.add('Angela');
names.add('Kristina');
names.add('Marina');
names.add('Lidiya');
names.add('Mariya');
names.add('Andrey'); 

System.debug(names);    // print out names
// print out the size()
System.debug('Item Count in the list '+ names.size() );
// print out the item 3
System.debug( names.get(2) );

System.debug( names.get(0) );

//store the value of number 2 (item)element in to a variable and print it out

String item2 = names.get(1);
System.debug('Item2 Value is ' + item2);


// -------------------Using FOR LOOP----------------------
// Get message is not in the for each loop
// only in FOR LOOP
for( Integer index = 0 ; index < names.size() ; index++ ){
    System.debug('Index Value '+ index + ' is: ' +  names.get(index) ) ; // print out names use

}
//or we can prin this way
// System.debug( names.get(index) );



















































