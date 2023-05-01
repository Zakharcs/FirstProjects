// Create a List of Integer and store 15 items
// all item value should be 10
//here s the content of the list, put 15 times 
// 10 ,10 ,10 ,10 ,10,............................


// -------------PRINT 10 times
//  List<Integer>voteNumbers = new List<Integer>();
 List<Integer> voteNumbers = new List<Integer>(); //our list

  //startPoint    //endPoint   //iteration
 for(Integer count=1 ;count<=100 ; count++){ //the for loop will run 15 times
    voteNumbers.add(10); //we add 10 to our list every time it loops
 }
System.debug(voteNumbers); //then we print it out
System.debug(voteNumbers.size() );

//------------- WRITE 15 times HELLO WORLD

for(Integer count =1 ; count <=25 ; count ++){
    System.debug('Hello World') ;

}


//How to count the items inside the list
// so we get the number
// size() method of the list

Integer voteCount = voteNumbers.size();
System.debug(  voteCount  ) ;

// or you can directly print out without saving

System.debug( voteNumbers.size() );

































