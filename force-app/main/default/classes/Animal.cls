
// --------------- 4/25/2023 ---------------------------
// -------------- ABSTRACT CLASS --------------------

public abstract class Animal {
    
    // instance fields name, age
    public String name;
    public Integer age;
    // constructor to set those 2 fields 
    public Animal(String name, Integer age){
        this.name = name ;
        this.age  = age ;

    }
    // abstract method called make noise 
    public abstract void makeNoise();


    // abstract method called getInfo();
    // it has @param dog food
    // name+age as String ,return String
    
    public abstract String getInfo(String dogFood) ;
    
}