public class Dog extends Animal {
    // breed 
    public String breed ;

    // constructor to set 3 field values
    public Dog(String name, Integer age, String breed) {

        super(name, age);
        this.breed = breed ;

    }

    // add everriden makeNoise
    public override void makeNoise(){

        System.debug('Dog will bark::: Woof Woof'); 
        
    }

    // override abstract method getInfo
    public override String getInfo(String food){

        return 'Dog name ::: ' + this.name  + ' eating '  + food ;

    }
  
}