
/**
2. Write an Apex code that create List or Array of unknown numbers(more than 3) of Integer values.
   - Store last 3 items into Integer Array
   - print out the Integer Array

 */

 List<Integer> numberList = new List<Integer>{90,79,25,32,11,22,33,32,54,10};
 System.debug('Value in the list ' +  numberList );
 // in oreder to get the item at certain location, wee need index
 // in oreder to get 3 item, we need index of these 3
 //  last item :            numberList.size() - 1  ==> 9
 //  second form the last : numberList.size()  - 2  ==> 8
 // third from the last :   numberList.size()  - 3  ==> 7


// creating an integer array with size 3
 Integer[] last3Items = new Integer[3];   // 3 is the size of the element you want to store
 // last3Items[0] = YourValueHere ; 
 last3Items[0] = numberList.get( numberList.size() - 3) ; 
 last3Items[1] = numberList.get( numberList.size() - 2) ; 
 last3Items[2] = numberList.get( numberList.size() - 1) ; 

 System.debug('last3Items value is: ' + last3Items);






 /**
 7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated by hyfen(-) and last item should not have -
   - Example : Your list {'This','is','The','Way','Student'}
     - value of joinedText 'This-is-The-Way-Student'
  */

List<String> strList = new List<String>{'This', 'is', 'The', 'Way', 'Student'};
String joinedText = '' ;  // empty text
// Loop through each item and concatinate each item into joinedText followed by -
for(String each : strList) {
    System.debug('Current value : ' + each);   // for each loop}
    //joinedText = joinedText + each + '-' ;  or
    joinedText += each + '-';
    
}
System.debug( 'joinedText value is: ' + joinedText);


// The requirement asked not to include - after lat item
// Loop through each item and append each item into joinedText
// when you reach last item, do not append - at the end
// we will use FOR LOOP


for(Integer i=0; i<strList.size() ; i++) {
    //System.debug('Value at index #'+ i +' is :' + strList.get(i) );
    // Store the current item value into a variable so we can reuse 
    String each = strList.get(i) ; 
    // when we are at the last item in the loop 
    // do not add - at the end  joinedText += each
    if(  i == strList.size()-1  ){
        joinedText += each; 
    }else{
    // when we are not at the last item in the loop 
    // add append current item value and - at the end  joinedText += each + '-' 
        joinedText += each + '-' ; 
    }

 }





 /**
join(iterableObj, separator)
Joins the elements of the specified Collection, such as a List, into a single String separated by the specified separator.
 */
 /**
7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated by hyphen(-) and last item should not have -
   - Example : Your list `{'This','is','The','Way','Student'}`
     - value of joinedText `'This-is-The-Way-Student'`
*/
List<String> strList = new List<String>{'This','is','The','Way','Student'};
String joinedText = String.join(strList , '-') ; 
System.debug('joinedText value is : ' + joinedText); 








