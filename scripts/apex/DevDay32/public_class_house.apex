// ----------- 4/3/2023 -------------

// instantiate the house 
// create an instance of the house
// create house variable assign House object

//House h1 = new House(); // assign a new class 

h1.style = 'Victorian';
h1.year  = 1907 ; 
h1.hasGarage = true ; 
h1.squareFootage = 3000 ; 

System.debug('h1 value is : ' + h1);

System.debug('----------------------------------------'); 

//House h2 = new House();

h2.style = 'Modern' ;
h2.year = 2025 ;
h2.hasGarage = true ;
//  if we not fill out squareFootage : it will give us NULL value

System.debug('h2 value is : ' + h2); 


//private (meaning its accessible in same class)
//if you do not use public on variable (or method)
//it is automatically private 

//Private it means your code cannot be used outside of your current class


 House h1 = new House();
System.debug('h1 value is ' + h1);

 House h2 = new House ('Victorian');
System.debug('h2 value is ' + h2);


 House h3 = new House('Victorian', 2023, true, 5000);
System.debug ('h3 value is : ' + h3);
