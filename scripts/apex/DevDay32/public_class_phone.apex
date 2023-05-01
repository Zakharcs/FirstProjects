
// ----------- 4/3/2023 ---------------

// * public is a keyword to define access level
//known as access modifier, there are couple of them we will learn later
// * private (meaning its accessible in same class)  access midifiyer
//if you do not use public on variable (or method)
//it is automatically private
// class : indicate this is a class
// phone : identifier, the name of the class
// { any code need to go in here, can not go outside}
// The moment the class exist it can be a data type
//// meaning, you can create a variable of that Type
//you can create a new instance (object) of that type and assign the variable
// and much more
// -------- CREATING A CLASS    PUBLIC -----------------
public class Phone{
    // a phone has below 
    // attributes or characteristics 
    // brand, price, memorySize
    // instance variable | field
    public String brand ; 
    public Decimal price ; 
    public Integer memorySize; 
}

// how do we open this window 
// Ctr + e

// since we have a class called Phone
// now we have a data type called Phone
// we can use it to create a variable
// we can create an instance of phone
// and assign it to the variable , 
// just like we did for Account, Contact
// and List , Set , and so on 
Phone p1 = new Phone(); 
p1.brand = 'Apple' ; 
p1.price = 899.99 ; 
p1.memorySize = 128 ; 

System.debug(p1) ; 
// reassign a value of a variable Price = new Price
p1.price = 799.99 ;
System.debug(p1);




// Create a phone variable and assign Phone Object to it 
// create an instance of Phone and save it to a variable 
// Instanciate a Phone and save it to a variable 
Phone p2 = new Phone(); 
p2.brand = 'Nokia';
p2.price = 499;
p2.memorySize = 512 ; 
System.debug(p2);



// print out second phone Brand
System.debug (p2);
System.debug(p2.brand);

// since we have a class called Phone
// now we have a data type called Phone
// we can use it to create a variable
// we can create an instance of phone
// and assign it to the variable , 
// just like we did for Account, Contact
// and List , Set , and so on 

Phone p3 = new Phone();
p3.brand = 'Galaxy';
p3.price = 1200.99;
p3.memorySize = 128;
System.debug(p3);
System.debug(p3.brand);
System.debug(p3.price);
System.debug(p3.memorySize);
