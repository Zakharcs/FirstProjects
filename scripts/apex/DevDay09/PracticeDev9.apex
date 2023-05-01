
/**
Practice--------------2/13/2023
 */

// ----------------- IF ELSE STATEMENT ---------------------
String season = 'winter' ;
//syntax for if else statement
if( season == 'winter'){
    System.debug('Wear your boots');


}else if(season == 'spring'){
    System.debug('Wear your sneakers');

}else if(season == 'summer'){
    System.debug('Wear your sandals');

}else if(season == 'autum'){
    System.debug('Wear your warm coat');
}



// ------------- SWITCH ON STATEMENT ----------------
String season1 = 'summer';

switch on season{
    when 'winter'{
        System.debug('Wear your boots');
    }
    when 'spring'{
        System.debug('Wear your sneakers');
    }
    when 'summer1'{
        System.debug('Wear your sandals');
    }
    when else{
        System.debug('wear your loafers');

    }
}



// --------------- MULTIPLICATION ------------------
Integer n = 2 ;
for(Integer count =1 ; count<=10 ; count++){
    System.debug(count + ' X ' + n + ' = ' + (count*n));
}


//---------------- PRACTICE LIST METHODS ------------

List<String> cars = new List<String>{'Ford', 'Lexus', 'BMW', 'Toyota'};
System.debug(cars);

cars.add('Mercedes');
cars.add('Honda');
cars.set(0, 'Tesla');
System.debug(cars);


Boolean isHonda = cars.contains('Honda');
System.debug(isHonda);

// GET METHOD

System.debug(cars.get(3));


cars.clear();
System.debug(cars.isEmpty());



// Define a new set 

Set<Integer> mySet = new Set<Integer>();

mySet.add(1);
mySet.add(3);
mySet.add(1);
mySet.add(1);
mySet.add(52);
System.debug(mySet);

System.debug(mySEt.size());

mySet.remove(2);
System.debug(mySet);



/**
DEfine a set of prices
Practice for each loop
 */


Set<Decimal> prices = new Set<Decimal>{4.00, 6.99, 8.50, 3.25};
prices.add(0.99);
prices.add(6.99);
System.debug(prices);




//FOR LOOP 
Decimal sum = 0;

for(Decimal eachPrices : prices){
    sum +=  eachPrices;

}
System.debug('Total is: ' + sum);























