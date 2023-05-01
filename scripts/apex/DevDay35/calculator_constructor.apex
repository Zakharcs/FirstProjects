
// ---------- 4/7/2023 ----------

System.debug('Calculator.add value is : '+ Calculator.add(100,200) );
// Calculator.add value is : 300

System.debug('Calculator.add value is : '+ Calculator.add(9.5,21.5) );
// Calculator.add value is : 31.0

System.debug('Calculator.subtract value is : '+ Calculator.subtract(100,70) );
// Calculator.subtract value is : 30

System.debug('Calculator.subtract value is : '+ Calculator.subtract(1000, 900) );
// Calculator.subtract value is : 100

System.debug('Calculator.multiply value is : '+ Calculator.multiply(250,250) );
// Calculator.multiply value is : 62500

System.debug('Calculator.multiply value is : '+ Calculator.multiply(10,25) );
// Calculator.multiply value is : 250

System.debug('Calculator.divide value is : '+ Calculator.divide(500,25) );


System.debug('Calculator.divide value is : '+ Calculator.divide(100,0) );
// Calculator.divide value is : 0    // we put if else statement:
/**
    // divide
    public static Decimal divide(Decimal num1, Decimal num2){
        // im math second number can not be 0, it will give error
        if(num2 == 0){
            return 0;

        }else{

            return num1 / num2 ;
        }
        

    }
  
  
 */

