// --------- 4/24/2023 ------------------------------

//  public virtual class Car {

    /**
        * Abstract keyword used on the class with mark the class as abstract class
        * it can NOT be instantiated meaning you can NOT directly create Car object
        * using keyword
        * Abstract Class means to be Parent class that extended by Child Classes
        * Abstract method does NOT have a body (meaning no { } at all)
        * abstract method must be overridden in the child or it will NOT compile 
    */
    


    public abstract class Car{       

    public String model ; 
    public Decimal price ; 

    // wirte a constructor to initialize default value for model and price
    // model : unknown model, price 10000
    public car(){

        // this.model = 'unknown model';
        // this.price = 10000 ;
        this('unknown model', 100000);      // or we can do this to save code of line
    }

    public Car(String model,Decimal price ){

        this.model = model ; 
        this.price = price ; 
    }

    /**
     * it should print message as below 
     * Car ModelGoesHere is driving
     * 
     * if a method marked as Virtual
     * it can be overriden in the child class
     */
    
    //   public virtual void drive(){

    //    System.debug('Car '+ this.model + ' is driving'); 
        
    // }


        public abstract void drive() ;

}