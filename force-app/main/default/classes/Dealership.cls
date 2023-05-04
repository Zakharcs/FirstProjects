

// ----------------- 5/4/2023 ----------------------

/**
# Coding Task OOP2

1. Create a class called `Dealership`
   * instance fields : 
     - `name` as `String` 
     - `eCars` as `List<ElectricCar>`
   * constructor 
     - 2 params constructor to set 
       - the `name` field
       - the `eCars` field
   * methods 
     - public void `showCars` with no param
       - loop through each car and print 
         - `model is ModelHere and price is price here`
     - public method `getCarCount` with no param
       - return the count of the `eCars`
     - public void method `discountAllCars`
       - @param `discountAmount` as Integer
       - loop through each car 
       - and reduce each car price by `discountAmount`
     Optionally : 
     - public void method `addCar`
       - @param newCar as `ElectricCar`
       - add the provided car to the `eCars` list

Create `List` of `ElectricCar` and add 3 ElectricCars
Create `Dealership` object with name and List of cars above 
Call the methods you created

 */
public class Dealership {

private String name ; 
private List<ElectricCar> eCars ; 

public Dealership(String name, List<ElectricCar> eCars ){
    this.name = name ; 
    this.eCars = eCars ; 
}


public void showCars(){

    for(ElectricCar each : eCars) {
        System.debug('model is '+ each.model 
                    +' and price is '+ each.price );
    }

}

public Integer getCarCount(){
    return this.eCars.size() ; 
}


public void discountAllCars(Integer discountAmount){

    for(ElectricCar each : eCars) {
       each.price -= discountAmount; 
    }
    

}



// public Integer getDealershipNameCharacterCount(){
//     return this.name.length(); 
// }



}