/**
7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated by hyfen(-) and last item should not have -
   - Example : Your list {'This','is','The','Way','Student'}
     - value of joinedText 'This-is-The-Way-Student'

 */



List<Integer> list1 = new List<Integer>{1,2,1,4,2,6,1,8,3,10};

Set<Integer> set1 = new Set<Integer>(list1);
System.debug(set1); 

System.debug('Number of unique elements is '+ set1.size());

System.debug('Difference is '+(list1.size()-set1.size())); 





/**
3. Write an Apex code that create List or Array of 10 Integer values. 
   - create another List or Array and
   - store the items in reverse order
   - print it out 
 */

   List<Integer>listNumber=new List<Integer>{5,87,45,67,93,65,90,9,26};
   List<Integer> reverse = new List<Integer>();

   for(Integer i=listNumber.size()-1; i>=0 ;i--) {
      reverse.add(listNumber[i]);
   }

   System.debug(reverse);



/**
4. Write an Apex code to create List of 10 String with some duplicates values
List<String> heroList = new List<String>
{'Superman', 'Batman', 'Spiderman', 'Iron Man', 'Wonder Woman', 'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};
 */


 List<String> strList = new List<String>{
  'Admin',
  'Architect',
  'Tester',
  'QA',
  'Analyst',
  'Developer',
  'App Builder',
  'PO',
  'Scrum Master',
  'Consultant'
};

Set<String> strSet =new Set<String>();

for(String each : strList) {
  if(each!='Admin'&& each!='Developer')
strSet.add(each);
}

System.debug('size of the set: '+ strSet.size());

for(String each : strSet) {
  System.debug(each);
}



/*5. Write an Apex code that create List or Array of 5 Integer values. 
   - double the value of each item 
   - for example {1,4,6,4,6} => {2,8,12,8,12} */

List<Integer> listScore = new List<Integer>{1,4,6,4,6};

//we can not use for each loop if we want to modify the values
// for(Integer each : list1) {
//    each*=2;
// }

// System.debug(list1); 

for(Integer i = 0; i<listScore.size() ;i++) {
   listScore[i] *= 2; 
}

System.debug(listScore); 




/*6. Write an Apex code that create List or Array of 5 String values
   - add the word sf+index at the end of each element
   - {'Anakin','Obivan','Yoda','Windu','Ahsoka'} => 
   - {'Yoda sf1' 'Anakin sf2','Obivan sf3','Windu sf4','Ahsoka sf5'} */

List<String> strListSet = new List<String>{
  'Anakin',
  'Obivan',
  'Yoda',
  'Windu',
  'Ahsoka'
};

for(Integer i=0; i<strListSet.size() ;i++) {
  strListSet[i]=strListSet[i]+ ' sf'+i; 
}

System.debug(strListSet); 



/*6. Write an Apex code that create List or Array of 5 String values
   - add the word sf+index at the end of each element
   - {'Anakin','Obivan','Yoda','Windu','Ahsoka'} => 
   - {'Yoda sf1' 'Anakin sf2','Obivan sf3','Windu sf4','Ahsoka sf5'} */

List<String> strListStarWars = new List<String>{
  'Anakin',
  'Obivan',
  'Yoda',
  'Windu',
  'Ahsoka'
};

for(Integer i=0; i<strListStarWars.size() ;i++) {
  strListStarWars[i] = strListStarWars[i]+ ' sf'+i; 
}

System.debug(strListStarWars); 




/*7. Write an Apex code that create List or Array of 8 String values
   - store the index of 2 items in the middle into 2 variables mid1, mid2
   - now imagine you unknown (even) number of items in the list and find out a way to dynamically find the index of item in the middle 
     - if you have 8 items : number 4 and 5 items are in the middle
     - if you have 18 items : number 8 and 9 items are in the middle and so on
     - no loop needed here
   - print out the value of items in the middle */

List<String> strListStarNames = new List<String>{
    'Ercan',
    'Fatih',
    'Nora',
    'Natyra',
    'Cavidan',
    'Sean',
    'Leke',
    'Seyfullah'
};

Integer mid1=strListStarNames.size()/2;
Integer mid2=strListStarNames.size()/2-1;

System.debug('the items in the middle are ' + strListStarNames[mid1]+' and '+ strListStarNames[mid2]); 



/*8.  Write an Apex code that create 2 Set of String with 5 values
   - update set1 to only retain the elements exists in both set1 and set2
      -  HINT : retainAll method */

Set<String> setNames1=new Set<String>{'chair','table','apple','scrabble','towel'};
Set<String> setNames2=new Set<String>{'chair','table','orange','season','month'};

Boolean isChanged=setNames1.retainAll(setNames2);

System.debug(isChanged); 

System.debug(setNames1); 




/*9. Write an Apex code that create Set of 10 Integer
   - create a variable called average 
   - calculate the average  sum/item count and print it out
   - Create empty List of Integer
   - store only items above average in above Set
   - removeAll items that below average from the Set  */

Set<Integer> set2=new Set<Integer>{10,20,30,40,50,60,70,80,90,100};

Decimal avg;
Integer sum=0;

for(Integer each : set2) {
   sum+=each;
}

avg=sum/set2.size();

List<Integer> list2 = new List<Integer>();

for(Integer each : set2) {
   if(each>avg)
    list1.add(each);
}

System.debug(list2); 




/*10. Write an Apex code that create List of 10 Integer values as scoreList
    - get the count of numbers less than 0 or greater than 100
    - in separate loop, update the value of items as below
      - if the Integer less than 0 update it to 0 
      - if the Integer more than 100 update it to 100
    - HINT : Array syntax is much simpler when it comes to update */


List<Integer> scoreList =new List<Integer>{-100,-50,-20,0,5,68,90,100,200,450};

Integer count=0;

for(Integer each : scoreList) {
  if(each<0||each>100)
  count++;
}
  System.debug(count); 


for(Integer i=0; i<scoreList.size() ;i++) {
  if(scoreList[i]<0)
    scoreList[i]=0;
  if(scoreList[i]>100)
    scoreList[i]=100;

}
System.debug(scoreList); 




/*Given  2 Integer values : 
Integer num1 = 10 ; 
Integer num2 = 20 ;

Swap the value of num1 , num2 
so num1 become 20 and num2 become 10.
HINT : you need a temp variable for temporarily storing value of one number. 
*/

// num1=num2   num1->20  num2->20
// num2=num1

Integer num1 = 10 ; 
Integer num2 = 20 ;
Integer temp =num1;

num1=num2;
num2=temp;

System.debug('num1 '+num1); 
System.debug('num2 '+num2); 





/*1. Write an Apex code that 
   - create a variable to store 1 Random double between 0 to 100 Math.random()*100
   - print it out 
   - print 'pass' if the number is greater than 65
   - print 'A+' if the number is between 95-100
   - run multiple time to observer the result */

//Returns a positive Double that is greater than or equal to 0.0 and less than 1.0

Double num = Math.random()*100;

System.debug(num); 

if(num>65)
System.debug('Pass');
if(num>95)
System.debug('A+'); 





/*Write an Apex code that create 1 Random double between 0 to 100
   - print it out 
   - if the number is even -> print 'even number!!!' 
   - if it can be divided by 5 with no remainder -> print 'cool number'
   - if it can be divided by 7 with remainder 3  -> print 'cooler number'  */


Double num3 = Math.random()*100;
System.debug(num3); 

Integer var=num3.intValue();

//Integer var=Math.randim()*100.intValue();

if(Math.mod(var,2)==0)
   System.debug(var+' is even number');

if(Math.mod(var,5)==0)
   System.debug(var+' is cool number');

if(Math.max(var,7)==3)
   System.debug(var+' is cooler number');



/*3. Write an Apex code that store list of 10 Integers 
   - print out all odd numbers
   - get the count of the odd numbers and print it out
   - get the sum of the odd numbers and print it out */

List<Integer> numberList1 = new List<Integer>{34,67,45,89,96,34,27,97,3,83};

Integer countOdd=0, summury=0;

for(Integer each : numberList1) {
   if(Math.mod(each,2)==1){
      System.debug(each);
      countOdd++;
      summury+=each; 
   }
}

System.debug('count of odd numbers '+ countOdd); 
System.debug('sum of odd numbers '+ summury);






/*4. Write an Apex code that create 2 Random Integer variables 
   - use Math.random()*100 to assign random values to both of them
     - (make sure to convert the double value to Integer)
   - print both variable values 
   - print the larger number value*/

Integer var1 = (Math.random()*100).intValue();
Integer var2 = (Math.random()*100).intValue();

System.debug(var1); 
System.debug(var2);
System.debug(Math.max(var1, var2));  




//5. Write an Apex code that 
//   - print 10 random Integer values between 1-1000 in 10 lines (loop)



for(Integer i=0; i<10 ;i++) {

    Double var=Math.random()*1000;
    System.debug(var.intValue()); 

}






TimeZone tz = 
  UserInfo.getTimeZone();
System.debug(
  'Display name: ' + 
  tz.getDisplayName());
System.debug(
  'ID: ' + 
  tz.getID());






