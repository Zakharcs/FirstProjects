// ---------------- 4/4/2023 -------------------

/**
The main advantage of using a static method is that you can call it directly on the class without needing to instantiate an object of the class. 
This can be useful in cases where you need to perform a specific action that is not tied to a particular instance of the class.

The main advantage of using a void method is that you can use it to perform some action without needing to return a value. 
For example, if you need to update a record in the database, you can use a void method to perform the update without needing to return any value.

In summary, static and void methods serve different purposes. 
Static methods are useful when you need to perform an action that is not tied to a particular instance of a class, 
while void methods are useful when you need to perform some action without needing to return a value.
 */


 public class Person {
   // name, age, height
   // instance fields|variables
   public String name;
   public Integer age;
   public Decimal height;
 
   // create a void method called print name
   // it should simply print message
   // printing the person name 
   public void printName(){
 
     System.debug(' printing the person name ' + name );  
                        //+ this.name );  
 
   } 
 
   // Create a void method called printAge
   // age of the person is : XX
   public void printAge(){
     System.debug('age of the person is : ' + age ); 
   }                             // this.age
 

   public void describePerson(){

      System.debug(name +  'is ' + age
                   + ' and height is ' + height);
   }

   // create a void method called changeName
   // it should accept one external data as text
   // (it has 1 String parameter)
   //it should be simply change the field of
   // current object calling the method to new name
   public void changeName(String newName){

      name = newName;
      // this.name = newName;


   }
   // Create a void method called setAgeAndHeight
   // it should accept 2 parameters
   //  newAge as Integer  newHeight as double
   // it should be simply change the age,height field of 
   // current object calling the method
   public void setAgeAndHeight(Integer newAge, Decimal newHeight){
      this.age    = newAge;      // age    = neAge;
      this.height = newHeight;   // height = newHeight;
   }

  // create a void method called setPersonInfo
  // it should accept 3 parameters
  //  name as String 
  //  age as Integer  
  //  height as Decimal
  // it should be simply change the name, age,height field of 
  // current object calling the method

public void setPersonInfo(String name, Integer age, Decimal height ){     // set the value

   this.name   = name ;
   this.age    = age;
   this.height = height;

}

 // Create a method called getAllCapName
 // This method should
 // make the name of the current object uppercase
 // and return it to the caller

 public String getAllCapName(){

   String upName = this.name.toUpperCase();
   // return keyword is used to return the value 
   // to the caller of this method

   return upName ;
  // return this.name.toUpperCase();
 }

 
 // Create a method called isEligibleForVote
 // expect no external data 
 // return true the age of current Person object 
 // is 18 or above , otherwise return false 
  public Boolean isEligibleForVote(){

   if( this.age >= 18 ){
       return true; 
   }else {
       return false; 
   }

 }



  // Create a method called getAgeGroup
  // it does not have any method parameter
  // it return age group based on below criteria
  // 0-6 Little Kid
  // 6-12 Young Kid
  // 12-18 teenager
  // 18 +  Adult
  // <0 or > 120 Invalid !!!
  public String getAgeGroup(){

   if(this.age<0 || this.age> 120){
      return 'Invalid';
   }else if (this.age>=0 && this.age<6) {
      return 'Little Kid';
   }else if (this.age>=6 && this.age<12) {
     return 'Young Kid';
   }else if (this.age>=12 && this.age<18) {
     return 'teenager';
   }else{
     return 'Adult';
   }
}

// OR WE CAN MINIMIZE
/**
  public String getAgeCategory() {
    if (this.age <= 6)
      return 'Little Kid';
    else if (this.age <= 12)
      return 'Young Kid';
    else if (this.age <= 18)
      return 'Teenager';
    else
      return 'Adult';
  }
} 
 
 */


// Create a method called IdHigherThan
// it accept 1 external data(argument) as Decimal
// return true if height of current person object
// is higher than this number, otherwise false

public Boolean isHigherThan(Decimal otherHeight){
     // this is already a boolean result 
   return this.height > otherHeight ;
   
}
 
}


