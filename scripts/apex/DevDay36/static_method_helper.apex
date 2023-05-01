// ---------- 4/10/2023 ------------


List<Integer> numberList = new List<Integer>{65,80,83,149,48};

Integer highNum = Helper.getHighestNumber(numberList);
System.debug('highNum value is : ' + highNum);  //83

List<Integer> numberList2 = new List<Integer>{10,17,66,23,078};

System.debug(numberList2 + ' Highest value is : ' 
                         + Helper.getHighestNumber(numberList2));
//  (10, 17, 66, 23, 78) Highest value is : 78


// TETURN THE SUM  
System.debug(numberList + ' Sum is : ' 
                         + Helper.getTotal(numberList) );
//  (65, 80, 83, 149, 48) Sum is : 425
System.debug(numberList2 + ' Sum is : ' 
                         + Helper.getTotal(numberList2) ); 
//  (10, 17, 66, 23, 78) Sum is : 194     




System.debug(numberList + ' getAverage : ' 
                         + Helper.getAverage(numberList) );
 // (65, 80, 83, 149, 48) getAverage : 85

System.debug(numberList2 + ' getAverage : ' 
                         + Helper.getAverage(numberList2) );
 // (10, 17, 66, 23, 78) getAverage : 38






