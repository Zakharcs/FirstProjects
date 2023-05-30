
// -------------- 5/30/2023 -------- Practice 13 ----------------------


import { LightningElement } from 'lwc';

export default class Practice13 extends LightningElement {

        salary = 140000 ;

        handleSalaryChange(event) {

            this.salary = event.target.value;
        }

        get notTooBad(){
            return this.salary>=100000 
            && this.salary <= 135000;
        }

        get averageSalary(){
            return this.Salary > 135000 
            && this.salary <= 175000;
        }

}