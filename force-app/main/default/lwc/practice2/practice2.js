import { LightningElement } from 'lwc';

export default class Practice2 extends LightningElement {

    firstName = "Clark"; 
    lastName = "Kent"; 

    // getter is a type of function 
    // that return value
    // usually used for getting calculated result
    // from the fields instead of creating new fields
    get fullName() {
        //return this.firstName + ' ' + this.lastName; 
        return `${this.firstName} ${this.lastName}`;
    }

    // add a method function called handle click for a submit button
    handleClick (){

        console.log('Button is Clicked');
        this.firstName = 'Sergey';
        this.lastName  = 'Zakharchenko';
    
    }


    


}