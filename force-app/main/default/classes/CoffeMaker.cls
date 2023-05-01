


///public void exampleMethod() --> Does not require outside data
// public void exampleMehod(//extra stuff) --> Does require outside data 

public class CoffeMaker {

    public String brand;
    public Integer capacity;

    // create a method called makeCoffe
    // it shoul be avalilable everywhere
    // is dose not need any extra data when called
    // and it does not return any value
    // it needs an Object, while it being called

    //    ------- CREATING THE METHOD ---------   
    public void makeCoffe(){   // method signature

        System.debug('Add Water ...');
        System.debug('Add Coffe...');
        System.debug('Place the Cup...');
        System.debug('Press the button...');
        System.debug('Now Enjoy the Coffe');    
    }

    public void setTimer(Integer num){

        System.debug('setting timer for : ' + num + ' minutes');

    }  

    // Create a public void method called Clean
    // it does not have any method parameter
    // print the message : cleaning the coffe maker.
    // in your anon-apex, call the method

    public void clean(){

        System.debug('cleaning the coffe maker');
    }


    public void addWater(Integer cups){

        System.debug('Adding: ' + cups + ' ounces of water'); 

    }

    public void addFlavor(String latte){

        System.debug('My Coffe ' + latte + ' is good'); 

    }
  
}