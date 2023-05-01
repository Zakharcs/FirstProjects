// ----------------- 2/14/2024 --------------------
/**
Create a list of 10 Decimal Numbers
in 2 separate loops

// In first loop------------------
Iterate over the list and print it out the each element
skip element number 3 and 7 while printing

//Loop 1: ----- FOR LOOP


//In second loop------------------
Iterate over the list and print it out the each items
Break out of the loop if the number is more than 100
 */

List<Decimal> elementNum = new List<Decimal>{
  12.23,
  23.45,
  1.2,
  5.67,
  3.45,
  5.5,
  8.8,
  3.45,
  7.890,
  6.80
};
//Loop 1: ----- FOR LOOP

//1 then print out the last item value using get method
Integer indexOfLastItem = elementNum.size() - 1;
System.debug('Index of Last Item is ' + indexOfLastItem);

//2 then print out he last item value using GET Method
System.debug('Last Item Value ' + elementNum.get(indexOfLastItem));

for (Integer index = 0; index < elementNum.size(); index++) {
  if (index == 2 || index == 6) {
    continue;
  }
  System.debug('Index # ' + index + ' : ' + elementNum.get(index));
}
// Iterate over the list and print it out the each element
// Skip element number 3 and 7 while printing

//-------- FOR EACH LOOP ---------------
//In second loop------------------
/** 
Iterate over the list and print it out the each items
Break out of the loop if the number is more than 100
 */

for (Decimal eachNum : elementNum) {
  if (eachNum > 100) {
    break;
  }

  System.debug(eachNum);
}

// ------------ FOR LOOP ----------------------

