

/**
DML practice

Create a list Of Account
add 5 item below Name
Apex acc1
Apex acc2
Apex acc3
Apex acc4
Apex acc5

insert this list

update the anual revenue field with
random number between 0  - 100000

let this update reflect in Salesforce
update using the list in one shot

// Optionally Delete them all
 */

 List<Account> accList = new List<Account>(); // empty list

// use for loop
for(Integer i=1; i<=5 ;i++) {

    // Apex Acc i
    // create account instance
    //Account a = new Account( Name = 'Apex Acc ' + i ) ;
    //a.Name = 'Apex Acc' + i ;
    //add that to the list
    accList.add(  new Account( Name = 'Apex Acc ' + i ) ) ; // or wew can use this way
}

System.debug('accList value BEFORE is : ' + accList); 
insert accList ; 
System.debug('accList value AFTER is : ' + accList); 


// update the annual revenue field with 100000

for(Account each : accList) {
    
    each.AnnualRevenue = 100000 ; 

}
System.debug('accList value after update is : ' + accList); 
// update it in Salesforce org using update dml statement 
update accList ; 



// 1. update the annual revenue field with 100000
// 2. update the annual revenue field with random number 0--100000
for(Account each : accList) {

    each.AnnualRevenue = Math.round(Math.random()*100000 ); 

}
System.debug('accList value after update is : ' + accList); 

// update it in Salesforce org using update dml statement 
update accList ; 

// Create a new list of Account Called VipAccount
// loop through your each item in your accList 
//     if the anual revenue is greater than 50000
//     update Description field to Important Account
//     add this account to VipAccount list
List<Account> vipAccountList = new List<Account>();   // we crated an empty accoiunt list
for(Account each : accList){
    if( each.AnnualRevenue > 50000){
        each.Description = 'IMPORTANT ACCOUNT';
        vipAccountList.add(each);
    
    }

}
System.debug('--------------------------------'); 

System.debug('vipAccountList value is : ' + vipAccountList); 
 
// eventually update vipAccount to reflect this change
update vipAccountList;


// delete them all 
delete accList ; // all acc List accounts
// restore them all
undelete accList ; //restores acc list Acoounts