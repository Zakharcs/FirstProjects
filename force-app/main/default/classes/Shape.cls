
// ---------------------- 4/27/2023 -------------------

/**
 * Create a abstract class called Shape
    instance fields :
        name as String
        area as Decimal
    constructor
        1 param|arg constructor to set the name
    method
        abstract void method calculateArea with no param
        Add a non-abstract void method called displayShapeInfo to Shape class
        Print : The Shape is nameOfShapeHere and the area is areaValueHere

 */
public abstract class Shape {
    
    public String name ; 
    // protected access modifier allow the field | methods
    // available sale class and child classes only
    // block access everywhere else
    protected Decimal area ; 
    
    public Shape(String name) {
        this.name = name ; 
    }

    public abstract void calculateArea();     // our shape class

    public void displayShapeInfo(){         // non abstract method, it has a body but no name abstract
        
        System.debug('The Shape is name Of '+ this.name  
                        +' and the area is ::: ' + this.area);  // the child will inherit this method
        
    }

}